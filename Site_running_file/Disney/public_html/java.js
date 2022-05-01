function validate()
{
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	if(username=="admin" && password=="admin")
	{
		alert("good");
		return false;
	}
	else
	{
		alert("Wrong Username or Password.");
}
}