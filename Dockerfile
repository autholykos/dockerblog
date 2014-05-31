FROM autholykos/blog-base
MAINTAINER Emanuele Francioni "emanuele@beestar.eu"

# Delete the default server block of nginx
RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/
ADD blog.conf /etc/nginx/conf.d/

# Let's put ourselves in the working directory
RUN mkdir -p /var/www
WORKDIR /var/www/

# Pull the blog. Since it is on a public git repository we don't need key exchange, but in case you want to host your blog in a private repo, keep in
RUN git clone https://github.com/autholykos/blog.git

# Build the blog
#WORKDIR /var/www/blog/
#RUN make html

# Expose the right port
EXPOSE 80

# Restart Nginx
CMD service nginx restart
