andrewrothstein.flink
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-flink.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-flink)

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
