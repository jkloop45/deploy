sudo tee /etc/yum.repos.d/dag.repo <<-'EOF'
[dag]
name=Dag RPM Repository for RHEL4
baseurl=http://ftp.riken.jp/Linux/dag/redhat/el4/en/$basearch/dag/
enabled=1
gpgcheck=0
EOF
yum update --skip-broken
