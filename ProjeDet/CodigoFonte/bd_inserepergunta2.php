<?php
	include "template/topo.php";
	
		  // RECEBE VARIAVEIS
		  $nome=$_POST['login'];
		  $senha=$_POST['senha'];

		  
		   if (!$nome || !$senha)
		  {
			 echo 'voce não preencheu todos os dados<br />';
			 exit;
		  }
		  
		  //inserindo dados do formulario no bd
		  $query = "insert into aluno values (null,'$nome','$senha')";
		  $result = mysqli_query($db,$query);
		  if ($result)
			   echo  mysqli_affected_rows($db).' Cadastro Feito com sucesso!</br>'; 
		  else echo mysqli_error($db).'<br>';
		  
	include "template/rodape.php";
?>
