$Path = "$PSScriptRoot\screenshots"

# Checking that the directory for storing screenshots has been created, if not, create it
If (!(test-path $path)) {
New-Item -ItemType Directory -Force -Path $path
}
Add-Type -AssemblyName System.Windows.Forms
$screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds

# Getting the screen resolution
$image = New-Object System.Drawing.Bitmap($screen.Width, $screen.Height)

# Create a graphic object
$graphic = [System.Drawing.Graphics]::FromImage($image)
$point = New-Object System.Drawing.Point(0, 0)
$graphic.CopyFromScreen($point, $point, $image.Size);
$cursorBounds = New-Object System.Drawing.Rectangle([System.Windows.Forms.Cursor]::Position, [System.Windows.Forms.Cursor]::Current.Size)

# Getting a screenshot
[System.Windows.Forms.Cursors]::Default.Draw($graphic, $cursorBounds)
$file_name = "Screenshot" + "_" + $env:computername + "_" + $env:username + "_" + "$((get-date).tostring('yyyy.MM.dd-HH.mm.ss')).png"
$screen_file = "$Path\" + $file_name

# Save screenshot as png file
$image.Save($screen_file, [System.Drawing.Imaging.ImageFormat]::Png)

# Open file
powershell.exe $screen_file

#powershell.exe -executionpolicy bypass -file C:\Powershell_scripts\script3\take_screenshot.ps1