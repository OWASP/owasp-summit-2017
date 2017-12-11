---
title    : GPG Infrastructure for OWASP
---

## Outcomes

The outcomes as described in the initial [draft](https://docs.google.com/document/d/1GXeCF1_EqNdZ0RZLz1iRzA5hC2Qz817NdRvwHwrQnMA) are as follows.
of outline sent to participants for consensus

### Topic of Outcomes

* Purpose
* Preconditions
* Key management
* Recommendet tools
* Next steps and milestones
* Appendix A: OWASP GPG Policy
* Appendix B: Notes and Remarks

### Purpose

To have an infrastructure to guarantee integrity and authenticity of deliverables to come from the OWASP organization and the OWASP members (i.e. email).

### Followup

Call for participation
Call for review

### Preconditions

GPG keys - in particular the passphrase for each - are designed to be used by individuals mainly. OWASP is driven by the the community, its members, who are individuals. There is a continous come and go of these members. This means that the key infrastructure needs to take care of this fluctuation. There is also a huge number of members and only a very small number hired staff. The provided key infrastructure must be solid in the way of simple and secure and must scale properly according permission to use and sign deliverables.

### General remarks

In other documents the terms ‘primary key’ / ‘master key’ are used interchangeable or with different definition.

### Key management

1. Master Key
  * master will be generated, a subkey will be derived
then the master key will get a secure passphrase and stored on a physical .owasp.org server;
 → **TBD:** which server, where (country)?
  * backup key: make a copy of the master key and safe in a safebox i.e. in a bank
 * storage of the master key on an external device (offline) is not feasible, because OWASP cannot guarantee the contunous use of this device; this applies i.e. to USB sticks and GPG Smart carts 
 * after that (above) the master key will be removed, leaving the subkey only, this subkey then becomes the primary key to be used in daily pratice
  * the master key is only accessible for:  Executive Director, Board Chair.
 
2. Primary key
 * will be derived from the master key
 * only this sub-key will be the used key for general usage
 * access to this key should have:  “Technical Staff” i.e Senior Project Coordinator.
   * can be some automated process
 
3. Technical key
 * to be used to sign project deliverables
   * OWASP Guides and documents, e.g. OWASP Testing Guide
   * OWASP software and tools, e.g. OWASP ZAProxy
 
4. Personal key
 * to be used to sign email, project contributions
 * to encrypt data for secure transport and storage
 
5. Key generation process
 * Personal Key, for OWASP members with an OWASP email address
   1. person generates her own key
   2. key must comply to OWASP GPG Policy
   3. key must be self-signed
   4. public key will be sent to “OWASP GPG signer”
 * Technical Key, for OWASP projects to sign deliverables as code or documents
   1. project leaders can request a key for their project 
   2. Technical Staff will generate the as described in “key generation process” using the projects OWASP email address 
      * “<project-name>@owasp.org>” or “<project-name>@project.owasp.org”
Project email address requirements are to be defined
      *  not the list address “@list.owasp.org”
 
6. Key signing process
  1. technical staff receives a request to sign a generated personal or technical key
     - the request must contain the public part of the signed key to be signed.
  2. the technical staff has to validate the request, according to the OWASP GPG policy
  3. the technical staff signs the key, using the Primary Key
  4. the technical staff records the key as being signed according to the OWASP GPG Policy
  5. the technical staff sends the signed key back to the key owner (not the requester).
 
7. Automatic signing process
	Until this process is in place, manual process is in place and used.
 * must include a secure way to handle key passphrase
   * manually insert the passphrase
   * may not be stored in clear text
   * GPG smartcard
   * private key stored in a secure remote keystore with API access (not advised due to system complexity)
 * automatic request validation
   * Request must contain the public key
   * extract OWASP email address from public key
   * the extracted email must be validated to be an existing OWASP email address according to the OWASP GPG policy
 
8. Key revocation process:
  * **TBD:** How to handle key if the owner (human) leaves the organisation? Using revocation keys? Who owns them? Where to store?
 
9. Key management
 * extending expiration
 * key revocation
 * **TBD:** How to handle key if the owner (human) leaves the organisation? Using revocation keys? Who owns them? Where to store?
 
10. Which information should be public, restricted, confidential?
 * define owners of confidential information
 * define owners of restricted information
 * define owners of public information (at least all previous)
 * backup key: Executive Director, Chair of the Board

### Recommended tools
 * gnupgp, General command line tool
 * GPG4Win, Windows implementation
 * GPG suite, Mac OSX implementation
 * GPG tools. Mac OSX implementation
 * EnigMail, Mozilla Plugin (any platform)

### Next steps and milestones
 * review this draft document
 * to define tasks and ownership
 * setup the physical infrastructure
 * master- and primary key generation
 * review and finalizing guideline and policy
 * documentation
 * PR, making this known!
 
 ### Appendix A: OWASP GPG Policy
 * Request validation
 * Key owner description
 * Recoding key signing 
   * Key fingerprint, signing date, expiration date, signed by
 * Only the full key fingerprint is to be used at all times 
 * **TBD:** email validation for signing request
 * Official project deliverables, e.g. release of documents and sources, should be signed with the project’s technical key
 * Until the automated process is fully operational, signing with the project leader’s personal key is sufficient
 * **TBD:** Key validity:
   * 3-6 months, avoids revocation keys/lists/infrastructure
   * can be updated with "expire" options.
 * Algorithms and key-length for key-generation should be frequently, at least annually, be reviewed and determined (see implementation details)
 * Don’t use comment in key
 * Sign new keys with the old one.
 * **TBD:** generation, storage and usage of revocation keys
 * **TBD:** key management

#### Implementation details
 * Key type: **RSA**
 * Key length: 8k for master key / 4k for all the other key 
 * cert-digest-algo has to be **SHA512**
 * Do not use short IDs (8 character) alway use full keys to avoid collision attacks 
 * Example of an secure default configuration, e.g. .gnupg/gpg.conf:
```config
    no-greeting
    charset utf-8
    no-mangle-dos-filenames
    lock-once
 
    default-key deadbeefdeadbeef
    default-recipient-self

    personal-digest-preferences SHA512 SHA384 SHA256 SHA224
    personal-cipher-preferences AES256 AES192 AES
    personal-compress-preferences SHA512 SHA384 SHA256 SHA224
    cert-digest-algo SHA512
    default-preference-list SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB BZIP2 ZIP Uncompressed
    use-agent
    verify-options show-uid-validity
    no-comments
    no-emit-version
    keyid-format 0xlong
 ```

### Appendix B: Notes and Remarks
 * Possible privacy issue (being traceable) by using the personal key, therefore this should be up to the key owner.
 * Key type, RSA as DSA1 uses SHA1, DSA2 uses SHA2
 * Key length, most client should support up to 4k
 * A key can be invalidated just with the revocation key and without having the private key/password.
 * cert-digest-algo SHA512, default for PGP is MD5, for GPG SHA1, others may result in incompatibility when verifying key signatures; this is acceptable as we build a new PKI with new keys
 * RSA vs DSA2
   * pro RSA
     - More wide-spread, though not necessary in OpenPGP standard, all major implementations can deal with it; DSA2 not (yet)
     - Offers much faster signature checking
   * pro DSA2
     - Smaller signatures; for e-mail and code signing probably negligible
     - Faster key creation (think mobiles devices)
     - Slightly faster for signing

