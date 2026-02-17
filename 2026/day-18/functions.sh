#!/bin/bash

# Function to greet a user takes args input
greet() {
    local name="$1"
    echo "Hello, $name!"
}

# Function to add two numbers
add() {
    local num1="$1"
    local num2="$2"
    echo "$((num1 + num2))"
}

# Call the both functions
greet "Ajay"
sum=$(add 5 7)
echo "Sum: $sum"
