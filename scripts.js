function confirm_clear(){
var returned = confirm("You are about to clear the log file.\nAre you sure?");
	if (returned == true){
		window.location.replace("clear.php");
	}
}