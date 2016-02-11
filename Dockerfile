FROM rails:4.2.5.1
MAINTAINER SENDA Keijiro

RUN mkdir -p /var/www/rails-chat
COPY . /var/www/rails-chat/

WORKDIR /var/www/rails-chat
RUN bundle install

EXPOSE 3000

CMD ["rails","s","-b","0.0.0.0"]
