<?php
session_start();
include_once('conexao.php');


$assunto = utf8_decode (strip_tags(trim($_POST['assunto'])));
$mensagem = utf8_decode (strip_tags(trim($_POST['mensagem'])));

require_once('PHPMailer/class.phpmailer.php');

$Email = new PHPMailer();
$Email->SetLanguage("br");
$Email->IsSMTP(); // Habilita o SMTP
$Email->SMTPAuth = true; //Ativa e-mail autenticado
$Email->Host = 'smtp.gmail.com'; // Servidor de envio
$Email->Port = '587'; // Porta de envio
$Email->Username = '@gmail.com'; //e-mail que será autenticado
$Email->Password = 'senhar'; // senha do servidor smtp

$Email->IsHTML(true);

$Email->From = '@gmail.com'; //email de destino
$Email->FromName = "Teste";

$Email->AddReplyTo($assunto, $mensagem);
$Email->AddAddress("@gmail.com", 'Teste');

$Email->Subject = "(Contato do site)";

$Email->Body .= "<br /><br />
<strong>Assunto:</strong> $assunto<br /><br />
<strong>Mensagem:</strong><br /> $mensagem";

if(!$Email->Send()){
    echo "<p>A mensagem não foi enviada. </p>";
    echo "Erro: " . $Email->ErrorInfo;
}else{
    echo "<script>location.href='sucesso.html'</script>";
    
}
$assunto = mysqli_real_escape_string($conn, $_POST['assunto']);
$mensagem = mysqli_real_escape_string($conn, $_POST['mensagem']);


$result_msg_contato = "INSERT INTO mensagens_contatos(assunto, mensagem, created) VALUES ('$assunto', '$mensagem', NOW())";
$resultado_msg_contato= mysqli_query($conn, $result_msg_contato)
?>