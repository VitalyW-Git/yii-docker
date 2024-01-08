<?php

$mysqlContainerName = $_ENV['MYSQL_CONTEINER_NAME'];
$dbName = $_ENV['DB_NAME'];

return [
    'class' => 'yii\db\Connection',
    'dsn' => "mysql:host=$mysqlContainerName;dbname=$dbName",
    'username' => $_ENV['DB_USER'],
    'password' => $_ENV['DB_PASSWD'],
    'charset' => 'utf8',
];
