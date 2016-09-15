# Meteor Project Manager

## ABOUT

MPM (Meteor Project Manager) is an utility entirely written in bash enabling Meteor Application configuration and managing 
with a question/answer configuration without knowing any command. 
Many functionnalities are handled, please check the section called **Functionnalities** for more information.

## AUTHORS

MPM is maintained by Axel Vaindal & M4dNation's team.

## Contributors

There is actually no other contributors for this project. If you want to contribute, feel free to make any suggestions you want or to contact me.

## Functionnalities

#### General informations 

Before anything, your project should have a **contrib** folder in which you have to put this **mpm.sh** script.  
By the way, you should always call this script from the root of your project folder.  
For example, if your project has the following tree organisation : 

- contrib
	- mpm.sh
- examples
	- test 1
	- test 2
- src

Then, remember that any call of the script from one of those folders will make the script use relatives links interprated from its calling location and not from the file location, as it's usually the case with any shell command.

To launch the script, use the following command :

    bash contrib/mpm.sh
or
    
    ./contrib/mpm.sh

If any permission error occures, please use the following command to add execution write:

	chmod +x contrib/mpm.sh

If everything runs well, you should have a greeting in your shell interface and a question about the command you want to execute.

## LICENCE

MPM is available under the terms of the GNU GENERAL PUBLIC LICENSE. Check the licence file for more details.
