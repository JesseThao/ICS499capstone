let pass = document.getElementById("pwd");
let counter = 0;

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
		length.innerHTML= '<i class="fa-solid fa-check"></i> 8 characters';
	}else{
		length.innerHTML= '<i class="fa-solid fa-x"></i><FONT COLOR=red> 8 characters';
	}
	
}


function checkOnSubmit(){
	let form = document.getElementById("register");
	let password = pass.value;
	let valid = 0;
	for (let i = 0; i<password.length; i++){
		if (password.length > 7){
			if(password[i].match(/[A-Z]/) || password[i].match(/[a-z]/) || password[i].match(/[0-9]/)){
				valid++;
			}
		}
		if(valid == password.length){
			form.submit();
		}
	}

}

function togglePDW(val){
	let passType = document.getElementById("pwd");
	
	if(("'"+val+"'").match('show')){
		passType.setAttribute("type", "text");
	}else{
		passType.setAttribute("type", "password");
	}
		
}

function arrowRight(){
	let image = document.getElementById("image");
	counter = counter +1;
	if(counter == 2){
		counter = -1;
		image.src = "images/" + image.name + "1.jpg";
	}
	else if(counter == -1){
		image.src = "images/" + image.name + "1.jpg";
	}
	else if(counter == 1){
		image.src = "images/" + image.name + "2.jpg";
	}
	else{
		image.src = "images/" + image.name + ".jpg";
	}
}

function arrowLeft(){
	let image = document.getElementById("image");
	counter = counter -1;
	if(counter == -2){
		counter = 1;
		image.src = "images/" + image.name + "2.jpg";
	}
	else if(counter == -1){
		image.src = "images/" + image.name + "1.jpg";
	}
	else if(counter == 1){
		image.src = "images/" + image.name + "2.jpg";
	}
	else{
		image.src = "images/" + image.name + ".jpg";
	}
}

pass.addEventListener("keyup", function(){
	passRequirement(pass.value);
});

