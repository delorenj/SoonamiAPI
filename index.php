<?php
$query = $_GET["q"];
echo "Querying for " . $query . "<br />";

exec("/usr/bin/ruby /home/delorenj/Public/SoonamiAPI/lib/main.rb " . $query, $result);
echo($result[0]);
?>
