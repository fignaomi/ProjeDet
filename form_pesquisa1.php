<?php
	include "template/topo.php";
	
		$ret = 0;
	
	$ret = isset($_GET['add']);
	
	
	if($ret == 1){
	 echo "<script> alert('Cadastro realizado com sucesso, redirecionando para o login!!!');

			  </script>";
	}	
?>
		<form action="bd_insere.php" method="post">
		
			<label>Login:</label><input type="text" name="login" id="login" style="text-transform:uppercase;"><br>
			<label>Senha:</label><input type="password" name="senha" id="senha"><br>
			
			
			<input type="submit" value="Entrar"/>
		 </form>
<?php
	include "template/rodape.php";
?>