---
title	  : Docker Security
---

### Outcome

A document which summarizes the most common security concerns when using Docker, and gives practical advice on suitable safeguards.

### Synopsis and Takeaways

General Security recommendations should be addressed and links should be shared.

#### General Docker Security Considerations

- Docker has a shared kernel with host
- Do not run containers as privileged if not needed
- Review of Dockerfiles
  - A user is added as which the application runs
  - Credentials in the Dockerfile
  - Exposing unnecessary ports
- Patch management
- Limits
- Secrets management?
- Tools
  - Scanning of images/containers for components with known vulnerabilities
  - Benchmark of a Dockerfile

#### Work in Progress

https://docs.google.com/a/owasp.org/document/d/1_71svrCpC40S30kj9j0Hb3RnXaVsz8koD4EbZuSo5HQ/edit?usp=sharing
A Slack Channel will be created for further communication.

### References

 - <a href="https://twitter.com/bpedro/status/859862631921987586">Twitter @letsencrypt + @docker + resty-auto-ssl</a>
 <a href="https://d3oypxn00j2a10.cloudfront.net/assets/img/Docker%20Security/WP_Intro_to_container_security_03.20.2015.pdf">White Paper about container security</a>
- <a href="https://docs.docker.com/engine/security/security/">Docker Security</a>
- <a href="https://github.com/docker/docker">Docker Download</a>

### Working materials

Here are the current 'work in progress' materials for this session.

### Content

Architectures based on microservices have different requirements for how applications are developed, deployed, and managed during their lifecycle. This means that security models that support development, deployment, and management must adapt to the different requirements. Security must be layered in a way that will address the complete infrastructure and will often combine different technologies to ensure each layer is adequately protected. 

Docker simplifies the whole process and brings tangible benefits in terms of development and deployment, but also in terms of security. Containers give an additional layer of security by isolating themselves without the need to use resources and reduce the host´s surface area. In cases where an attacker gains access to one of the containers, they should be unable to access the host or other containers since the containers are not namespaced. However, if a user is root in the container, that user will be root on the host, which will result in a potential privilege escalation attack.

More information: <a href="https://www.oreilly.com/ideas/five-security-concerns-when-using-docker">Most common issues when using Docker</a>

