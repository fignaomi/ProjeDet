<?php
	include "template/topo.php";
?>
		<form action="bd_inserepergunta1.php" method="post">
		
			<label>Login:</label><input type="text" name="login" id="login"><br>
			<label>Senha:</label><input type="password" name="senha" id="senha"><br>
			<label>Repita a senha:</label><input type="password" name="senha" id="senha"><br><br>
			
			<input type="submit" value="Cadastrar!"/>
		 </form>
<?php
	include "template/rodape.php";
?>

