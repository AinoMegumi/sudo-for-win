$ExecutionApplication = $Args[0]
$WorkingPath = Split-Path $ExecutionApplication
if ($Args.Length -gt 1) {
  $arglist = $Args[1]
  if ($Args.Length -gt 2)
  {
      for ($i = 2; $i -lt $Args.Length; $i++) 
      {
          $arglist = $arglist + "," + $Args[$i]
      }
  }
  Start-Process $ExecutionApplication -Verb runas -WorkingDirectory $WorkingPath -ArgumentList $arglist
}
else
{
  Start-Process $ExecutionApplication -Verb runas -WorkingDirectory $WorkingPath
}
