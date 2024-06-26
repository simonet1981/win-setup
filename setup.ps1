# Copy and paste in IE
# http://boxstarter.org/package/url?https://https://raw.githubusercontent.com/simonet1981/win-setup/master/setup.ps1

$Boxstarter.RebootOk=$true      # Allow reboots?
#$Boxstarter.NoPassword=$true    # Is this a machine with no login password?
#$Boxstarter.AutoLogin=$true     # Save my password securely and auto-login after a reboot

Update-ExecutionPolicy RemoteSigned
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar
#Enable-RemoteDesktop

#install Chocolatey with cmd.exe
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Dev Tools
cinst conemu
#cinst powershell
#cinst GitHub
cinst git --params="/GitAndUnixToolsOnPath"
#cinst git-credential-winstore
#cinst poshgit
#cinst tortoisegit
#cinst smartgit
#cinst winmerge
choco install git-fork
choco install another-redis-desktop-manager
choco install docker-desktop

cinst nuget.commandline
cinst nugetpackageexplorer

#cinst cshell
#cinst scriptcs
cinst linqpad
choco install linqpad5.install
#cinst sublimetext3
#cinst install sublimetext3.packagecontrol

#choco install fiddler4
choco install 7zip
#cinst autohotkey
#choco install nodejs

# Productivity
choco install python
choco install pycharm-community
choco install googlechrome
choco install notepadplusplus
choco install mremoteng
#choco install redis-desktop-manager 
choco install openvpn
choco install postman
choco install soapui
#choco install resharper-platform
#choco install baretail
choco install dbeaver
 
choco install paint.net 
#choco install skype 
#choco install slack
#choco install foxitreader
# IIS Server
#cinst webpi
#cinst -source windowsfeatures IIS-WebServerRole IIS-WebServer
#cinst -source windowsfeatures IIS-HttpTracing IIS-HealthAndDiagnostics
#cinst -source windowsfeatures IIS-ApplicationDevelopment IIS-DefaultDocument IIS-CommonHttpFeatures IIS-RequestFiltering IIS-Security
#cinst -source windowsfeatures IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility
#cinst -source windowsfeatures IIS-ASPNET

#$aspnet_regiis = Join-path -Path $env:WinDir -ChildPath Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe
#& $aspnet_regiis -I

# Windows Updates
#Install-WindowsUpdate -AcceptEula

# Taskbar items
#Install-ChocolateyPinnedTaskBarItem "$env:localappdata\Google\Chrome\Application\chrome.exe"
#Install-ChocolateyPinnedTaskBarItem "$env:windir\explorer.exe"
#Install-ChocolateyPinnedTaskBarItem "$env:SystemRoot\system32\WindowsPowerShell\v1.0\powershell.exe"

# VSIS Packages

Install-ChocolateyVsixPackage TrailingWhitespaceVisualizer https://visualstudiogallery.msdn.microsoft.com/a204e29b-1778-4dae-affd-209bea658a59/file/135653/13/TrailingWhitespace.vsix
Install-ChocolateyVsixPackage WebEssentials2015 https://visualstudiogallery.msdn.microsoft.com/ee6e6d8c-c837-41fb-886a-6b50ae2d06a2/file/146119/32/Web%20Essentials%202015%20v0.5.197.vsix
Install-ChocolateyVsixPackage AddNewFile https://visualstudiogallery.msdn.microsoft.com/3f820e99-6c0d-41db-aa74-a18d9623b1f3/file/140782/17/Add%20New%20File%20v2.1.39.vsix
Install-ChocolateyVsixPackage OpenCommandLine https://visualstudiogallery.msdn.microsoft.com/4e84e2cf-2d6b-472a-b1e2-b84932511379/file/151803/12/Open%20Command%20Line%20v1.7.121.vsix
Install-ChocolateyVsixPackage DebugAttachManager https://visualstudiogallery.msdn.microsoft.com/6a667daf-be94-4be5-a92a-71732b8dd60a/file/124459/13/DebugAttachHistory.vsix

# Install chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Filesystem
#New-Item -Path C:\ -Name Temp -ItemType Directory
