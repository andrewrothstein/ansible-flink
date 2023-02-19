andrewrothstein.flink
=========
![Build Status](https://github.com/andrewrothstein/ansible-flink/actions/workflows/build.yml/badge.svg)

Installs [Apache Flink](https://flink.apache.org/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.flink
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
