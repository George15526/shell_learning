# !/bin/bash
# echo -n "請輸入要讀取的文字檔名稱："
# read FN
INDEX=1
while read line
do
        echo "$line"
        (( INDEX++ ))
done < README.txt