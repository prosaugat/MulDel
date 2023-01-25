!/bin/bash

#IP list of respective hosts in text file
file=iplist.txt

#Mention the user which you want to delete
user=username

for server in $(cat iplist.txt)
do
#Connect to the remote server and delete the user
        ssh root@$server "userdel $user | rm -rvf /home/$user"

#Check if the user was deleted successfully
        if [ $? -eq 0 ]
        then
                echo "User '$user' was deleted successfully from $server"
        else
                echo "Error deleting user '$user' from $server"
        fi

done