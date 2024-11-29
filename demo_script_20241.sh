#!/bin/bash

# Функция для проверки существования группы
check_and_create_group() {
    if getent group "$1" > /dev/null 2>&1; then
        echo "Ошибка: Группа $1 уже существует."
    else
        sudo groupadd "$1"
        echo "Группа $1 создана."
    fi
}

# Функция для проверки существования пользователя
check_and_create_user() {
    if id "$1" > /dev/null 2>&1; then
        echo "Ошибка: Пользователь $1 уже существует."
    else
        sudo useradd -m -s /bin/bash -g "$2" "$1"
        echo "$1:$3" | sudo chpasswd
        echo "Пользователь $1 создан и добавлен в группу $2."
    fi
}

# Проверка и создание групп
check_and_create_group Group1
check_and_create_group Group2
check_and_create_group Group3

# Проверка и создание пользователей
check_and_create_user User1 Group1 111
check_and_create_user User2 Group2 222
check_and_create_user User3 Group3 333

