#!/bin/bash

if [[ $# -eq 0 ]] || [[ ! -d $1 ]]
then
	echo "Error, No such directory found "
	exit 1
fi

source_dir=$1

create_backup(){

	local timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
	local backup="${source_dir}/backup_${timestamp}"

	mkdir "$backup"
	echo "Backup created successfully : $backup"
}

rotation(){
	local backup_list=($(ls -t "${source_dir}/backup_"*))
	#ls $backup_list
	if [[ ${#backup_list[@]} -gt 3 ]]
	then
		local backups_to_remove=("${backup_list[@]:3}")
		#ls -l
		echo "in f"
		for file in ${backups_to_remove[@]}
		do
			echo $file
			rm -r "${file}"
			echo "old backup removed"
                done
	fi
}
create_backup
rotation
