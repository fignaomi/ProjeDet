<?php
	include "template/topo.php";
	
		  // RECEBE VARIAVEIS
		  $codpg=$_POST['cod_pergunta'];
		  $descricao=$_POST['descricao'];
		  $resposta_certa=$_POST['resposta_certa'];
		  $resposta_errada1=$_POST['resposta_errada1'];
		  $resposta_errada2=$_POST['resposta_errada2'];
		  $resposta_errada3=$_POST['resposta_errada3'];
		  $resposta_errada4=$_POST['resposta_errada4'];
		  $codpf=$_POST['cod_professor'];
		  $coda=$_POST['cod_atividade'];

				  

		   if (!$codpg || !$descricao || !$resposta_certa || !$resposta_errada1 || !$resposta_errada2 || !$resposta_errada3 || !$resposta_errada4 || !$codpf || !$coda)
		  {
			 echo 'voce não preencheu todos os dados<br />';
			 exit;
		  }
		  
		  //inserindo dados do formulario no bd
		  $query = "insert into pergunta values (null,'$descricao','$resposta_certa','$resposta_errada1','$resposta_errada2','$resposta_errada3','$resposta_errada4','$codpf','$coda')";
		  $result = mysqli_query($db,$query);
		  if ($result)
			   echo  mysqli_affected_rows($db).' pergunta inserida no BD.</br>'; 
		  else echo mysqli_error($db).'<br>';
		  
	include "template/rodape.php";
?>
