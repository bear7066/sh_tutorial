#(g++ tu.cpp -o exe) && ./exe

compile_exe="g++ tu.cpp -o exe && ./exe"

eval "$compile_exe"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    # Execute the program if compilation was successful
    eval "$compile_exe"
else
    echo "Compilation failed."
fi

