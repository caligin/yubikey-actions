#ykman comes from the yubikey-manager package
for k in enc sig auth; do
  ykman openpgp touch ${k} on
done
