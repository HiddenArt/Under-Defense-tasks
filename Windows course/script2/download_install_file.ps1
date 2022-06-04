$url = "https://dl3.topfiles.net/files/2/1370/30671/ZHRBQXVqQBFOcHhvUGxoL1R0YlBtSGY3VHc0d211VmRLc0lOYi9pZVVoMzRZQT06OhG8UjjKQtQGt-SDI8KaTnY/arduino-ide_1.8.19.exe"
$destination = "$PSScriptRoot/arduino-ide_1.8.19.exe"

#.Net file Downloadload
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $destination)

#BitsTransfer file Downloadload
#Start-BitsTransfer -Source $url -Destination $destination

#Install file
Start-Process -Wait -FilePath "$PSScriptRoot/arduino-ide_1.8.19.exe" -ArgumentList "/S" -PassThru