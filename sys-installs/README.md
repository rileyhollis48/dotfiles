<h1>DOTFILE TASK 3 SCRIPT DOCUMENTATION</h1> 
<br>
IMPORANT NOTE: I spoke with you briefly on 4/6 about how I use Oracle 9 as my distro, I created both an Oracle 9 version of the script as well as an Ubuntu version. This document will include screenshots of both scripts as well as the conversion from ubuntu to oracle. Screenshots will show the tests being successful.
<br>
AI USED: For this assignment I utilized Chat GPT Pro (I will annotate parts it was used) 
<br>

<h2>Original Ubuntu Script and its Description</h2>
<br>
<img width="548" height="726" alt="Ubuntu Script" src="https://github.com/user-attachments/assets/194d9dc8-b75f-4f3e-a7b1-c3396b1b30eb" />
<br>
Description: (The shell of this script was created by AI)
<br>
- The script checks to see if the script is being ran by either root or a user with Sudo access (will end if you are not root or sudo, had AI genratee me the $EUID number)
<br>
- Ensures apt manager is installed, and if it is not then it will end.
<br>
- Installs ansible using apt, followed by an input of either yes or no to continue. (Used AI to figure out how to get ubuntu to read user input)
<br>
- If yes continues, if No exit. 
<br>
- If ansible already exists on the system it will output an error message letting you know its installed. 
<br>
- Silently installs ansible packages on the system. (Used AI to figure out how to install silently)
<br>
- Adds all the ansible packages to the ubuntu PPA Repository. (Was not even sure the proper way to do this, but read that it is important for future proofing, Used AI to complete this portion)
<br>
- Once it has completed you will get a message stating its done as well as the command to check what version it installed. 
<br>
<h3>Prompts used for AI</h3>
1. Shell Prompt: Lets create a script template, I am using Ubuntu, This script is going to be for installing software. Keep it simple, clean, and easy to build on.
<br>
2. Root or Sudo Prompt: Give me the line and EUID to check if a user is running root, this will be used in my script.
<br>
3. APT installed: Write me a if then stateement to check if APT is installed on thr system 
<br>
4. Silent Install: Whats the add on to make an install silent in script installing 
<br>
5. PPA Repository: Im unsure how to add a software into the PPA Repository, can you please give me the command to add to a script thatll perform this


<h2>Converted Oracle 9 Script and Description</h2>
<br>
<h3>Screenshots of Oracle 9 Script and the Tests and Confirmations</h3>
<img width="577" height="707" alt="Oracle Version of Script " src="https://github.com/user-attachments/assets/9c48d518-e13f-48ef-ab99-5af80e46e783" />
<br>
<h3>Script Test with Version # it downloaded</h3>
<img width="740" height="135" alt="Script working on Oracle" src="https://github.com/user-attachments/assets/e42e18a0-e09e-43b4-8769-676c7d68e936" />
<img width="1021" height="168" alt="Ansible Version" src="https://github.com/user-attachments/assets/2bc5a926-2f1e-41c0-aadd-db34d3aae3dc" />
<h3>Script Test when Ansible is already installed</h3>
<img width="741" height="103" alt="Script when ansible is already installed" src="https://github.com/user-attachments/assets/f5ec9479-26c6-43c9-ab97-968ec82268cf" />
<br>

Description: 
- The oracle 9 version of the script functions fundamentally the exact same as the Ubuntu Script
- Differences of Note: does not add this to a PPA Repository (not needed), Uses DNF instad of APT

 <h3>Prompts used for AI</h3>
1.  Script Conversion: Take my ubuntu script and convert it to oracle 9 language. Match each section up with the Ubuntu script. It must perform the same logically.


