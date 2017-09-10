# Variables
$rubygems = "rubygems-2.6.13"
$rgzip = $rubygems + ".zip"

# Update DevKit
@"
---
- c:/tools/ruby23
"@ | Out-File c:\tools\DevKit2\config.yml -Force -Encoding UTF8
pushd c:\tools\DevKit2
ruby dk.rb install -f
popd


# Update RubyGems (Windows install has bad SSL on versions older than 2.4)
mkdir c:\temp
pushd c:\temp

Invoke-WebRequest -uri https://rubygems.org/rubygems/$rgzip -OutFile $rgzip
Expand-Archive $rgzip -DestinationPath c:/temp
pushd c:\temp\$rubygems
ruby setup.rb
popd
popd
