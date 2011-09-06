<?php session_start("SELECAO"); 

//Atribuição da página parametrizada responsável pelo edição e impressão do cadastro do candidato 
$pagina_editar	= $_SESSION["Gpaginaeditar"];		   
$pagina_impressao	= $_SESSION["Gpaginaimpressao"];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> <?php echo ($_SESSION["Gnomeprocessoseletivo"]);?> </title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link href="../../estilo_selecao.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php
include_once ("../classes/DB.php");
include_once ("../classes/Inscrito.php");

foreach ($_POST as $key => $valor) {
	$$key = addslashes(strtoupper($valor));
}

/*Acesso ao banco de dados */
$banco    = DB::getInstance();
$conexao  = $banco->ConectarDB();

$resultado = $banco->ExecutaQueryGenerica('SELECT MAX(id) +1 AS novo_id FROM inscrito');
$resultado = mysql_fetch_assoc($resultado);
$id = $resultado['novo_id'];
$numinscricao = substr($cpf, 0,4).$id;

/*Verificar se possui cadastrado na base*/
$inscrito = new Inscrito($nome, $endereco, $bairro, $cep, $cidade, $estado,
			$email, $cpf, $rg, $especial, $senha, $nacionalidade, $telefone, null, $celular, $datanascimento,
			$sexo, $estadocivil, $orgaoexpedidor, $uf, $dataexpedicao, $especial_descricao, $responsavel,
			$isencao, $declaracao, $localprova, $numinscricao, $especial_prova, $especial_prova_descricao,
			$vaga_especial, $vaga_rede_publica, $vaga_rural, $campus, null, null, null, $curso, $nis);
$existe = $inscrito->Existe($conexao);

//var_dump($nome, $endereco, $bairro, $cep, $cidade, $estado,
//			$email, $cpf, $rg, $especial, $senha, $nacionalidade, $telefone, null, $celular, $datanascimento,
//			$sexo, $estadocivil, $orgaoexpedidor, $uf, $dataexpedicao, $especial_descricao, $responsavel,
//			$isencao, $declaracao, $localprova, $numinscricao, $especial_prova, $especial_prova_descricao,
//			$vaga_especial, $vaga_rede_publica, $vaga_rural, $campus, null, null, null, $curso, $nis);
//exit;

if ($existe) {
	echo("<div align='center'");
		echo("<img src="."../../imgs/topo2/topo_formulario.png"." alt="."Instituto Federal Baiano"." />");
		echo("<h2>Requerimento de Inscri&ccedil;&atilde;o</h2>");
		echo("<table border='0'>");
		echo("	<tr>");
		echo("		<td><div align='center'>Problemas ao preencher o requerimento de inscri&ccedil;&atilde;o. O CPF informado (<b>".$cpf."</b>) encontra-se associado a outro candidato.<br/>Caso ocorra algum problema, favor entrar em contato (P&aacute;gina Inicial / Contato).</div></td>");
		echo("	</tr>");
		echo("	<tr>");
		echo("		<td><br /><div align='center'><a href="."javascript:window.history.go(-1)".">Voltar</a>"." - "."<a href="."../../index.php".">P&aacute;gina Inicial</a></div></td>");
		echo("	</tr>");
		echo("</table>");
	echo("</div>");
} else {
	$banco->startTransaction();
	$id_inscrito = $inscrito->Inserir($conexao);
	if ($id_inscrito > -1) {
		$banco->commitTransaction();
?>

	<div align="center">
		<img src="../../imgs/topo2/topo_formulario.png" alt="Instituto Federal Baiano" />
		<div id="topoFormTexto">
			<?php echo ($_SESSION["Gnomeprocessoseletivo"]);?>
		</div>
		<tr align='center'>
		<br>
		<td><div aligne='center'>Ficha de Inscri&ccedil;&atilde;o preenchida com  sucesso.<br />
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
	} else {
		$banco->rollbackTransaction();
		echo("<div align='center'");
		echo("<img src="."../../imgs/topo2/topo_formulario.png"." alt="."Instituto Federal Baiano"." />");
		echo("<h2>Ficha de Inscri&ccedil;&atilde;o</h2>");
		echo("<table border='0'>");
		echo("	<tr>");
		echo("		<td><br /><div align='center'><a href='#'>Problemas ao efetuar inscri&ccedil;&atilde;o</div></td>");
		echo("	</tr>");
		echo("</table>");
		echo("</div>");

	}
}
$banco->DesconectarDB($conexao);
?>
</body>
</html>
