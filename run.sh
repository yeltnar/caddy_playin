docker rm /caddy

docker run -d \
-p 81:80 -p 444:443 -p 8877:2022 -p 8123:8123 \
-v $PWD/caddy/data:/data \
-v $PWD/caddy/config:/config \
-v $PWD/caddy/Caddyfile:/etc/caddy/Caddyfile \
--name caddy \
 caddy

