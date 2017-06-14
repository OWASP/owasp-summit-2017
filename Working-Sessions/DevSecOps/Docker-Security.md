---
layout        : blocks/working-session
title         : Docker Security
type          : workshop
owasp-project : no
track         : DevSecOps
technology    :
status        : done
when-day      : Fri
when-time     : PM-2
location      : Room-1
room-layout   : 
organizers    : Timo Pagel
participants  : Johan Peeters,Francois Raynaud

---

As DevOps become more and more popular, fewer businesses can avoid the use of containers. Containers make deploying servers and services easier and more efficient. Today, one of the most popular container platforms is Docker, which eliminates the “works on my machine” problems that can occur when working on code with a team. 

## Why

People reading about Docker security can get the impression that Docker is completely insecure, and that is should not be used for production. Although there are several security issues relating to using containers, Docker, at least when it is properly used, provides a much safer and more efficient system than VMs (Virtual Machines) or bare metal.
However users should still be aware of the potential security risks that can arise from using Docker containers.
This Working Session will focus on the most common issues regarding Docker security, and techniques for properly securing container-based systems.

## What

While there are several security issues which show up when reviewing Docker security, the following four are identified as the most important ones:
- The intrinsic security of the kernel and its support for namespaces and cgroups
- The attack surface of the Docker daemon
- Loopholes in the container configuration profile, either by default, or when customized by users
- The “hardening” security features of the kernel and how they interact with containers

## Outcomes

The outcome of this Working Session will be a document which summarizes the most common security concerns when using Docker and practical advice on how to protect from them.

## Who
- Docker Security Experts
- Docker users who wish to learn more

## References

 - <a href="https://twitter.com/bpedro/status/859862631921987586">Twitter @letsencrypt + @docker + resty-auto-ssl</a>
 <a href="https://d3oypxn00j2a10.cloudfront.net/assets/img/Docker%20Security/WP_Intro_to_container_security_03.20.2015.pdf">White Paper about container security</a>
- <a href="https://docs.docker.com/engine/security/security/">Docker Security</a>
- <a href="https://github.com/docker/docker">Docker Download</a>

## Working materials

Here are the current 'work in progress' materials for this session.

### Content

Architectures based on microservices have different requirements on how applications are developed, deployed, and managed during their lifecycle. This means that security models that support them must change, as well. Security must be layered in a way that will address the complete infrastructure and will often combine different technologies to ensure each layer is adequately protected. 
Here, Docker simplifies the whole process and brings tangible benefits in terms of development and deployment but also in terms of security. By isolating themselves without the need for using resources and reducing the host´s surface area, containers give an additional layer of security. In cases where an attacker gains access to one of the containers, he should not have the ability to gain access to the host or other containers since the containers are not namespaced. However, if a user is root in the container, that user will be root on the host  which results in a potential privilege escalation attack.

More information: <a href="https://www.oreilly.com/ideas/five-security-concerns-when-using-docker">Most common issues when using Docker</a>

