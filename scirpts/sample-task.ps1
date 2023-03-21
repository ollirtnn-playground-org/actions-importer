[CmdletBinding()]
param()

Trace-VstsEnteringInvocation $MyInvocation
try {
    $WorkspacePath = Get-VstsInput -Name WorkspacePath -Require
    $FileToCheckIn = Get-VstsInput -Name FileToCheckIn -Require
    $root = Split-Path -Parent $MyInvocation.MyCommand.Path

    [Reflection.Assembly]::LoadFrom("$root\bin\System.Collections.Immutable.dll")
    $dll = New-Object CustomActivities.sample-task
    $dll.Execute($WorkspacePath, $FileToCheckIn)
}
finally {
    Trace-VstsLeavingInvocation $MyInvocation
}