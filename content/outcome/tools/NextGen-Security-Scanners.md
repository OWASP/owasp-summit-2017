* Discussed the main challenges of current scanners when scanning new types of apps:
  *	Heavy usage of JS (SPA)
  * Browser vendors should expose more APIs to allow third parties to access the engine's internals
  * HTML5 (web messaging, web sockets, webrtc, web workers, etc)
  * APIs
  * Scanners be aware of the context
     - frameworks being used and run targeted tests to those frameworks
     - what kind of page they are scanning (login, register, etc)
* What pentesters/developers would like to see in next gen scanners:
  * Efficient way of Reporting False Negatives / False Positives
  * Automatic detection of login pages
  * Easy way to write plugins/tests
  * Improve efficiency in scanning (if MySQL is detected, don't run tests against MSSQL)
  * Detect different types of vulnerabilities (privilege escalation, missing access control)
  * Better scanning of APIsddd
  * Tools exposing more APIsdsa
* DAST vs SAST vs IAST
  *	each one has their place
  *	It would be good to map URLs to source code
