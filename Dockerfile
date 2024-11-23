 # Указываем базовый образ для Jenkins 
FROM jenkins/jenkins:lts
# Переходим на пользователя root для установки дополнительных пакетов
USER root
# Обновляем список пакетов и устанавливаем необходимые утилиты
RUN apt-get update && apt-get install -y \
# Устанавливаем curl для выполнения HTTP-запросов
    curl \ 
    # Удаляем кэш пакетов для уменьшения размера образа
    && rm -rf /var/lib/apt/lists/*  
# Возвращаемся к пользователю jenkins
USER jenkins