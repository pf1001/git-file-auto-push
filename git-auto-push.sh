#!/bin/bash
#The example below is for a cherrytree note taking application.
#inotiywait looks for the event "CLOSE_NOWRITE,CLOSE" which is the save event.
#To get this to work for you:
# Change the the file location to whatever the directory and filename that you are activily working on
# Change the repo and branch to your repo 

while true; 
do
	inotifywait -qq -e CLOSE_NOWRITE,CLOSE ~/github/cherrytree-notes/CheerryTree.ctb;
	git checkout testbranch
	cd ~/github/cherrytree-notes;
	git add CheerryTree.ctb;
	git commit -m "Automated update";
	git push -u origin testbranch;
done
