# mTLSProtect
mTLS protection for phone configurations

These scripts were authored by Adrian Daminato of net2phone Canada in response to the ZTP breach reported by Poly on 3/16/2021 and according to best practices per https://support.polycom.com/content/dam/polycom-support/products/voice/polycom-uc/other-documents/en/2021/ea196390-best-practices-for-mtls.pdf
The original notice will be posted below.

These files are provided without warranty of any kind and are to be used at your own risk. Do not install them if you do not completely understand what they are doing and are prepared to address any issues that arise.

Contained herein are two files
1. polycerts.csh
This file can be saved to your /usr/local/sbin or /usr/local/bin folder
Make the file executable with chmod u+x polycerts.sh
This will copy Poly's certs from their website, into your local folder

2. ndp_mtls_poly.conf
Save this file in /etc/apache2.conf.d/

3. Verify that apache will reload without errors with apache2ctl configtest
4. Reload Apache

===============================================
Original Poly notice on 3/16/21

Dear Partner,
Poly needs to inform you of an attack vector that may target your provisioning systems. 
Background: Our ZTP solution was attacked during the month of February. After analyzing logs as part of the incident report, we believe that ZTP device profile information associated with phones in your ZTP tenant has been exfiltrated. 
Poly Actions: We have instituted additional monitoring, added additional security enhancements to address the ZTP vulnerability, and implemented processes to block further attacks on ZTP. 
Recommended Actions: We strongly recommend that you perform the following:
1.	Review information stored in your ZTP profiles and consider changing anything sensitive
a.	For example, change any provisioning server passwords stored in your ZTP profiles
2.	Monitor your systems for any anomalous behavior
3.	Implement Security Best Practices, including Mutual TLS (MTLS) with MAC address Common Name Validation on your provisioning systems, which is the most effective defense against attacks of this nature
For more information on implementing MTLS with MAC address Common Name Validation, Poly has prepared a white paper that describes in detail the best approach to using MTLS with Poly phones. This has been posted to the Poly support site here: MTLS Best Practices Whitepaper. 
If you have any questions, please see the Poly Security Center. To report a security issue, please e-mail security@poly.com.
