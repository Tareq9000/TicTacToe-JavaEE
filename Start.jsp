<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body onload="onload()">
<div class="title"><h1>Tic Tac Toe</h1></div>
<form class="form">
<div class="box" id="1" onClick="buttonClick1()"></div>
<div class="box" id="2" onClick="buttonClick2()"></div>
<div class="box" id="3" onClick="buttonClick3()"></div>
<br><br><br>
<div class="box" id="4" onClick="buttonClick4()"></div>
<div class="box" id="5" onClick="buttonClick5()"></div>
<div class="box" id="6" onClick="buttonClick6()"></div>
<br><br><br>
<div class="box" id="7" onClick="buttonClick7()"></div>
<div class="box" id="8" onClick="buttonClick8()"></div>
<div class="box" id="9" onClick="buttonClick9()"></div>
<br><br><br>
<button class="button" onClick="onload()">nächste Runde</button>
<br><br><br><br><br><br><br><br><br><br>
<div id="gewonnen"></div>
</form>
<script>
	var pers1 = 0;
	var fertig = false;
	function buttonClick1(){
		if(pers1%2 == 0 && document.getElementById("1").innerHTML == "" && fertig == false){
			document.getElementById("1").innerHTML = "X";
			pers1++;
			
		}else if(pers1%2 == 1 && document.getElementById("1").innerHTML == "" && fertig == false){
			document.getElementById("1").innerHTML = "O";
			pers1++;
		}	
		gewinner();
	}
	function buttonClick2(){
		if(pers1%2 == 0 && document.getElementById("2").innerHTML == "" && fertig == false){
			document.getElementById("2").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("2").innerHTML == "" && fertig == false){
			document.getElementById("2").innerHTML = "O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick3(){
		if(pers1%2 == 0 && document.getElementById("3").innerHTML == "" && fertig == false){
			document.getElementById("3").innerHTML ="X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("3").innerHTML == "" && fertig == false){
			document.getElementById("3").innerHTML = "O";
			pers1++;
		}	
		gewinner();
	}
	function buttonClick4(){
		if(pers1%2 == 0 && document.getElementById("4").innerHTML == "" && fertig == false){
			document.getElementById("4").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("4").innerHTML == "" && fertig == false){
			document.getElementById("4").innerHTML = "O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick5(){
		if(pers1%2 == 0 && document.getElementById("5").innerHTML == "" && fertig == false){
			document.getElementById("5").innerHTML ="X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("5").innerHTML == "" && fertig == false){
			document.getElementById("5").innerHTML = "O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick6(){
		if(pers1%2 == 0 && document.getElementById("6").innerHTML == "" && fertig == false){
			document.getElementById("6").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("6").innerHTML == "" && fertig == false){
			document.getElementById("6").innerHTML ="O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick7(){
		if(pers1%2 == 0 && document.getElementById("7").innerHTML == "" && fertig == false){
			document.getElementById("7").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("7").innerHTML == "" && fertig == false){
			document.getElementById("7").innerHTML ="O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick8(){
		if(pers1%2 == 0 && document.getElementById("8").innerHTML == "" && fertig == false){
			document.getElementById("8").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("8").innerHTML == "" && fertig == false){
			document.getElementById("8").innerHTML = "O";
			pers1++;
		}
		gewinner();
	}
	function buttonClick9(){
		if(pers1%2 == 0 && document.getElementById("9").innerHTML == "" && fertig == false){
			document.getElementById("9").innerHTML = "X";
			pers1++;
		}else if(pers1%2 == 1 && document.getElementById("9").innerHTML == "" && fertig == false){
			document.getElementById("9").innerHTML = "O";
			pers1++;
		}
		gewinner();
	}
	var p1 = false;
	var p2 = false;
	function gewinner(){
		var z1 = document.getElementById("1").innerHTML;
		var z2 = document.getElementById("2").innerHTML;
		var z3 = document.getElementById("3").innerHTML;
		var z4 = document.getElementById("4").innerHTML;
		var z5 = document.getElementById("5").innerHTML;
		var z6 = document.getElementById("6").innerHTML;
		var z7 = document.getElementById("7").innerHTML;
		var z8 = document.getElementById("8").innerHTML;
		var z9 = document.getElementById("9").innerHTML;
		if((z1 == "X" && z2 == "X" && z3 == "X") || (z4 == "X" && z5 == "X" && z6 == "X") || (z7 == "X" && z8 == "X" && z9 == "X")){
			var p1 = true;}
		if((z1 == "X" && z4 == "X" && z7 == "X") || (z2 == "X" && z5 == "X" && z8 == "X") || (z3 == "X" && z6 == "X" && z9 == "X")){
			var p1 = true;}
		if((z1 == "X" && z5 == "X" && z9 == "X") || (z3 == "X" && z5 == "X" && z7 == "X")){
			var p1 = true;}

		if((z1 == "O" && z2 == "O" && z3 == "O") || (z4 == "O" && z5 == "O" && z6 == "O") || (z7 == "O" && z8 == "O" && z9 == "O")){
			var p2 = true;}
		if((z1 == "O" && z4 == "O" && z7 == "O") || (z2 == "O" && z5 == "O" && z8 == "O") || (z3 == "O" && z6 == "O" && z9 == "O")){
			var p2 = true;}
		if((z1 == "O" && z5 == "O" && z9 == "O") || (z3 == "O" && z5 == "O" && z7 == "O")){
			var p2 = true;}
		
		if(p1 == true){
			document.getElementById("gewonnen").innerHTML = "X hat gewonnen";
			fertig = true;
		}
		if(p2 == true){
			document.getElementById("gewonnen").innerHTML = "O hat gewonnen";
			fertig = true;
		}
	}
</script>
</body>
</html>