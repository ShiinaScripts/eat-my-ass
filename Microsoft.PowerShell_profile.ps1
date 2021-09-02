# ~\Documents\PowerShell\Profile.ps1
#function l { Get-ChildItem $args -Exclude .*  | Format-Wide Name -AutoSize }
function la {
  param(
    [Switch] $lrt
  )
  if ( $lrt ) {
    Get-ChildItem | Sort-Object LastWriteTime
  }
  else {
    Get-ChildItem $args -Exclude .*  | Format-Wide Name -AutoSize
  }
}


Invoke-Expression (&starship init powershell)
