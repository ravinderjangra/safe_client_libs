$cargo_script_path = $pwd.path + "\cargo-script.exe"
Remove-Item -Path .\target\deploy -Recurse -Force -ErrorAction SilentlyContinue
$url = "https://s3.eu-west-2.amazonaws.com/download-native-libs/cargo-script.exe"
Invoke-WebRequest $url -OutFile "cargo-script.exe"
New-Item -Path ".\target\deploy" -ItemType directory
$COMMIT_MESSAGE = "$env:APPVEYOR_REPO_COMMIT_MESSAGE $env:APPVEYOR_REPO_COMMIT_MESSAGE_EXTENDED"
