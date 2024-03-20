#(g++ tu.cpp -o exe) && ./exe

#!/bin/bash

compile="g++ tu.cpp -o exe"

eval "$compile"

# Check if compilation was successful
# #? will holds the result of the last command
# 0 for success, 1 for error
if [ $? -eq 0 ]; then
    # Execute the program if compilation was successful
    echo "Your program works! Here's the output~ "
    # Which use eval in shellscript
    ./exe
else
    echo "Compilation failed."
fi
