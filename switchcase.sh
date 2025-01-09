#!/bin/bash


#!/bin/bash
while true
do
        echo "Select a number of your choice"
        echo "1. To create two new files"
        echo "2. To change the permission of a file of your choice"
        echo "3. To search a pattern in a file of your choice"
        echo "4. To list the files in current directory recursively"
        echo "Please enter your choice : "
        read choice

        case $choice in
                '1')
                        #create_2_files
                        echo "Enter the names of two files to be created : "
                        read file1 file2
                        touch $file1 $file2
                        echo "Files $file1 and $file2 are created !!!"
                        break
                        ;;

                '2')
                        #change_perm
                        echo "Name the file you want to change permission : "
                        read file
                        echo "Enter the permission : "
                        read perm
                        chmod "$perm" "$file"
                        echo "Permission of $file is changed to $perm !!!"
                        break
                        ;;

                '3')
                        #search_pattern
                        echo "Enter the filename : "
                        read file
                        echo "Enter the pattern to search : "
                        read pattern
                         if [ -f "$file" ]; then
              		  grep "$pattern" "$file" && echo "Pattern found." || echo "Pattern not found."
            			else
                		echo "File '$file' does not exist."
            			fi
           			break
			       	;;                   
     

                '4')
                        #list_curdir_recursively
                        echo "List of files in current directory recursively : "
                        find . -type f
                        break
                        ;;
        esac
done
