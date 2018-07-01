#!/bin/sh

HEART_FULL=♥
HEART_EMPTY=♡
[ -z "$NUM_HEARTS" ] &&
    NUM_HEARTS=5

cutinate()
{
    perc=$1
    inc=$(( 100 / $NUM_HEARTS))


    for i in `seq $NUM_HEARTS`; do
        if [ $perc -lt 100 ]; then
            echo $HEART_EMPTY
        else
            echo $HEART_FULL
        fi
        perc=$(( $perc + $inc ))
    done
}

ioreg -c AppleSmartBattery -w0 | \
grep -o '"[^"]*" = [^ ]*' | \
sed -e 's/= //g' -e 's/"//g' | \
sort | \
while read key value; do
    case $key in
        "MaxCapacity")
            export maxcap=$value;;
        "CurrentCapacity")
            export curcap=$value;;
        "ExternalConnected")
            if [ -n "$ext" ] && [ "$ext" != "$value" ]; then
                exit
            fi
        ;;
        "FullyCharged")
            if [ "$value" = "Yes" ]; then
                exit
            fi
        ;;
    esac
    if [[ -n "$maxcap" && -n $curcap ]]; then
        echo $(( 100 * $curcap / $maxcap ))
        break
    fi
done

echo "test" 
echo $(($curcap))
echo $(($maxcap))
