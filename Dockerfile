# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install any needed gems specified in Gemfile
RUN bundle install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Run database migrations
RUN rails db:migrate

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run on container start
CMD ["rails", "server", "-b", "0.0.0.0"]

