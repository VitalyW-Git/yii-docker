-- создание суперпользователя, можно ограничить права
CREATE USER 'vit'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'vit'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;