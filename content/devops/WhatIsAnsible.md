+++
title = '1. What is Ansible?'
description = 'This is a test file in the devops folder'
+++

{{< section >}}
Ansible is an open-source automation tool that automates software provisioning, configuration management,
and application deployment. It uses a simple YAML-based language to define tasks and workflows, and it can be run
on Linux, macOS, and Windows systems. Ansible is agentless, which means it does not require any software to be installed
on the remote systems it manages. It is designed to be easy to use and has a large and active community of users and developers.

It works by using a declarative language to describe the desired state of the system, and then Ansible uses a series of 
modules to make the necessary changes to bring the system into that state. Ansible uses a master-agent architecture, 
where the control node (known as "master" in older terms) sends commands to the agents (also known as the managed nodes)
to perform tasks. Ansible uses SSH to communicate with the managed nodes, and it can also use other protocols such as 
WinRM for Windows systems.

Let’s highlight some of Ansible's best-selling features:
- Agentless: Only SSH and Python are required to be installed on the agent systems.
- Push: The controller takes the initiative. It connects, runs a small Python program (known as a module) and
reads the JSON result.
- Idempotent: A task in a completed state will not be re-executed. Even if ran ten times over. In the output this will
be shown as a green "ok" instead of a yellow "changed"

Let's have a quick look at the glossary Ansible uses to be able to understand the terminology used in the documentation.
 - Control Node – It is the machine on which Ansible is runs. (The controller, Debian13 VM)
 - Managed Node – A machine that Ansible manages. (web1, web2)
 - Inventory – A list of hosts and groups. (inventory/hosts)
 - Module – One unit of work, for example, installing a package. (ansible.builtin.apt)
 - Task – A module with parameters and a name (e.g.: Install nginx)
 - Play – Connects hosts to tasks or roles. (hosts: nginx_servers)
 - Playbook – A file with one more plays (site.yml)
 - Role – Reusable set of tasks, templates, handlers, and defaults. (roles/nginx)
 - Facts – Data about the managed node, such as the operating system, IP address, and other information. (ansible_facts['hostname''])
 - Collection – Package with modules and rules from a provider (e.g.: ansible.posix)
{{< /section >}}