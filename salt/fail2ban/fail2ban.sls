fail2ban:
  pkg.installed:
    - refresh: True
    - name: fail2ban

  service:
    - running
    - enable: True
    - watch:
      - pkg: fail2ban
      - file: /etc/fail2ban/fail2ban.conf
      - file: /etc/fail2ban/jail.conf

/etc/fail2ban/fail2ban.conf:
  file.managed:
    - name: /etc/fail2ban/fail2ban.conf
    - source: salt://fail2ban/fail2ban.conf
    
/etc/fail2ban/jail.conf:
  file.managed:
    - name: /etc/fail2ban/jail.conf
    - source: salt://fail2ban/jail.conf

