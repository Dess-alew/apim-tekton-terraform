$backend = "# local state - no remote backend"
[System.IO.File]::WriteAllText("$PWD\infra\backend.tf", $backend, [System.Text.Encoding]::ASCII)