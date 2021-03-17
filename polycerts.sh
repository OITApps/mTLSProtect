#!/bin/bash
DEVICE_CA_DIR="/etc/ssl/certs/device_ca/"
mkdir -p ${DEVICE_CA_DIR}
POLYCOM_PKI="http://pki.polycom.com/pki"
for CERTFILE in Polycom%20Root%20CA.crt Polycom%20Equipment%20Policy%20CA.crt Polycom%20Equipment%20Issuing%20CA%202.crt Polycom%20Equipment%20Issuing%20CA%201.crt
do
    # Write file out with underscores instead of spaces
    wget ${POLYCOM_PKI}/${CERTFILE} -O ${CERTFILE//%20/_}
    openssl x509 -inform der -in ${CERTFILE//%20/_} -outform pem -out ${DEVICE_CA_DIR}/$(basename -z ${CERTFILE//%20/_} .crt).pem
done
