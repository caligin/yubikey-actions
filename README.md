# yubikey stuff

I can never remember how to do stuff so here's some scripts and notes

## gotchas

- you need `scdaemon` installed to make the smartcard mode work, it doesn't install automatically with `gpg2`
- to have the subkeys linked to the stubs you need to see the card with `gpg2 --card-edit`

## regenerate subkeys

TODO automate some of this next time

- get master key from the secure drive, import in keyring
- `gpg2 --edit-key <keyid>`
- follow interactive menu to generate new `2048` keys for sig, enc and auth
- command to copy them over should be `keytocard` after selecting it
- `gpg2 --delete-secret-keys <keyid>`

would be grand to regenerate them directly on the card tbh, TODO see if it's possible to do it and then export the stubs correctly 
