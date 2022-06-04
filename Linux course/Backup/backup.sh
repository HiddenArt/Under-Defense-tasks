#!/bin/bash

home_folder="/home/hidden"
backup_folder="/home/hidden/Documents/UnderDefense/Backup/backup_files"

cp $home_folder/*.conf* $backup_folder

function backup {
for file in $(ls -a $backup_folder); do
	#echo ${file}
	if [[ $file != .* ]] && [ -f $home_folder/$file ]
	then
		echo -e "$file - file exist"
	elif [[ $file != .* ]]
	then
		cp $backup_folder/$file $home_folder/
		echo -e  "\033[37m$file - \033[32mfile restored \033[37m"
	fi
done;
}

while :
do
	echo $'\n'-------------------------
	backup
	echo -------------------------
	sleep 30s
done
