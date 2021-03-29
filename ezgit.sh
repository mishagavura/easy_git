#!/bin/bash


echo "BY MISHA GAVURA & WEBGTX"
echo ""
echo "Choose option"
echo "1) Create Repository"
echo "2) Clone Repository && Create new branch"
echo "3) Fast commit and push"
read wtd


if [ $wtd = '1' ]; then
   echo 'Input your repository name: '
   	read rep_name
   mkdir $rep_name
   cd $rep_name
   git init
   touch README.md
   git add .
   git commit -m "First commit."
   echo 'Do you wanna connect your repository to git server? y/n'
   	read remoteOption
	if [ $remoteOption = 'y' ]; then
	   echo 'Write yout URL'
	   	read urlOption
	   git remote add origin $urlOption
	   git push -u origin master
   fi
elif [ $wtd = '2'  ]; then
   echo 'input name of repository'
   read name_of_rep
   echo 'input line of repository'
   read link_to_rep
   git clone $link_to_rep
   cd $name_of_rep
   echo 'Do you wanna create new branch for yourself? y/n'
   read branchOption
   if [ $branchOption = 'y' ]; then
      echo 'input new branch name'
      read branch_name
      git checkout -b $branch_name
      git remote add upstream $link_to_rep
      #git config --global user.name $names
      echo 'Branch localy created, to make a push restart script.sh and choose 3rd option'
   fi
elif [ $wtd = '3' ]; then
   git add .
   git status
   echo 'Comment to commit'
   read comment_push
   echo 'Input branch name'
   read branch_name_1
   git commit -a -m $comment_push
   git push -u origin $branch_name_1 
   echo 'Pushed succesfully'

fi

exec bash
