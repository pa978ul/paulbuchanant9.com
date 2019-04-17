FROM ubuntu:18.10
MAINTAINER Paul Buchanan <paulbuchanant9@gmail.com>

# Update everything
RUN apt-get update
RUN apt-get upgrade -y

# Install required system packages
RUN apt install -y build-essential libffi-dev ruby2.5-dev zlib1g-dev libxml2-dev

# Make a /website folder and move into it. This is where we'll copy all the
# files.
RUN mkdir /website
WORKDIR /website

# These files specify all ruby dependencies we need to install for jekyll.
COPY Gemfile Gemfile.lock ./

# Install the version of bundler specified in Gemfile.lock
RUN gem install bundler -v 1.16.1

# Install jekyll and all of its required dependencies. These are specified in
# the "Gemfile" and "Gemfile.lock" files.
RUN bundle install

# Copy all website files
COPY *.html *.xml *.txt *.yml ./
COPY _includes/ _includes/
COPY _layouts/ _layouts/
COPY _posts/ _posts/
COPY assets/ assets/
COPY static/ static/

# Run jekyll server on port 3000
EXPOSE 3000
CMD ["jekyll", "serve", "--host=0.0.0.0", "--port=3000"]
