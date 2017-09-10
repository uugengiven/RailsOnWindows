# Rails on Windows

This will prepare your Windows environment for working on Ruby on Rails projects. This project installs the following:

* Ruby 2.3.3
* Ruby DevKit
* Sqlite
* NodeJS
* Rails

Running these scripts requires `Expand-Archive`, which is part of Powershell 5. This is the default Powershell on Windows 10; older versions of Windows may need to update Powershell to v5.

## Instructions

1. Install [Chocolatey](http://www.chocolatey.org)
2. Run `part 1.ps1` from Powershell - this installs dependencies
3. Open a new Powershell terminal and run `part 2.ps1` - this upgrades dependencies & installs Rails.

After these steps, you should be able to successfully run `rails new project_name`.
