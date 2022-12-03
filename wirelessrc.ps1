$confirmation = Read-Host "Plug in the phone [ok]"
while($confirmation -ne "ok")
{
    $confirmation = Read-Host "Plug in the phone [ok]"
}
adb tcpip 20180
$IP = Read-Host -Prompt 'Disconnect phone and input IP address from phone'
$PORT = $IP+":20180"
adb connect $PORT
scrcpy --always-on-top
Write-Host "You can now minimize this window and come back to disconnect the phone"
$confirmation2 = Read-Host "Disconnect? [ok]"
while($confirmation2 -ne "ok")
{
    $confirmation2 = Read-Host "Disconnect? [ok]"
}
adb disconnect $PORT
pause