---
layout  : blocks/outcome
title	: TLS for Local IoT
---

### Outcomes

Developed roadmap for TLS-SRP implementation and adoption.

The roadmap will include:
- Roadmap for web server implementations - community projects? liaison with web server vendors?
- Roadmap for web browser implementations - community projects? liaison with web browser vendors?
- Roadmap for IoT and embedded vendor adoption - publicity? industry liaison?
 
 --- 
 
### Working materials

### Proposal

Develop a roadmap to fully implement and adopt Transport Layer Security - Secure Remote Password (TLS-SRP).  Other approaches can be considered, but TLS-SRP appears to meet the requirements if it is implemented correctly. TLS-SRP lends itself to user credentials better than TLS-PSK (lower entropy requirements), it is built on established crypto principles, and it is already implemented in some required components.

Cloud-based servers could be used to administer IoT devices, through local configuration of local network access by audio, Bluetooth, or light-based protocols from a mobile device, followed by secure connections to the cloud server by both the device and the administration web browser, with control/configuration relayed between the two. However, this is a costly option for many vendors and only works while internet access can be provided to the device and while the cloud service is maintained.  This may become the norm in the future but, for now, many devices support local web admin interfaces and these cannot be secured with traditional TLS.

### Proposed Approach

To use TLS-SRP in IoT and embedded spaces, we will need:

- TLS-SRP implemented in embedded web servers, such as lighttpd (https://www.lighttpd.net/) and GoAhead (https://embedthis.com/goahead/).
- TLS-SRP implemented in web browsers, such as Chrome (boringssl), Firefox (NSS) and Internet Explorer, plus mobile versions of the same.
- IoT and embedded vendor adoption.

Implementations in the web servers will largely take the form of patches to the web server software to allow them to use the functionality that already exists within the libraries.

Implementations in the web browsers will require:

- Patches to the TLS libraries (boringssl and NSS).
- Patches to the web browsers to use the new functionality.
- A UI design that enables its use - this will likely involve a browser authentication window, a different coloured padlock (to indicate to the user that the connection is SRP and not traditional TLS) plus a logout button (to destroy the locally held credentials and close/reset the browser windows).

Implementations in the admin web interfaces will require some form of transitional functionality to cover the period where the embedded web servers implement TLS-SRP but the user browsers do not.  If the admin credentials are required during TLS negotiation for SRP, but after negotiation for traditional TLS (login page), then it might be tricky to implement these on the same TLS server, depending on web server support.  In these cases, the web server might need to support TLS-SRP on one port (with no traditional TLS fallback on that port) and traditional TLS on a separate port (if deemed desirable).

Suggestions include:

- Plain HTTP on port 80, TLS-SRP HTTPS on port 443; no traditional TLS as it makes no sense.
- Browser sniffing on HTTP (port 80) with redirects to TLS-SRP HTTPS on port 443 for browsers that support it, or plain HTTP on port 80 for browsers that don't, with a message to the user about browser security.
- Browser sniffing on HTTP (port 80) with redirects to TLS-SRP HTTPS on one port (442?) for browsers that support it, or traditional (insecure in this environment) TLS on port 443 for browsers that don't.  These ports could be reversed in the future after browser adoption and transition.
- Server side scripts to identify if browser successfully negotiated SRP with redirect to login page if not.

Once implemented, IoT and embedded vendors will need to be encouraged to use TLS-SRP over traditional TLS for web admin security.

### Supporting files

Over on https://github.com/rtfcode/tls-srp I have created some supporting info for test/dev:
* Apache configuration for a TLS-SRP vhost - I know Apache isn't very IoT but it's just a demo.
  * httpd.conf.diff - two changes to your apache config.
  * httpd-srp.conf - a vhost config using gnutls_module.
  * index.shtml - basic index that reports SRP username.
* stunnel-5.41-srp.patch - patch to implement client/server SRP in stunnel - useful for testing.
* stunnel - configs to use the patched stunnel.
  * http2srp.conf - use a normal browser with a TLS-SRP server.
  * srp2http.conf - use a TLS-SRP browser with a normal server.
  * password.srpv - SRP verifier file for server end of stunnel.
* README.txt - a concise description of all these files and how to make them work.

Using these files/configs, it is possible to turn a non-SRP web server into a SRP web server; simply bind your web server to loopback and run a srp2http stunnel to present TLS-SRP to the network and connect to the web server locally.

Equally, it is possible to make a web browser appear TLS-SRP enabled to test a TLS-SRP web server implementation; simply run a http2srp stunnel on your desktop and point your browser at that instead of directly at the web server

 ---

### Roadmap

Kev Sheldrake will progress building a demonstration system and will endeavor to present the outcomes of this workshop at other events - IoTSF in December 2017 being one candidate, but we will consider all other options. Kev will then utilise OWASP contacts to open discussions with browser devs.  Kev will endeavor to encourage initiation of IoT vendor adoption.

#### Step 1 - produce demos for discussion:

  - Produce a demo mobile app that implements TLS-SRP on top of a web view (webkit or similar) for configuring TLS-SRP IoT devices.
  - Identify or produce TLS-SRP browser extensions to allow browsers to access TLS-SRP IoT devices, for demonstration purposes.
  - Build demo IoT device (likely on Raspberry Pi) that utilises TLS-SRP for secure web admin.
  - Build web site dedicated to the 'TLS-SRP for IoT solution'; should aim at encouraging discussion, access to open source via GitHub, solicit support from individuals and organisations.
  
#### Step 2 - publicise demos:

  - Take demos to IoT, browser and security conferences to publicise efforts.
  - Find vendor-neutral organisations willing to brand/push the step 1 demos to encourage discussions with browser and IoT vendors.  OWASP and IoTSF could be first candidates.
  
#### Step 3 - from demos to capability:

  - Build IoT TLS-SRP reference design / implementation.  Initial design will use stunnel-srp to front web server
  - Use OWASP contacts to open discussions with browser devs and W3C
  - Design (in conjunction with browser devs) a suitable browser UI to support TLS-SRP - login box, logout, identification that connection is TLS-SRP (in URL bar perhaps)

Progress will be reported via the web site built during Step 1.  People and organisations will be able to join and support efforts via the web site and GitHub.  If appropriate, OWASP could 'own' the project to give it a home and suitable publicity.  This roadmap is the first draft and all interested parties are encouraged to develop it further.
