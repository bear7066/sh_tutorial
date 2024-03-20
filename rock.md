```sh
# cat is a unix command which can 
# print out the content of a file
TEXT=$(cat tu.cpp)
echo $TEXT
```

```sh
USER=$(whoami)
echo $USER
```

```sh
USER=$((g++ rock.cpp -o exe) && ./exe)
$USER
```

```sh
echo "Please input your grade"
read GRADE

if [ $GRADE -ge 80 ]; then
    echo "You got a A!"
elif [ $GRADE -lt 80 -a $GRADE -gt 69 ]; then
    echo "You got a B!"
else [ $GRADE -lt 70 ];
    echo "You failed:<"
fi

```

```sh
if [ condition ]; then
  do ?
elif [ condition ]; then
  do ?
else
  do ?
fi
```
<div style="background-color:black; color:white; padding:10px;">

```sh
-gt : 大於      -ne : 不等於
-ge : 大於等於   -lt : 小於
-eq : 等於      -le : 小於等於
```
</div>

```sh
#!/bin/bash

compile="g++ tu.cpp -o exe"
# Check if compilation was successful
# $? will holds the result of the last command
# 0 for success, 1 for error
eval "$compile"
if [ $? -eq 0 ]; then
    # Execute the program if compilation was successful
    echo "Your program works! Here's the output~ "
    ./exe
else
    echo "Compilation failed."
fi

```