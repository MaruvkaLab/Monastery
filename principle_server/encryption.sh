

openssl genrsa -out key.pem 2048
openssl rsa -in keypair.pem -pubout -out publickey.crt
