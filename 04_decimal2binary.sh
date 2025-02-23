#!/bin/bash

# Script to convert a decimal number to binary

# Ask the user to enter a decimal number
read -p "Enter a decimal number: " decimal_number

# Input validation (optional, but recommended for robustness)
if ! [[ "$decimal_number" =~ ^[0-9]+$ ]]; then
  echo "Error: Input must be a non-negative integer."
  exit 1
fi

# Initialize an empty string to store the binary result
binary_number=""

# Convert decimal to binary
number=$decimal_number  # Create a working copy of the input number

if [ "$number" -eq 0 ]; then
  binary_number="0" # Handle the case where input is 0
else
  while [ "$number" -gt 0 ]; do
    remainder=$((number % 2))  # Get the remainder when divided by 2
    binary_number="$remainder$binary_number"  # Prepend the remainder to the binary string
    number=$((number / 2))      # Integer division by 2
  done
fi

# Print the binary representation
echo "The binary representation of $decimal_number is: $binary_number"
