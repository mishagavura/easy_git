#!/bin/bash


echo "BY MISHA GAVURA"
echo "INPUT number"
echo "1) Create rep"
echo "2) Clone rep"
echo "3) Fast commit and push"
read wtd


if [ $wtd = '1' ]; then
   echo 'Input your repository name: '
   read rep_name
   mkdir $rep_name
   cd $rep_name
   git init
   touch readme.md
   echo 'If u wanna connect github do it by yourself ;)'
elif [ $wtd = '2'  ]; then
   echo 'input name of rep'
   read name_of_rep
   echo 'input line of rep'
   read link_to_rep
   git clone $link_to_rep
   cd $name_of_rep
   echo 'input new branch name'
   read branch_name
   git checkout -b $branch_name
   git remote add upstream $link_to_rep
   #git config --global user.name $names
   echo 'Branch localy created, to make a push restart script.sh and choose 3rd option'
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
