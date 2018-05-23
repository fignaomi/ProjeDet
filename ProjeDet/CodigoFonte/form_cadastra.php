

<?php
	include "template/topo.php";
?>
			<form action="bd_inserepergunta.php" method="post">
		
			Descricao<input type="text" name="descricao" maxlength="30" size="30"/><br/>
			Resposta Certa<input type="text" name="resposta_certa" maxlength="30" size="30"/><br/>
			Resposta Errada 1<input type="text" name="resposta_errada1" maxlength="30" size="30"/><br/>
			Resposta Errada 2<input type="text" name="resposta_errada2" maxlength="30" size="30"/><br/>
			Resposta Errada 3<input type="text" name="resposta_errada3" maxlength="30" size="30"/><br/>
			Resposta Errada 4<input type="text" name="resposta_errada4" maxlength="30" size="30"/><br/>
			Codigo Professor<input type="text" name="cod_professor" maxlength="10" size="10"/><br/>
			Codigo Atividade<input type="text" name="cod_atividade" maxlength="10" size="10"/><br/>


			<input type="submit" value="Envia"/>
		 </form>
<?php
	include "template/rodape.php";
?>

