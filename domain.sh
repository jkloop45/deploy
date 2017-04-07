sudo tee /etc/nginx/conf.d/api.gospely.com.conf <<- 'EOF'
upstream nodejs__upstream_gospely_api {
        server 127.0.0.1:9999;
        keepalive 64;
}

server {
        listen 80;
        server_name www.api.gospely.com api.gospely.com;
        #access_log /var/log/nginx/moiveme.log;
        location / {
          proxy_set_header   X-Real-IP            $remote_addr;
          proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
          proxy_set_header   Host                   $http_host;
          proxy_set_header   X-NginX-Proxy    true;
          proxy_set_header   Connection "";
          proxy_http_version 1.1;
          proxy_pass         http://nodejs__upstream_gospely_api;
        }
}
EOF

sudo tee /etc/nginx/conf.d/dash.gospely.com.conf <<- 'EOF'
upstream nodejs__upstream_gospely_dash {
        server 127.0.0.1:9998;
        keepalive 64;
}

server {
        listen 80;
        server_name www.dash.gospely.com dash.gospely.com;
        #access_log /var/log/nginx/moiveme.log;
        location / {
          proxy_set_header   X-Real-IP            $remote_addr;
          proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
          proxy_set_header   Host                   $http_host;
          proxy_set_header   X-NginX-Proxy    true;
          proxy_set_header   Connection "";
          proxy_http_version 1.1;
          proxy_pass         http://nodejs__upstream_gospely_dash;
        }
}
EOF

sudo tee /etc/nginx/conf.d/ide.gospely.com.conf <<- 'EOF'
upstream nodejs__upstream_gospely_ide {
        server 127.0.0.1:9996;
        keepalive 64;
}

server {
        listen 80;
        server_name www.ide.gospely.com ide.gospely.com;
        #access_log /var/log/nginx/moiveme.log;
        location / {
          proxy_set_header   X-Real-IP            $remote_addr;
          proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
          proxy_set_header   Host                   $http_host;
          proxy_set_header   X-NginX-Proxy    true;
          proxy_set_header   Connection "";
          proxy_http_version 1.1;
          proxy_pass         http://nodejs__upstream_gospely_ide;
        }
}
EOF

sudo tee /etc/nginx/conf.d/gospely.com.conf <<- 'EOF'
server {

  listen 80;

  server_name gospely.com www.gospely.com;

  location / {

    root /var/www/gospely/index;

    index index.html;

  }

  location ~ /.ht {

    deny all;

  }

}
EOF
