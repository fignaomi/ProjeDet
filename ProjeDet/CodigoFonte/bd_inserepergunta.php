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
		  $query = "insert into professor values (null,'$nome','$senha')";
		  $result = mysqli_query($db,$query);
		  if ($result){
			 
			header("location:form_pesquisa1.php?add=1");
		  }else echo mysqli_error($db).'<br>';
			  // echo  mysqli_affected_rows($db).' Cadastro feito com sucesso!</br>';
			
			
		  
?>
	