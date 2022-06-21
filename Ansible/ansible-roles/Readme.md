# Steps followed to install tomcat on node machine with ansible roles

Step#1
------
Initializzation of ansible role using command "ansible-galaxy init tomcat".

It will create a directory tomcat and inside that i will create a structure for writing yml files.

Step#2
------
After that we need to create a ansible.cfg file which contains inventory and forks configuration.

[defaults]
inventory = hosts
host_key_checking = false
fork = 2

Step#3
------
Next we have created the hosts file where all the node server ip/hostname is present

[nodes]
ansiblenode
ansiblenode1

Step#4
------
Next we have to go inside tomcat/tasks directory and create a new yml file named "install-jdk.yml" to install JDk on node machine.

---
- name: Install Java
  apt:
    name: openjdk-11-jdk-headless

Inside the same directory in main.yml file we call install-jdk.yml file because by default it runs main.yml file. 

---
# tasks file for tomcat
# Calling install-jdk.yml file from here
- import_tasks: install-jdk.yml

Step#5
------
Come out of the tomcat directory and create a file main.yml which contains the hosts and called the roles tomcat

---
-
  hosts: nodes
  roles:
    - tomcat

