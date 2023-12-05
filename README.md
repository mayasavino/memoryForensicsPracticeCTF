# memoryForensicsPracticeCTF

**Purpose**
This project exists to facilitate the creation of memory forensics questions for CTF-style cybersecurity competitions. Contained in this repo are the scripts and detailed instructions to create a database, set up our work computer, database server, and an internal network using VirtualBox; and virus custom-tailored to the database (hardcoded header values) that saves bank account and routing numbers, then encrypts the entire database with AES and a pseudorandom key based on the time the program is executed, and finally copies back the stolen information (including the key) before deleting itself and the original unencrypted database.
