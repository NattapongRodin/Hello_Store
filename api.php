<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

include "db.php";

$method = $_SERVER['REQUEST_METHOD'];
$path   = explode("/", trim($_SERVER['REQUEST_URI'], "/"));
$id     = $path[count($path) - 1];  // ดึงค่า id จาก URL ถ้ามี

// กำหนด path เช่น localhost/api.php หรือ localhost/api.php/1
if (is_numeric($id)) {
    $productId = intval($id);
} else {
    $productId = null;
}

switch ($method) {
    case "GET":
        if ($productId) {
            $stmt = $conn->prepare("SELECT * FROM products WHERE id=?");
            $stmt->bind_param("i", $productId);
            $stmt->execute();
            $result = $stmt->get_result();
            echo json_encode($result->fetch_assoc());
        } else {
            $result = $conn->query("SELECT * FROM products");
            echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        }
        break;

    case "PATCH":
        if (!$productId) {
            http_response_code(400);
            echo json_encode(["error" => "Missing product ID"]);
            exit;
        }
        $data = json_decode(file_get_contents("php://input"), true);
        $fields = [];
        $values = [];

        foreach ($data as $key => $value) {
            $fields[] = "$key=?";
            $values[] = $value;
        }

        if (empty($fields)) {
            echo json_encode(["error" => "No fields to update"]);
            exit;
        }

        $sql = "UPDATE products SET " . implode(",", $fields) . " WHERE id=?";
        $stmt = $conn->prepare($sql);

        $types = str_repeat("s", count($values)) . "i";
        $values[] = $productId;

        $stmt->bind_param($types, ...$values);
        $stmt->execute();

        echo json_encode(["message" => "Product updated"]);
        break;

    case "DELETE":
        if (!$productId) {
            http_response_code(400);
            echo json_encode(["error" => "Missing product ID"]);
            exit;
        }
        $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
        $stmt->bind_param("i", $productId);
        $stmt->execute();

        echo json_encode(["message" => "Product deleted"]);
        break;

    default:
        http_response_code(405);
        echo json_encode(["error" => "Method not allowed"]);
}
?>
