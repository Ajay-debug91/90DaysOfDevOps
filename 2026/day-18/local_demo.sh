#!/bin/bash

# Function using local variable
local_func() {
    local local_var="I am local"
    echo "Inside function: $local_var"
}

# Function using global variable
global_func() {
    global_var="I am global"
    echo "Inside function: $global_var"
}

# Call functions
local_func
echo "Outside function, local_var: ${local_var:-undefined}"

global_func
echo "Outside function, global_var: $global_var"

