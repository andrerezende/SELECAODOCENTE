<?php
class Curso {
	protected $cod_curso;
	protected $nome;

	public function Curso ($a, $b) {
		$this->cod_curso = $a;
		$this->nome = $b;
	}

	public function getcodcurso() {
		return $this->cod_curso;
	}

	public function setCodcurso($a) {
		$this->cod_curso = $a;
	}

	public function getnome() {
		return $this->nome;
	}

	public function setnome($a) {
		$this->nome = $a;
	}

	public function Inserir($sock) {
		$ssql = "insert into curso (nome) values ";
		$ssql = $ssql. " ('".$this->nome."')";

		$rs = mysql_query($ssql, $sock);

		$linha = mysql_affected_rows();

		if ($linha >0) {
			return true;
		} else {
			return false;
		}
	}
	public function apagar($sock,$id) {
		$ssql = "delete from curso";
		$ssql = $ssql. " WHERE cod_curso = ".$id;

		$rs = mysql_query($ssql, $sock);

		$linha = mysql_affected_rows();

		if ($linha >0) {
			return true;
		} else {
			return false;
		}
	}


	public function existeCursoAssociadoAcandidato($sock,$id) {
		$ssql = "select * from inscrito_curso";
		$ssql .= " WHERE cod_curso = ".$id;

		$rs = mysql_query($ssql, $sock);

		$linha = mysql_affected_rows();

		if ($linha >0) {
			return true;
		} else {
			return false;
		}
	}

	public function inativar ($sock,$id) {
		$ssql = "update curso set";
		$ssql .= " ativo = 'N'";
		$ssql .= " WHERE cod_curso = ".$id;

		$rs = mysql_query($ssql, $sock);

		$linha = mysql_affected_rows();

		if ($linha >0) {
			return true;
		} else {
			return false;
		}
	}

	public function SelectByAll($sock) {
		$ssql = "SELECT cod_curso, nome FROM curso A " ;
		$ssql .= " WHERE ativo is null";
		$ssql .= " ORDER BY cod_curso ASC";
		$rs = mysql_query($ssql, $sock);

		$ar = array();

		while ($linha = mysql_fetch_row($rs)) {
			$obj = new Curso($linha[0], $linha[1]);
			$ar[] = $obj;
		}
		return ($ar);
	}

	public function SelectByPrimaryKey($sock,$codigo) {
		$ssql = "SELECT cod_curso, nome FROM curso A " ;
		$ssql .= " WHERE cod_curso  =" .$codigo;
		$ssql .= " ORDER BY cod_curso ASC";

		$rs = mysql_query($ssql, $sock);

		unset($ar);

		while ($linha = mysql_fetch_row($rs)) {
			$obj = new Curso($linha[0], $linha[1]);
			$ar[] = $obj;
		}
		return ($ar);
	}
}