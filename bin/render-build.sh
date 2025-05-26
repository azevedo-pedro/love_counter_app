#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -o errexit

# Install gems
bundle install

# Precompile assets (if you have frontend assets)
RAILS_ENV=production bundle exec rails assets:precompile

# **** CRITICAL: Run database migrations ****
# This will create the 'solid_queue_jobs' table and other necessary tables.
RAILS_ENV=production bundle exec rails db:migrate

# Any other post-build steps (e.g., seeding data, etc.)
# RAILS_ENV=production bundle exec rails db:seed # Optional, if you have seed data