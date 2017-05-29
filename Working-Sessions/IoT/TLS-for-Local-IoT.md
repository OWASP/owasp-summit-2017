---
layout       : blocks/working-session
title        : TLS for Local IoT
type         : workshop
track        : DevSecOps
technology   : TLS,IoT
status       : done
when-day     : Mon
organizers   : Kevin Sheldrake
participants : Francois Raynaud
---

The Internet of Things is not going away. Devices are typically low-powered, networked, and require secure administration. SSL/TLS typically only works securely on the wider internet due to the requirement for trustable end-point identification to bootstrap the trust model. This working session aims to analyse the problem and propose solutions.

## Why

IoT devices require secure administration. Currently devices are typically administered using web protocols. Using plain HTTP is weak due to the problems of MITM credentials and/or read/write data. Using HTTPS/SSL/TLS is problematic because it is currently difficult, if not impossible, to trust the certificates provided by the IoT devices; e.g. a MITM attacker could establish a connection with the IoT device and serve a different certificate to the admin user, essentially decrypting, modifying, or injecting traffic into the session.

Current solutions rely on pinned certificates that are vulnerable on first use, or JS-based solutions over HTTP that are vulnerable to MITM. Essentially, the problem relates to how the admin user trusts the certificate provided by the device. Given that the devices are only identified by local IP addresses, it is difficult or impossible to create a certificate authority to solve the problem in the same manner used on the wider Internet.

## What

The session will analyse the problem of secure administration of IoT devices and propose solutions. This could involve additions to the SSL/TLS suite to address local trust; it could also involve methods for trusted identification of end-points; equally it could approach the problem from the perspective of a local certificate authority. Ultimately, the administrator's web browser (or other software) needs to ensure that it is communicating with the device and not with a MITM attacker.  Proposals should address personal computers and mobile/tablet use cases equally.

## Who

The target audience for this Working Session is:

 - IoT:
   - vendors,
   - security consultants,
   - security architects
 - Penetration testers
 - Risk managers
 - Cryptographers
 - PKI enthusiasts.

## References and Comments

 - _"TLS is a poor suggestion for IoT, and I personally wouldn't advise creating recommendations toward using it. Better recs in near future."_ - see [twitter thread](https://twitter.com/DonAndrewBailey/status/858719418813120512) for more comments.

## Proposal

Develop a roadmap for the full implementation and adoption of Transport Layer Security - Secure Remote Password (TLS-SRP).  Other approaches can be considered, but TLS-SRP appears to meet the requirements if it is implemented correctly.  It lends itself to user credentials better than TLS-PSK (lower entropy requirements), is built on established crypto principles, and is already implemented in some required components.

While cloud-based servers could be used to administer IoT devices - local configuration of local network access by audio, bluetooth or light-based protocols from a mobile device, followed by secure connections to the cloud server by both the device and the administration web browser, with control/configuration relayed between the two - this is a costly option for many vendors and only works while Internet access can be provided to the device and while the cloud service is still maintained.  This may become the norm in the future but, for now, many devices support local web admin interfaces and these cannot be secured with traditional TLS.

## Background

SRP (Secure Remote Password) is a secure password-based authentication and key-exchange protocol, defined here: http://srp.stanford.edu/whatisit.html .  Versions 6 and 6a are the latest versions.  The protocol is based on the discrete logarithm problem and defends against eavesdropping and man-in-the-middle attacks.  The security is derived from a shared password known to both the user/client and the server.

TLS-SRP is already implemented in: the OpenSSL and GnuTLS libraries; the Apache web server (mod_ssl and mod_gnutls); and the curl web transfer agent.

Default user credentials are already per-device for a number of IoT and embedded products, with the credentials printed on the bottom/back of the device or included with the user documentation.

## Proposed Approach

To use TLS-SRP in IoT and embedded spaces, we will need:
* TLS-SRP implemented in embedded web servers, such as lighttpd (https://www.lighttpd.net/) and GoAhead (https://embedthis.com/goahead/).
* TLS-SRP implemented in web browsers, such as Chrome (boringssl), Firefox (NSS) and Internet Explorer, plus mobile versions of the same.
* IoT and embedded vendor adoption.

Implementations in the web servers will largely take the form of patches to the web server software to allow them to make use of the functionality already existing within the libraries.

Implementations in the web browsers will require:
* patches to the TLS libraries (boringssl and NSS).
* patches to the web browsers to use the new functionality.
* a UI design that enables its use - this will likely involve a browser authentication window, a different coloured padlock (to indicate to the user that the connection is SRP and not traditional TLS) plus a logout button (to destroy the locally held credentials and close/reset the browser windows).

Implementations in the admin web interfaces will require some form of transitional functionality to cover the period where the embedded web servers implement TLS-SRP but the user browsers do not.  If the admin credentials are required during TLS negotiation for SRP, but after negotiation for traditional TLS (login page), then it might be tricky to implement these on the same TLS server, depending on web server support.  In these cases, the web server might need to support TLS-SRP on one port (with no traditional TLS fallback on that port) and traditional TLS on a separate port (if deemed desirable).

Suggestions include:
* Plain HTTP on port 80, TLS-SRP HTTPS on port 443; no traditional TLS as it makes no sense.
* Browser sniffing on HTTP (port 80) with redirects to TLS-SRP HTTPS on port 443 for browsers that support it, or plain HTTP on port 80 for browsers that don't, with a message to the user about browser security.
* Browser sniffing on HTTP (port 80) with redirects to TLS-SRP HTTPS on one port (442?) for browsers that support it, or traditional (insecure in this environment) TLS on port 443 for browsers that don't.  These ports could be reversed in the future after browser adoption and transition.
* Server side scripts to identify if browser successfully negotiated SRP with redirect to login page if not.

Once implemented, IoT and embedded vendors will need to be encouraged to use TLS-SRP over traditional TLS for web admin security.

## Definition of Done

Developed roadmap for TLS-SRP implementation and adoption.

This will include:
* Roadmap for web server implementations - community projects? liasion with web server vendors?
* Roadmap for web browser implementations - community projects? liasion with web browser vendors?
* Roadmap for IoT and embedded vendor adoption - publicity? industry liasion?
