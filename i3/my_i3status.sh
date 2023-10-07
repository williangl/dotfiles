#!/bin/sh
# shell script to prepend i3status with more stuff

# i3status --config /etc/i3status.conf | while :
# do
#         cotacao=$(python /home/willian/git/dotfiles/i3/cotacao.py)
#         read line
#         echo "$cotacao | $line" || exit 1
# done

read line; read line_1; read line_2 ; while :
do
        cotacao=$(python /home/willian/git/dotfiles/i3/cotacao.py)
        # i3status --config /etc/i3status.conf
        # read line
        echo "$cotacao | $line | $line_1 | $line_2" || exit 1
done
