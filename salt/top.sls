base:
  '*':
    - time
    - fail2ban.fail2ban

  'master':
    - master

  'roles:webserver':
    - match: grain
    - nginx.nginx
    - web-files.web-files
