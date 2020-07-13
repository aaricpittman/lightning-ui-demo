FROM ruby:2.5.6-stretch

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install -y nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update && \
    apt install yarn

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]