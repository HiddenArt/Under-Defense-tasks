# create a new task action
$taskAction = New-ScheduledTaskAction `
    -Execute 'powershell.exe' `
    -Argument '-File C:\Powershell_scripts\recycle_bin_clear.ps1'

# create trigger (Every Monday at 15:00)
$taskTrigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Monday -At 3PM
$tasktrigger

# Register the new PowerShell scheduled task

# The name of scheduled task.
$taskName = "RecycleBinClear"

# Description the scheduled task.
$description = "Clean recycle bin every Monday at 15:00"

# Register the scheduled task
Register-ScheduledTask `
    -TaskName $taskName `
    -Action $taskAction `
    -Trigger $taskTrigger `
    -Description $description