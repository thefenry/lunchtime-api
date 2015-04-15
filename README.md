# Lunchtime
G2 engineers love to go out to lunch together. Its where we can talk across project
teams about the problems we are facing and the solutions we have used. Its a time
to decompress and be collaborative. However, deciding on where to go can often be
difficult. This web application keeps a list of our favorite local restaurants
and allows engineers to vote on where to go for lunch today.

## What is this really?
This is a sample application we use as part of our interview process and sometimes
on-boarding process for new engineers. You will be given a ticket from the issue
tracker, which will describe some feature to implement.

# Contributing

1. A Github ticket will be given to you describing the behavior to implement.
2. Fork this repository into your own repository.
3. Impelement the ticket using software engineering best practices. Take your time and focus on quality; you are *not* being timed.
4. Send a pull request when you are ready for review.


# Setup

    git clone ...
    cd lunchtime
    bundle

## Development environment

    bundle exec rake db:migrate
    bundle exec rake db:seed

    # Start the server
    bundle exec rails server

## Test environment

    RAILS_ENV=test bundle exec rake db:schema:load

    # Run the tests
    bundle exec rake test
