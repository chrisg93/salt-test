/srv/www:
  file.recurse:
    - source: salt://web-files/src
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 755
    - clean: True

