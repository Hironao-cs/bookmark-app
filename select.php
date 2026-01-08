<?php
require_once('funcs.php');

// 1. DB接続（funcs.phpの関数を呼び出す）
$pdo = db_conn();

// 2. データ取得SQL作成
$sql = "SELECT * FROM gs_bm_table ORDER BY datetime DESC";
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

// 3. データ表示
$view = "";
if ($status == false) {
    exit("SQL_ERROR");
} else {
    while ($result = $stmt->fetch()) {
        $view .= '<tr>';
        // funcs.php の h() 関数を使ってエスケープ
        $view .= '<td>' . h($result["datetime"]) . '</td>';
        $view .= '<td>' . h($result["product"]) . '</td>';
        $view .= '<td>' . h($result["name"]) . '</td>';
        $view .= '<td>' . h($result["email"]) . '</td>';
        $view .= '<td>' . h($result["grade"]) . '</td>';
        $view .= '</tr>';
    }
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ブックマーク管理一覧 - A高校 Official Store</title>
    <link rel="stylesheet" href="css/style.css?v=2">
</head>
<body>
    <header class="header">
        <div class="container">
            <h1 class="logo">A高校 Official Store</h1>
            <nav class="nav">
                <a href="index.php">ショップへ戻る</a>
            </nav>
        </div>
    </header>

    <main class="container admin-main">
        <section class="admin-section">
            <h2 class="section-title">ブックマーク登録一覧</h2>
            
            <div class="table-wrapper">
                <table class="admin-table">
                    <thead>
                        <tr>
                            <th>登録日時</th>
                            <th>商品名</th>
                            <th>お名前</th>
                            <th>メールアドレス</th>
                            <th>学年・属性</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php echo $view; ?>
                    </tbody>
                </table>
            </div>
            
            <div class="form-actions">
                <a href="index.php" class="cancel-btn">ショップへ戻る</a>
            </div>
        </section>
    </main>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2026 A高校 Official Store. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>