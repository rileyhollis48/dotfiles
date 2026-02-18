DOCUMENTATION FOR TASK 1 ASSIGNMENT

STEP ONE:
-Created a new public repository in GitHub called dotfiles, I then made this repository public

STEP TWO:
-Made sure I cloned my new repository onto my Linux VM
-Since this was the first time i had Git on this VM i had to go through the entire installation and setup

STEP THREE:
-Created a vim-config file in the dotfiles folder I created
-This is where my .vimrc will live

STEP FOUR: 
-Looked up the proper command to install Vim on my Oracle 9 VM
-Command Used: sudo dnf install vim-enhanced 

STEP FIVE:
-Installed Vundle using the command provided by the professor, which was located in the instruction file

STEP SIX: 
-This is where I had to create my .vimrc file
-I used ChatGPT to find a very basic yet efficent set of rules/settings for the vim
-Once I had a base outline of settings I added Vundle and my plugins, I had to use AI to find the proper syntax to do this as ive never really messed with vim to much 
-Added my colorscheme, ended up just using jellybeans as it was professors favorite and I dont have a preference 

NOTE: For adding the colorscheme this is the command i found online to make it work. Plugin nanotech/jellybeans.vim   I followed this command with "colorshceme jellybeans" as shown in the .vimrc

STEP SEVEN:
-I decided all I wanted to add was Vim Fugative 
-Found the proper way to use this plugin via their website, which was linked by the professor, double checked syntax with ChatGPT and they lined up 
-I liked that this command allowed me to use commands inside of the editor, which was apart of my decision making 

STEP EIGHT:
-I finally installed these plugins using Vundle
-I used the command provided to us in the instructions sheet vim +PluginInstall +qall
-After this i moved my .vimrc to the proper folder which was vim-config 

FINAL STEP:
-Wrote a script that performed the three main requirements in the instructions sheet 
-Copies .vimrc to home directory 
-Checks for Vundle installation 
-Installs missing plugins if needed 

NOTE: Throughout this whole process ive pushed and commited multiple times to my repository to make sure no progress was lost 
NOTE: Originally while performing these commits I was getting errors, I found out that due to using a VM it wasnt able to sync properly with my repository, I found the solution to this through AI which had me create a .gitignore file and run the command git pull --rebase which made sure it was syncing. After these fixes I had no issues anymore 

FINAL NOTES: Script originally wasnt working, this was due to me putting in the incorrect file path for where I wanted .vimrc to be copied to. I fixed this and tested the script and it has worked each time since 

The final action I will take on this Task is pushing the commit that will upload this Readme file. 
