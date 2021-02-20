$STR = Read-Host "Enter STR"
$user_name = "UPart2$STR"
$group_name = "GPart2$STR"

echo "User $user_name creating"
net user $user_name /add

echo "Group $group_name creating:"
net localgroup $group_name /add

echo "Adding user $user_name to group ${group_name}:"
net localgroup $group_name $user_name /add

echo "Activating user ${user_name}:"
net user $user_name /active:yes

pause
