<?php
$con = new PDO("mysql:dbname=json_chat;host=localhost", "root", "");
$json = '{"messages": {';
$query = $con->query("SELECT * FROM json_chat.message");
$json .= '"pesan":[ ';
foreach ($query->fetchAll(PDO::FETCH_ASSOC) as $x){
	$json .= '{';
	$json .= '"id"   : "' . $x['message_id'] . '",
					  "user" : "' . htmlspecialchars($x['username']) . '",
					  "text" : "' . htmlspecialchars($x['message']) . '",
			      "time" : "' . $x['post_time'] . '"
			      },';
}

//hilangkan koma (,) di akhir
$json = substr($json, 0, strlen($json)-1);

//lengkapi penutup format JSON
$json .= ']';
$json .= '}}';

echo $json;
?>
