
$msgBody = "Recycle bin has been cleaned"
$msgTitle = "Inform about cleaning"
$msgButton = 'Ok'
$msgImage = 'Information'

#pop-up message
#[System.Windows.MessageBox]::Show($msgBody,$msgTitle,$msgButton,$msgImage)


#notification balloon
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,$msgTitle,$msgBody,[system.windows.forms.tooltipicon]::Info)

#Clear all recycle bins without confirmation
Clear-RecycleBin -Force