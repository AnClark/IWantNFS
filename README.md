# IWantNFS
Quickly help you enable NFS features on your Windows.

## OVERVIEW

Windows provided NFS utilities as features since NT 6.0 (Windows Vista). If you work with NFS, you can easily enable it via Feature Manager in Control Panel. But if you are working in laboratory with numbers of computers, manually switching their NFS features on all around the workshop with clicking mouse over those complicating UIes is really annoying.

So it's time to write a tool to simplify it.

## HOW TO USE

Remember to run every scripts in this repository with Admistrator Permission.

Run `Enable_via_dism.cmd` to enable NFS features on your Windows, while run `Disable_via_dism.cmd` to disable them.

## TARGETS

Only for Windows distributions which provided this feature.

- NT 6.x: 
  - Windows Vista Professional/Ultimate
  - Windows 7 Professional/Ultimate
  - Windows Server 2008
  - Windows Server 2008 R2
  - Windows 8 Professional/Enterprise
  - Windows 8.1 Professional/Enterprise
  - Windows Server 2012
- NT 10.0
  - Windows 10 Professional/Enterprise
  - Windows Server 2016
  
## TODO

To make those Windows distributions not containing NFS use NFS as well, for example, Home Edition.
