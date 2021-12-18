#!/bin/bash


function energy_state {

    local state_of_charge=`acpi | awk 'NR==1{print $5}'`
    local time_remaning=`acpi | awk 'NR==1{print $6}'
    local temp_core_1=`sensors | awk 'NR==4{print $4}'
    local temp_core_2=`sensors | awk 'NR==5{print $4}'`
    # save to csv	

}

function energy_statistics {

    local state_of_charge=`acpi | awk 'NR==1{print $5}'`
    local time_remaning=`acpi | awk 'NR==1{print $6}' 
    local temp_core_1=`sensors | awk 'NR==4{print $4}'
    local temp_core_2=`sensors | awk 'NR==5{print $4}'` 
    # save to csv       

}

function eco_mode {

    local state_of_charge=`acpi | awk 'NR==1{print $5}'`
    local time_remaning=`acpi | awk 'NR==1{print $6}' 
    local temp_core_1=`sensors | awk 'NR==4{print $4}'
    local temp_core_2=`sensors | awk 'NR==5{print $4}'` 
    # save to csv       

}

