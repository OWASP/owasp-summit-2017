---
layout       : blocks/working-session
title        : TLS for Local IoT
type         : workshop
track        : DevSecOps
technology   : TLS,IoT
status       : done
when-day     : Mon
organizers   : kevsheldrake
participants : Francois Raynaud
---

The Internet of Things is not going away. Devices are typically low-powered, networked and require secure administration. SSL/TLS typically only works securely on the wider Internet due to the requirement for trustable end-point identification to bootstrap the trust model. This working session is to analyse the problem and propose solutions.

## Why

IoT devices require secure administration. Currently devices are typically administered using web protocols. Using plain HTTP is weak due to the problems of MITM of credentials and/or read/write data. Using HTTPS/SSL/TLS is problematic because it is currently difficult/impossible to trust the certificates provided by the IoT devices; e.g. a MITM attacker could establish a connection with the IoT device and serve a different certificate to the admin user, essentially decrypting/modifying/injecting traffic into the session.

Current solutions rely on pinned certificates (vulnerable on first use) or JS-based solutions over HTTP (vulnerable to MITM). Essentially the problem is related to how the admin user trusts the certificate provided by the device. Given that the devices are only identified by local IP addresses it is difficult/impossible to create a certificate authority to solve the problem in the same manner as used on the wider Internet.

## What

Analyse the problem of secure administration of IoT devices and propose solutions. This could involve additions to the SSL/TLS suite to address local trust; it could also involve methods for trusted identification of end-points; equally it could approach the problem from the perspective of a local certificate authority. Ultimately, the administrator's web browser (or other software) needs to ensure that it is communicating with the device and not with a MITM attacker.  Proposals should address personal computers and mobile/tablet use cases equally.

## Who

 - IoT:
   - vendors,
   - security consultants,
   - security architects
 - penetration testers
 - risk managers
 - cryptographers
 - PKI enthusiasts.

## References and Comments

 - _"TLS is a poor suggestion for IoT, and I personally wouldn't advise creating recommendations toward using it. Better recs in near future."_ - see [twitter thread](https://twitter.com/DonAndrewBailey/status/858719418813120512) for more comments
