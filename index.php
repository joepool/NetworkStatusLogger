<link rel="stylesheet" type="text/css" href="style.css">
<script src="scripts.js"></script>
<html>
<head>
	<title>Network Status Log</title>
</head>
<body>
<center><h1>Network Status Log</h1></center>
<div class="top_right">
<button title="Clear" class="button" onclick="confirm_clear()">Clear Log</button>
</div>
<div class="data">
<h2><?php echo nl2br(file_get_contents( "/home/pi/networkstatuslog.txt"));?></h2>
</div>
</body>
</html>