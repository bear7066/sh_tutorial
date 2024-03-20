echo "Please input your grade"
read GRADE

if [ $GRADE -ge 80 ]; then
    echo "You got a A!"
elif [ $GRADE -lt 80 -a $GRADE -gt 69 ]; then
    echo "You got a B!"
else [ $GRADE -lt 70 ];
    echo "You failed:<"
fi


