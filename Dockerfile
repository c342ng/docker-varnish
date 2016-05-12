FROM debian:jessie
RUN curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - \
	&& echo "deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1" >> /etc/apt/sources.list.d/varnish-cache.list \
	&& apt-get update \
	&& apt-get install -y varnish vim curl \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["service","varnish","start"]
