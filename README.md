# SSH Key Copy Script
This is a simple bash script that allows you to copy your SSH key to a remote server, enabling passwordless authentication.

## Getting Started
To get started, you'll need to have a Unix-based system with bash and SSH installed.

Clone the repository and run the following command:

./ssh_key_copy.sh
Using the Script
Once the script is running, you'll be prompted to enter the following information:

+ IP or hostname of the DEST server: The IP address or hostname of the server you want to copy your SSH key to
username for the DEST server: The username to use when connecting to the server via SSH

+ The script will check if you have an existing SSH key pair on your local machine, if not, it will generate one. Then it will use the ssh-copy-id command to copy the key to the destination server.

## Note
This script does not handle any error handling or input validation. It is recommended to use this script in a controlled environment where you trust the input.

##License
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Acknowledgments
This script serves as a basic example, however it can be enhanced by incorporating additional features and error handling. You are welcome to fork the repository and make your own modifications.
