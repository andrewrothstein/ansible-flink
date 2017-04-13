[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-flink.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-flink)
andrewrothstein.flink
=========

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
