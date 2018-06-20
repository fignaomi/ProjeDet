<?php	
	include "template/topo.php";	
	if($db){
		$sql = "select * from pergunta";
		$rs = mysqli_query($db, $sql);
		if($rs){?>
			<h1> CONSULTA DE PERGUNTAS </h1>
			<table border=1 width=80% align = "center">
				<tr>
					<th>Dados</th>
					<th>Pergunta</th>
					<th>Alterar</th>
					<th>Excluir</th>
				</tr>
			<?php
				while ($valor = mysqli_fetch_array($rs)){
					echo "<tr>
						
							<td>
							<b> ID: </b>".$valor["COD_PERGUNTA"]."<br>
							 <b>COD_PROF: </b>".$valor["COD_PROFESSOR"]."<br>	
                            <b>COD_ATIV: </b>".$valor["COD_ATIVIDADE"]."<br>
							</td>
							<td>
							<b>DESCRICAO: </b>".$valor["DESCRICAO"]."<br>
							<b>RESPOSTA_CERTA: </b>".$valor["RESPOSTA_CERTA"]."<br>
							<b>RESPOSTA_ERRADA1: </b>".$valor["RESPOSTA_ERRADA1"]."<br>
							<b>RESPOSTA_ERRADA2: </b>".$valor["RESPOSTA_ERRADA2"]."<br>
                            <b>RESPOSTA_ERRADA3: </b>".$valor["RESPOSTA_ERRADA3"]."<br>
                            <b>RESPOSTA_ERRADA4: </b>".$valor["RESPOSTA_ERRADA4"]."<br>
                           								</td>
							<td align='center'><a href='altera.php?seq=".
									$valor["COD_PERGUNTA"].
							    "'><img src='ico/edit.ico' alt='edit' width = '20' height='20'></a></td>
							<td align='center'><a href='delete.php?seq=".
									$valor["COD_PERGUNTA"].
							    "'><img src='ico/delete.png' alt='delete' width = '20' height='20'></a></td>
						</tr>";					
				}
				mysqli_free_result($rs);
				echo "</table>";
		}
		else{
			echo "Erro de Consulta de clientes: ".mysqli_error($db);
		}
	}
	else{
		echo "Erro de conexão: ".mysqli_error($db);
	}
	
	
	include "template/rodape.php";
?>
