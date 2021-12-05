#!/bin/bash

optimize_memory () {
    local swap_used=`free -m | awk 'NR==2{print $3}'`
    local swap_total=`free -m | awk 'NR==2{print $2}'`
    local swap_percent=$(python -c "print(round($swap_used/$swap_total,2)*100)")
    local max_percent_swap=50.0
    echo "swap used: ${swap_used}"
    echo "swap total: ${swap_total}"
    echo "swap percentage: $swap_percent"

    if (( $(echo "$swap_percent > $max_percent_swap" |bc -l) )); then
        swapoff -a
        echo Cleaning swapp and sleeping 30s
        sleep 30
        echo Turning swap on
        swapon -a 
    else
        echo Swapp is ok
    fi
}

func_result="$(optimize_memory)"
echo $func_result




