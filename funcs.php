<?php
//共通に使う関数を記述
//XSS対応（ echoする場所で使用！それ以外はNG ）

    function h($str) 
    {
        return htmlspecialchars($str, ENT_QUOTES);
    }
// サーバーアタックを防ぐための構文。インプットタグには必ず使用。

    function db_conn()
    {
    try {
        $pdo = new PDO('mysql:dbname=gs_db; charset=utf8;host=localhost','root','root');  //insertからコピペ。
        return $pdo;
    } 
    catch (PDOException $e) {
        exit('DBConnectError'.$e->getMessage());
    }
    }
// DBへの接続を行う関数

