#/bin/bash
#При запуске ваш скрипт должен ожидать ввода пользователем команды (при этом на экран выводить ничего не нужно).
operat_func (){
    case $str2 in
            "+") let "result = str1 + str3";;
                "-") let "result = str1 - str3";;
                "*") let "result = str1 * str3";;
                "/") let "result = str1 / str3";;
                "%") let "result = str1 % str3";;
                "**") let "result = str1 ** str3";;
                *) echo "error"; break ;;
    esac
        echo "$result"
}
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
    else
        operat_func
    fi
done