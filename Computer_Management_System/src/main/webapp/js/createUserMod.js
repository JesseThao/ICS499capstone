/**/
let pass = document.getElementById("pwd");

function passRequirement(password) {
	let upper = document.getElementById("upper");
	let lower = document.getElementById("lower");
	let number = document.getElementById("number");
	let length = document.getElementById("length");
	
	if(password.match(/[A-Z]/)){
		upper.innerHTML= '<i class="fa-solid fa-check"></i> Upper-case';
	}else{
		upper.innerHTML= '<i class="fa-solid fa-x"></i><FONT COLOR=red> Upper-case';
	}
	
	if(password.match(/[a-z]/)){
		lower.innerHTML= '<i class="fa-solid fa-check"></i> Lower-case';
	}else{
		lower.innerHTML= '<i class="fa-solid fa-x"></i><FONT COLOR=red> Lower-case';
	}
	
	if(password.match(/[0-9]/)){
		number.innerHTML= '<i class="fa-solid fa-check"></i> Number';
	}else{
		number.innerHTML= '<i class="fa-solid fa-x"></i><FONT COLOR=red> Number';
	}
	
	if(password.length > 7){
		length.innerHTML= '<i class="fa-solid fa-check"></i> At least 8 characters';
	}else{
		length.innerHTML= '<i class="fa-solid fa-x"></i><FONT COLOR=red> At least 8 characters';
	}
	
}


function checkOnSubmit(){
	let fn = document.getElementById("firstname");
	let ln = document.getElementById("lastname");
	let email = document.getElementById("email");
	
	if(fn.value == "" || ln.value == ""|| email.value == ""){
		event.preventDefault();
	}
	
	if(pass.value.match(/[A-Z]/) && pass.value.match(/[a-z]/) && pass.value.match(/[0-9]/) && pass.value.length > 7){

	}else {
		event.preventDefault();
	}
}


pass.addEventListener("keyup", function(){
	passRequirement(pass.value);
});

