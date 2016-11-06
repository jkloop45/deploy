mkdir /var/www/dodora
git clone https://github.com/dodora/index /var/www/dodora/index

sudo tee /etc/nginx/conf.d/dodora.cn.conf <<- 'EOF'
server {
  
  listen 80; 

  server_name dodora.cn www.dodora.cn;

  location / { 
    
    root /var/www/dodora/index;

    index index.html;

  }
  
  location ~ /.ht {
    
    deny all;

  }

}
EOF