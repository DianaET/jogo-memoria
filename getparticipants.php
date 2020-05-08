<?php
require_once 'conexao.php';
$sql = "SELECT * FROM participantes";
$result = $conn->query($sql);

$procurar=$_GET["procurar"];
$i = 0;
while($row = $result->fetch(PDO::FETCH_ASSOC)) {

  $a[$i] =$row['nome'];
  $b[$i] =$row['curso'];
  $c[$i] =$row['contato'];
   $i = $i + 1;
        }


if (strlen($procurar) > 0)
{
  $valor="";
  for($i=0; $i<count($a); $i++)
  {
  // if (strtolower($procurar)==strtolower(substr($a[$i],0,strlen($procurar))))
    // {
    if ($valor=="")
      {
      $valor ="<tr>"."<td>".$a[$i]."</td>"."<td>".$b[$i]."</td>". "<td>".$c[$i]."</td>"."</tr>";
      }
    else
      {
      $valor=$valor."<tr>"."<td>".$a[$i]."</td>"."<td>".$b[$i]."</td>"."<td>".$c[$i]."</td>"."</tr>";
      }
    // }
  }
}

if ($valor == "")
{
$response="Sem sugestoes";
}
else
{
  echo "<table border = '1'>";
  echo "<tr><td>Nome</td><td>Curso</td><td>Contato</td></tr>";
$response=$valor;
}

//output the response
echo $response;
echo "</table>";
?>
