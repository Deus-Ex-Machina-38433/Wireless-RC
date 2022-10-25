$confirmation = Read-Host "Plug in the phone [ok]"
while($confirmation -ne "ok")
{
    $confirmation = Read-Host "Plug in the phone [ok]"
}
adb tcpip 5555
$IP = Read-Host -Prompt 'Disconnect phone and input IP address from phone'
$PORT = $IP+":5555"
adb connect $PORT
pause