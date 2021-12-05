#!/bin/bash

state_of_health () {
    local battery_state=`acpi | awk 'NR==1{print $4}'`
    local state_of_charge=`acpi | awk 'NR==1{print $5}'`
    # apply processes


}

func_result="$(optimize_memory)"
echo $func_result




