$Computer = [ADSI]"WinNT://$Env:COMPUTERNAME,Computer"
$User = $Computer.Create("User", "claranetoperator")
$User.SetPassword("Qq#VPN4UD?J.RF*L")
$User.SetInfo()
$User.FullName = "Claranet"
$User.SetInfo()
$User.UserFlags = 64 + 65536 # ADS_UF_PASSWD_CANT_CHANGE + ADS_UF_DONT_EXPIRE_PASSWD
$User.SetInfo()
$group = [ADSI]"WinNT://$Env:COMPUTERNAME/Administrators,group"
$group.Add("WinNT://claranetoperator,user")