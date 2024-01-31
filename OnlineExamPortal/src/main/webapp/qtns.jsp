<!DOCTYPE html>
<html>
<body onload="loadDoc()" background="im.jpg">



<script>
var count=0;
var val="";
function loadDoc(ans) {
	
	count++;
val=count+"#"+ans;
	
	
	
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("qtn").innerHTML =
      this.responseText;
    var sc=this.responseText;
    var f=sc.charAt(2);
    }
  };
  	  
  xhttp.open("GET", "javaques.jsp?count="+val, true);
  xhttp.send();
}
</script>
<div id="qtn"></div>

<div id="qt"></div>
</body>
</html>
