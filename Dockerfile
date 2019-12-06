# What version of Ruby we're working with
FROM ruby:2.6.5
# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# Create working directories, customized the path
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
# Deal with Bundler
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
# Got "missing bundler" message -- so we need to install a bundler!
RUN gem install bundler
RUN bundle install
# Copy folder into the Docker image
COPY . /usr/src/app
# Add an entrypoint script -- to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
