<?php
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	if($_POST["login"]){
		$stafflogin = mysql_fetch_assoc(mysql_query("SELECT * FROM uyelik where email='$email' and sifre='$password'"));
		if($stafflogin){
			echo "Entry was made";
			$_SESSION["user_id"] = $stafflogin["id"];
			include("edit.php");
		}else{
			echo "Could not login.Email address or Password is incorrect";	
		}
	}
	if(!isset($_SESSION["user_id"])){
?>

<h2>Login Form</h2>
				<form id="ContactForm" action="page.php?s=login" method="post">
					<div>
					
						<div class="wrapper"><input type="text" class="input" name="email">E-mail:<br /></div>
                        <div class="wrapper"><input type="password" class="input" name="password" >Password:<br /></div>
                        <div class="wrapper"></div>
<a href="#" class="button" onclick="document.getElementById('ContactForm').submit()">Login</a>
						
					</div>
                    <input type="hidden" name="login" value="login">
				</form>
<?php
	}
?>    
            
