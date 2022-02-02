#!/bin/bash
#Script to setup new project and project file
#echo Generate new folder and project file...
#echo 

echo -e "Enter project name: "
read projectName
#read -t 5 -p "stall 5sec..."
echo 
mkdir $projectName
cd $PWD/$projectName

#start of while/do loop
echo -e "How many project files do you want: "
read count
counter=0
while [ $counter -lt $count ]
do
#	echo $counter
	echo -e "Enter file name: "
	read fileName
	echo -e "Enter file type: "
	read fileType
	touch $fileName.$fileType
	((counter++))
done

echo $counter files created...

#read -p "Press key to continue..."
echo Listing current directory and files...
echo
pwd
echo
ls -l
echo 
echo Finished
