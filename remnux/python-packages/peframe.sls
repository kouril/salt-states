# Name: PEframe
# Website: https://github.com/guelfoweb/peframe
# Description: Statically analyze PE and Microsoft Office files.
# Category: Examine Static Properties: PE Files
# Author: Gianni Amato: https://twitter.com/guelfoweb
# License: Free, unknown license
# Notes: peframe

include:
  - remnux.packages.git
  - remnux.packages.libssl-dev
  - remnux.packages.swig
  - remnux.packages.python3-pip
  - remnux.packages.python-pip

remnux-python-packages-peframe:
  pip.installed:
    - name: git+https://github.com/guelfoweb/peframe.git@master
    - upgrade: True
    - bin_env: /usr/bin/python3
    - require:
      - sls: remnux.packages.git
      - sls: remnux.packages.libssl-dev
      - sls: remnux.packages.swig
      - sls: remnux.packages.python3-pip