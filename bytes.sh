#!bin/bash

if [ ! -d $1 ]; then
    echo "Error: No such directory"
    exit 1
fi

total=0
for f in `ls $1`; do
    name="$1/$f"
    if [ -f $name ]; then
    bytes=`ls -l $name | cut -d " " -f 5`
    echo "File $name occupies $bytes bytes" | tr -s /
    (( total += $bytes ))
    fi
done

echo -e "\nTotal Bytes: $total"

