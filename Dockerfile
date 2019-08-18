FROM ruby:2.6

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /blog/                                                                                                          
COPY Gemfile jarredvardy-blog.gemspec ./
RUN gem install bundler
RUN bundle update                                                                                                      
RUN bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve"]