#!/bin/bash

# disable path name expansion or * will be expanded in the line
# cmd=( $line )
set -f

if [ -z "$urgenttagbgcolor" ]; then
    urgenttagbgcolor='#C81C1E'
fi

monitor=${1:-0}
geometry=( $(herbstclient monitor_rect "$monitor") )
if [ -z "$geometry" ] ;then
    echo "Invalid monitor $monitor"
    exit 1
fi
# geometry has the format: WxH+X+Y
x=${geometry[0]}
y=${geometry[1]}
panel_width=${geometry[2]}
panel_height=16
#font="-*-fixed-medium-*-*-*-12-*-*-*-*-*-*-*"
font='-*-terminus-medium-r-*-*-18-*-*-*-*-*-*-*'
#bgcolor=$(herbstclient get frame_border_normal_color)
bgcolor='#3D3D3D'
selbg=$(herbstclient get window_border_active_color)
selfg='#101010'

####
# Try to find textwidth binary.
# In e.g. Ubuntu, this is named dzen2-textwidth.
if [ -e "$(which textwidth 2> /dev/null)" ] ; then
    textwidth="textwidth";
elif [ -e "$(which dzen2-textwidth 2> /dev/null)" ] ; then
    textwidth="dzen2-textwidth";
else
    echo "This script requires the textwidth tool of the dzen2 project."
    exit 1
fi
####
# true if we are using the svn version of dzen2
dzen2_version=$(dzen2 -v 2>&1 | head -n 1 | cut -d , -f 1|cut -d - -f 2)
if [ -z "$dzen2_version" ] ; then
    dzen2_svn="true"
else
    dzen2_svn=""
fi

function uniq_linebuffered() {
    awk '$0 != l { print ; l=$0 ; fflush(); }' "$@"
}

herbstclient pad $monitor $panel_height
{
    # events:
    #mpc idleloop player &
    while true ; do
        date +'date ^fg(#909090)%a ^fg(#909090)%m-^fg(#909090)%d ^fg(#efefef)%I:%M:%p^fg(#909090)'
        sleep 1 || break
    done > >(uniq_linebuffered)  &
    childpid=$!
    herbstclient --idle
    kill $childpid
} 2> /dev/null | {
    TAGS=( $(herbstclient tag_status $monitor) )
    visible=true
    date=""
    windowtitle=""
    while true ; do
        #if [ "$urgenttagbgcolor" = '#C81C1E' ]; then
        #    urgenttagbgcolor='#1D1D1D'
        #else
        #    urgenttagbgcolor='#C81C1E'
        #fi
        bordercolor="#26221C"
        separator="^bg()^fg($selbg)|"
        # draw tags
        for i in "${TAGS[@]}" ; do
            case ${i:0:1} in
                '#')
                    echo -n "^bg($selbg)^fg($selfg)"
                    ;;
                '+')
                    echo -n "^bg(#ababab)^fg(#ffffff)"
                    #echo -n "^bg(#9CA668)^fg(#ffffff)"
                    ;;
                ':')
                    echo -n "^bg()^fg(#ffffff)"
                    ;;
                '!')
                    #echo -n "^bg(#C81C1E)^fg(#ffffff)"
                    echo -n "^bg($urgenttagbgcolor)^fg(#ffffff)"
                    ;;
                *)
                    echo -n "^bg()^fg(#ababab)"
                    ;;
            esac
            if [ ! -z "$dzen2_svn" ] ; then
                echo -n "^ca(1,herbstclient focus_monitor $monitor && "'herbstclient use "'${i:1}'") '"${i:1} ^ca()"
            else
                echo -n " ${i:1} "
            fi
        done
        #echo -n "$separator"
        #echo -n "^bg()^fg() ${windowtitle//^/^^}"
        # small adjustments
        right="$separator^bg() $date"
        right_text_only=$(echo -n "$right"|sed 's.\^[^(]*([^)]*)..g')
        # get width of right aligned text.. and add some space..
        width=$($textwidth "$font" "$right_text_only    ")
        echo -n "^pa($(($panel_width - $width)))$right"
        echo
        # wait for next event
        read line || break
        cmd=( $line )
        # find out event origin
        case "${cmd[0]}" in
            tag*)
                #echo "reseting tags" >&2
                TAGS=( $(herbstclient tag_status $monitor) )
                ;;
            date)
                #echo "reseting date" >&2
                date="${cmd[@]:1}"
                ;;
            quit_panel)
                exit
                ;;
            togglehidepanel)
                echo "^togglehide()"
                if $visible ; then
                    visible=false
                    herbstclient pad $monitor 0
                else
                    visible=true
                    herbstclient pad $monitor $panel_height
                fi
                ;;
            reload)
                exit
                ;;
            focus_changed|window_title_changed)
                windowtitle="${cmd[@]:2}"
                ;;
            #player)
            #    ;;
        esac
        done
} 2> /dev/null | dzen2 -w $panel_width -x $x -y $y -fn "$font" -h $panel_height \
    -ta l -bg "$bgcolor" -fg '#efefef'

