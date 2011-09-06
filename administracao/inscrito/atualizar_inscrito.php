<?php session_start("SELECAO"); 

//Atribuição da página parametrizada responsável pelo edição e impressão do cadastro do candidato 
$pagina_editar	= $_SESSION["Gpaginaeditar"];		   
$pagina_impressao	= $_SESSION["Gpaginaimpressao"];

?>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> <?php echo ($_SESSION["Gnomeprocessoseletivo"]);?> </title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link href="../../estilo_selecao.css" rel="stylesheet" type="text/css" />
</head>
<body>

<?php
include("../classes/DB.php");
include("../classes/Inscrito.php");
include("../classes/Campus.php");
include("../classes/Localprova.php");

foreach ($_POST as $key => $valor) {
	$$key = addslashes(strtoupper($valor));
}

/*Acesso ao banco de dados */
$banco    = DB::getInstance();
$conexao  = $banco->ConectarDB();

/*Verificar se possui cadastrado na base*/
$banco->startTransaction();
$inscrito = new Inscrito($nome, $endereco, $bairro, $cep, $cidade, $estado,
			$email, $cpf, $rg, $especial, $senha, $nacionalidade, $telefone, null, $celular, $datanascimento,
			$sexo, $estadocivil, $orgaoexpedidor, $uf, $dataexpedicao, $especial_descricao, $responsavel,
			$isencao, $declaracao, $localprova, $numinscricao, $especial_prova, $especial_prova_descricao,
			$vaga_especial, $vaga_rede_publica, $vaga_rural, $campus, $id, null, null, $curso, $nis, $nota);
$resultado = $inscrito->atualizar($conexao);

if ($resultado) {
	$banco->commitTransaction();
?>
	<div align="center">
		<img src="../../imgs/topo2/topo_formulario.png" alt="Instituto Federal Baiano" />
		<div id="topoFormTexto">
			<?php echo ($_SESSION["Gnomeprocessoseletivo"]);?>
		</div>
		<tr align='center'>
		<br>
		<td><div aligne='center'>Ficha de Inscri&ccedil;&atilde;o alterada com sucesso.<br />
			Utilize o n&uacute;mero do CPF (<b><?php echo ($cpf);?></b>) e Senha informados para imprimir a ficha de inscri&ccedil;&atilde;o <br />
			na P&aacute;gina Inicial / Inscri&ccedil;&otilde;es.</div></td>
		</tr>
		<p>
		<div id="tituloPrincipal" align="center" style="width: 820px">Op&ccedil;&otilde;es do Inscrito</div>
		<div class="conteudoColunaMeio" style="width: 820px; line-height: 25px">
			<div align="center">
				<form id="frmeditar" name="frmeditar" action="<?php echo($pagina_editar)?>" method="post">
					<input type="hidden" name="id" value="<?php echo($id);?>" />
					<a href="#" onclick="document.forms['frmeditar'].submit();">Editar Inscri&ccedil;&atilde;o</a>
				</form>
			</div>

		<div align="center">
			<form id="frmimpressao" name="frmimpressao" action="<?php echo($pagina_impressao)?>" method="post">
				<input type="hidden" name="cpf" value="<?php echo($cpf);?>" />
				<a href="#" onclick="document.forms['frmimpressao'].submit();">Imprimir Ficha de Inscri&ccedil;&atilde;o</a>
			</form>
		</div>
		<div align="center">
			<form id="frmboleto" name="frmboleto" action="../boleto/boleto_bb.php" method="post">
				<input type="hidden" name="id" value="<?echo($id);?>" />
				<a href="#" onclick="document.forms['frmboleto'].submit();">Imprimir Boleto para Pagamento</a>
			</form>
		</div>
		<div align="center">
			<br />
			<a href="../../index.php">P&aacute;gina Inicial</a>
		</div>

	</div>
<?php 
}else {
	$banco->rollbackTransaction();
	echo("<div align=".'"'."center".'"'.">");
		echo("<img src=".'"'."../../imgs/topo2/topo_formulario.png".'"'." alt=".'"'."Instituto Federal Baiano".'"'." />");
		echo("<table border='0'>");
		echo("	<tr>");
		echo("		<td><div>Problemas ao alterar a inscri&ccedil;&atilde;o.</div></td>");
		echo("	</tr>");
		echo("	<tr>");
		echo("		<td align=".'"'."center".'"'.">"."<br /><div><a href="."javascript:window.history.go(-1)".">Voltar</a>"." - "."<a href="."../../index.php".">P&aacute;gina Inicial</a></div></td>");
		echo("	</tr>");
		echo("</table>");
	echo("</div>");
}
?>
</body>
</html>
