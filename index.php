<style type="text/css">
h1 {
  color: black;
  text-align: center;
  font-family: Verdana, Geneva, sans-serif;
  font-style: bold;
  font-size: 40px;
}
h2 {
  color: black;
  text-align: left;
  font-family: Verdana, Geneva, sans-serif;
  font-size: 16px;
}
.data {
	margin-left: 15%;
	margin-right: 15%;
}
</style>
<html>
<head>
	<title>Network Status Log</title>
</head>
<body>
<center><h1>Network Status Log</h1></center>
<div class="data">
<h2><?php echo nl2br(file_get_contents( "/home/pi/networkstatuslog.txt"));?></h2>
</div>
</body>
</html>