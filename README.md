# git-auto-push.sh

## Overview 
<p>The aim of this script is to allow for auto uploads of documentation once it is saved. 
Inotifywait is used to detect the event "close_write" which occurs when a document is saved.</p>

<p>By using github it is easy to keep document revisions and to roll back revisions. 
The script will push to a branch so you will need to manually merge your documentation from your branch into master when you are ready to do so.
</p> 
 
## SETUP
1. apt get install inotify-tools
2. Enable [ssh access to github][1]
3. Set your global email to [github noreply email address][2]
4. Clone the repo: ```git clone git@github.com:pf1001/automation.git```
5. Change the script to point to your repo, branch and the file that you want to backup.
6. Copy the script to /usr/local/bin.
7. Set the script to autostart. Note this will depend on which distribution of linux your using.

&nbsp;&nbsp;&nbsp;&nbsp; Edit /etc/crontab

&nbsp;&nbsp;&nbsp;&nbsp; Enter the following
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ```@reboot /usr/local/bin/git-auto-push.sh```

8. To test simply run ```/usr/local/bin/git-auto-push.sh``` in a terminal  and make sure that when you make changes to your document listed in the script that it automatically gets pushed to git.

[1]: https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
[2]: https://help.github.com/en/github/setting-up-and-managing-your-github-user-account/setting-your-commit-email-address
