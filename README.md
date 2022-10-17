# gpg-diary
A collection of small convenience scripts for a gpg-encrypted diary.

The idea behind this project was to be able to create an encrypted diary as simple as possible, in order to have less of an excuse to maintain one. 
The diary is just a series of gpg encrypted files using the `gpgtar` command. Since we do not need to transfer the key, symmetric encryption is used.

## Installation

- Fork (and/or) clone this repository
- Install the requirements:

Ubuntu:
```
apt install gnupg-utils
```

## How to use

1. Unlock the encrypted diary with `open.sh`
2. Add a new entry, either by creating a new file in the `./data` folder, or by running `new_entry.sh`
3. Edit your entry
4. Lock the encrypted diary with `close.sh`.

On first use (meaning if you don't have an encrypted folder yet), you don't need to decrypt or unlock the folder. Therefore you can immediately use `new_entry.sh`

## General Notes

- Remember the password well. If you forget it, your data is gone.
- Check the shell scripts. I commented them and they're pretty simple, so there is no excuse not to do your diligence to secure your data
- When running this via ssh connections, you may need the following in order to input passwords: `export GPG_TTY=$(tty)`
- The `./data` folder is in the `.gitignore`, so that you don't accidentally push your unencrypted diary (which shouldn't happen in the first place)
- You can adapt `new_entry.sh` to change the new entry "template".


## FAQ

Q: Why didn't you use XYZ?

A: I like knowing exactly what happens in scripts I run on my computer and I like knowing exactly how my data is stored.


Q: Why do you need to type the password twice every time you lock the diary?

A: Because the password is not stored anywhere and you wouldn't want to lock yourself out forever if you accidentally mistype once.
