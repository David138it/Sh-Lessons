#/bin/bash
#При запуске ваш скрипт должен ожидать ввода пользователем команды (при этом на экран выводить ничего не нужно).
while [[ True ]]
do
    read str1 str2 str3
    if [[ $str1 == "exit" || $str2 == "exit" || $str3 == "exit" ]]
    then
        echo "bye"
        exit #break
    elif [[ -z $str1 || -z $str2 || -z $str3 ]]
    then
        echo "error"
        break #exit
    elif [[ $str2 == "+" ]]
    then
        let "result = str1 + str3"
        echo $result
    elif [[ $str2 == "-" ]]
        then
                let "result = str1 - str3"
                echo $result
    elif [[ $str2 == "*" ]]
        then
                let "result = str1 * str3"
                echo $result
    elif [[ $str2 == "/" ]]
        then
                let "result = str1 / str3"
                echo $result
    elif [[ $str2 == "%" ]]
        then
                let "result = str1 % str3"
                echo $result
    elif [[ $str2 == "**" ]]
        then
                let "result = str1 ** str3"
                echo $result
    else
        echo "error"
        break
    fi
done