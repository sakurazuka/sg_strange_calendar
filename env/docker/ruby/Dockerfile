FROM ruby:latest

RUN apt-get update &&\
    apt-get -y install git vim wget exa

# bundler
COPY ./src/Gemfile /root/src/Gemfile

# entrypoint
COPY ./env/docker/ruby/entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]

CMD ["bash"]

WORKDIR /root/src
