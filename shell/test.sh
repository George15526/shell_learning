# !/bin/bash
# -rw-r--r-- 1 qwertyuiop 197121 99 Dec 10 03:59 test.sh

# =============================================================

# When you writing shell script, please be careful the space!!

# =============================================================

# age[0]=34, age[1]=25, age[2]=29
# echo $age => it will print age[0], that is 34
age=("34" "25" "29")

# LIST[0]=34 25 29
LIST="34 25 29"

for loop in ${LIST}
do
    echo "age: $loop"
done
echo ${LIST[0]}

while