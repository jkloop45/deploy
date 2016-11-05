# pull images
docker pull sameersbn/gitlab:8.13.2
docker pull   sameersbn/postgresql:latest
docker pull sameersbn/redis:latest

# make file
mkdir /var/www/gitlab
mkdir /var/www/gitlab/data
mkdir /var/www/postgresql
mkdir /var/www/postgresql/data



docker run --name gitlab-postgresql -d \
    --env 'DB_NAME=gitlabhq_production' \
    --env 'DB_USER=gitlab' --env 'DB_PASS=password' \
    --env 'DB_EXTENSION=pg_trgm' \
    --volume //var/www/gitlab/data:/var/lib/postgresql \
    sameersbn/postgresql:9.5-3
#Step 2. Launch a redis container

docker run --name gitlab-redis -d \
    --volume /srv/docker/gitlab/redis:/var/lib/redis \
    sameersbn/redis:latest
#Step 3. Launch the gitlab container

docker run --name gitlab -d \
    --link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
    --publish 10022:22 --publish 10080:80 \
    --env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
    --env 'GITLAB_SECRETS_DB_KEY_BASE=long-and-random-alpha-numeric-string' \
    --env 'GITLAB_SECRETS_SECRET_KEY_BASE=long-and-random-alpha-numeric-string' \
    --env 'GITLAB_SECRETS_OTP_KEY_BASE=long-and-random-alpha-numeric-string' \
    --volume /var/www/mysql/data:/home/git/data \
    sameersbn/gitlab:8.13.2
