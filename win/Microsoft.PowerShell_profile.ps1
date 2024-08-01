function gbrda()
{
  git branch | findstr /V "^\*" | foreach { $_.Trim() } | foreach { git branch -D $_ }
}

function rmrf()
{
  Remove-Item -Recurse -Force $args
}

Set-PSReadlineKeyHandler -Key ctrl+d -Function DeleteCharOrExit

