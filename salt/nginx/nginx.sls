nginx:
  pkg.installed:
    - refresh: True
    - name: nginx

  service:
    - running
    - enable: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default
  
/etc/nginx/nginx.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf

/etc/nginx/sites-available/default:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://nginx/sites-available/default
    - template: jinja
