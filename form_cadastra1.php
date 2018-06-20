<?php
	include "template/topo.php";
	
	var $ret = 0;
	
	$ret = $_GET['add'];
	
	echo $ret;
	exit;
	
	if{$ret == 1}{
	 echo "<script> alert('teste');

			  </script>";
	}	
	
?>
		<form action="bd_insere.php" method="post">
		
			<label>Login11:</label><input type="text" name="login" id="login"><br>
			<label>Senha:</label><input type="password" name="senha" id="senha"><br>
			<label>Repita a senha:</label><input type="password" name="senha" id="senha"><br><br>
			
			<input type="submit" value="Cadastrar!"/>
		 </form>
<?php
	include "template/rodape.php";
?>
