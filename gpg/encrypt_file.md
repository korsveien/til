To encrypt a file with your public gpg key, and then decrypt it using your private key  do:

1. `gpg --list-keys` to list keys and asscosiated e-mail
2. `gpg --armor export <e-mail> > <filename>.gpg` to save public key to file
3. Send file containing public key to yourself
4. On recipient end import the public key with `gpg --import <filename>.gpg`
5. Encrypt a file `gpg --output <encrypted-filename>.gpg --encrypt --recipient <e-mail> <filename>`
6. Send encrypted file to the machine with the private key
7. On machine with the private key, decrypt the file with: `gpg --output <decrypted-filename> --decrypt <encrypted-filename>`
