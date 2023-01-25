# MulDel
MulDel is a bash script to delete the user from multiple Linux hosts at once.
-------------------
This is a Bash script that deletes a specified user from a list of servers. The script first defines a variable "file" that holds the file name of a text file containing a list of IP addresses or hostnames of the servers. The script then defines a variable "user" that holds the username of the user that will be deleted.

The script then uses a "for" loop to iterate over the contents of the "file" variable, which are the IP addresses or hostnames of the servers. For each server, the script uses the "ssh" command to connect to the server as the "root" user and run the command "userdel $user | rm -rvf /home/$user" to delete the specified user and remove the user's home directory.

The script then checks the exit status of the previous command using the "$?" variable, which returns 0 if the command was successful or non-zero if the command failed. If the command was successful, the script will print a message indicating that the user was deleted successfully from the server. If the command failed, the script will print an error message indicating that there was an error deleting the user from the server.

After iterating through all the servers in the text file, the script ends.
