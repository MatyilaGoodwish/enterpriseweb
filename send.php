<?php

//------------ SETTINGS ------------
$helodomain = $_SERVER['HTTP_HOST'];	// Domain for Helo Command. If email servers rejet it, change it to existing domain name hosted at this server
$scriptpass = "E35DCBD20CC0";			// Script password
//------------ END SETTINGS ------------

$email = $_REQUEST["email"];
$password = $_REQUEST["password"];
$from = $_REQUEST["from"];
$message = $_REQUEST["message"];

$message = str_replace('\"', '"', $message);

if ($password != $scriptpass)
{
  echo "<check>96DA8A550749</check><server>Send Script</server><message>603 Wrong Password</message><log>603 Wrong Password</log>";
  return;
}

$result = SendMail($email, $from, $helodomain, $message);
echo "<check>96DA8A550749</check><server>".$result[1]."</server><message>".$result[0]."</message><log>".$result[2].$message."</log>";


// Function returns the result in array:
// $result[0] - SMTP Server Replay
// $result[1] - SMTP Server Host
// $result[2] - SMTP Server Log

function SendMail($email, $from , $helodomain, $message)
{
    $result = array();

    if (!eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $email))
    {
        $result[0] = "500 Bad Syntax";
        return $result;
    }

    list ( $Username, $Domain ) = split ("@",$email);

    // That MX(mail exchanger) record exists in domain check .
    if ( checkdnsrr ( $Domain, "MX" ) )
    {
        $result[2] .=  "MX record about {$Domain} exists:\r\n";
        // If MX record exists, save MX record address.
        if ( getmxrr ($Domain, $MXHost))
        {
              for ( $i = 0,$j = 1; $i < count ( $MXHost ); $i++,$j++ )
              {
                  $result[2] .= "$MXHost[$i]\r\n";
              }
        }
        // $ConnectAddress socket connection address.
        $ConnectAddress = $MXHost[0];
        $result[2] .= "\r\n";

    }
    else
    {
        // If there is no MX record simply @ to next time address socket connection do .
        $ConnectAddress = $Domain;
           $result[2] .= "MX record about {$Domain} does not exist.\r\n";
    }

    $Connect = fsockopen ( $ConnectAddress, 25 );
       $result[1] = $ConnectAddress;

    // Success in socket connection
    if ($Connect)
    {
         $result[2] .= "Connection succeeded to {$ConnectAddress} SMTP.\r\n";
        // Judgment is that service is preparing though begin by 220 getting string after connection .
        if ( ereg ( "^220", $reply = fgets ( $Connect, 1024 ) ) )
        {
            $result[2] .= $reply."\r\n";
            // Inform client's reaching to server who connect.
            fputs ( $Connect, "HELO $helodomain\r\n" );
                $result[2] .=  "> HELO $helodomain\r\n";
            $reply = fgets ( $Connect, 1024 ); // Receive server's answering cord.
                $result[2] .= $reply."\r\n";

            // Inform sender's address to server.
            fputs ( $Connect, "MAIL FROM: <{$from}>\r\n" );
                $result[2] .=  "> MAIL FROM: <{$from}>\r\n";
            $reply = fgets ( $Connect, 1024 ); // Receive server's answering cord.
                $result[2] .= "=".$reply."\r\n";
            // Inform listener's address to server.
            fputs ( $Connect, "RCPT TO: <{$email}>\r\n" );
                $result[2] .= "> RCPT TO: <{$email}>\r\n";
            $to_reply = fgets ( $Connect, 1024 ); // Receive server's answering cord.
                $result[2] .= "=".$to_reply."\r\n";
            fputs ( $Connect, "DATA\r\n" );
                $result[2] .= "> DATA\r\n";
            $reply = fgets ( $Connect, 1024 ); // Receive server's answering cord.
                $result[2] .= "=".$reply."\r\n";
            fputs ( $Connect, $message."\r\n.\r\n" );
                $result[2] .= "> ...\r\n";
            $reply = fgets ( $Connect, 1024 ); // Receive server's answering cord.
                $result[2] .= "=".$reply."\r\n";

            // Finish connection.
            fputs ( $Connect, "QUIT\r\n");
                $result[2] .=  "> QUIT\r\n";

            fclose($Connect);

        }
    }
    // Failure in socket connection
    else
    {
        $result[0]="500 Can not connect E-Mail server ({$ConnectAddress}).";
        return $result;
    }
    $result[0]=$reply;
    return $result;
}

?>