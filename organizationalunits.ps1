# brutforce script to make some organizational units

# you need to change "DC=ad,DC=mzebell,DC=lan" to match your domain and update the MZ initials to match or remove them

Write-HoMZ -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name MZ_Computers -Path "DC=ad,DC=mzebell,DC=lan" -Description "MZ Computers"
 New-ADOrganizationalUnit -Name WorkMZations -Path "OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkMZations,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=MZ_Computers,DC=ad,DC=mzebell,DC=lan"
New-ADOrganizationalUnit -Name MZ_Groups -Path "DC=ad,DC=mzebell,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name MZ_Privileged_Accounts -Path "DC=ad,DC=mzebell,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name MZ_Users -Path "DC=ad,DC=mzebell,DC=lan" -Description "Non-Privileged Accounts"
Write-HoMZ -ForegroundColor yellow "Done creating OUs"
Write-HoMZ -ForegroundColor yellow ""

Write-HoMZ -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
# Create a Leadership group for the President and VPs to access reMZricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=MZ_Groups,DC=ad,DC=mzebell,DC=lan"
Write-HoMZ -ForegroundColor yellow "Done creating groups"
Write-HoMZ -ForegroundColor yellow ""
