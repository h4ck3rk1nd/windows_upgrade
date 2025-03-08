$dismOutput = DISM /online /Get-TargetEditions
if ($dismOutput -match "Professional") {

    cscript.exe slmgr.vbs /upk
    cscript.exe slmgr.vbs /cpky
    cscript.exe slmgr.vbs /ckms
    DISM /online /Get-TargetEditions
    sc config LicenseManager start= auto 
    net start LicenseManager
    sc config wuauserv start= auto 
    net start wuauserv
    changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T
    cscript.exe slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    cscript.exe slmgr.vbs /skms kms8.msguides.com
    cscript.exe slmgr.vbs /ato
}
else {
    Write-Host "The target edition is not eligible for 'Professional' version of Windows !!!"
}
