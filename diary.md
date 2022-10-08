# Diary

The diary is just a series of gpg encrypted files. Since we do not need to transfer the key, symmetric encryption is used. 

Installation of the required packages: `sudo apt install gnupg-utils`

- To encrypt the diary folder, this command is used:
```
gpgtar --output diary.gpg -symmetric diary
```
- After that, the unencrypted diary folder is emptied
- To decrypt the folder, the following command is used

```
gpgtar --decrypt --directory diary diary.gpg
```

- Note: On ssh connections you may need the following, in order to be able to input passwords:
```
export GPG_TTY=$(tty)
```
- Todo: Add this line to `open.sh` and `close.sh` 
- Todo: Add backup rsync script
- Todo: Fix ssh config 
	- properly deploy from dotfile with symlink
	- fix jump hosts
	- add Backup1, 2 and 3

- If we want to use the gpg commands in a script, we can add the following flag:
```
--gpg-args="--passphrase=top-secret-passphrase --batch" 
```