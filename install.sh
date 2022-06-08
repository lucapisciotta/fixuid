#!/usr/bin/env sh
cd "$(dirname "$0")" || return

display_usage() {
    printf "Usage:\n%s [version]" "$0"
}

# check whether user had supplied -h or --help . If yes display usage
if [ "$1" = "--help" ] || [ "$1" = "-h" ]
then
    display_usage
    exit 0
fi

# check number of arguments
if [ $# -ne 1 ]
then
    display_usage
    exit 1
fi

sudo rm -f /usr/local/bin/fixuid
sudo tar -C /usr/local/bin -xvzf "fixuid-$1-linux-amd64.tar.gz"
ls -lh /usr/local/bin/fixuid
