<?php
$host = "localhost";
$user = "root";   // ค่า default ของ XAMPP
$pass = "";       // ถ้ามีรหัสผ่านให้ใส่
$db   = "hello_store";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    http_response_code(500);
    die(json_encode(["error" => "Database connection failed."]));
}

$conn->set_charset("utf8");
?>
