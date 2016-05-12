# docker-varnish

docker run -d -p 6081:6081 6082:6082 -v default.vcl:/etc/varnish/default.vcl:ro image_id
