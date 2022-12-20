#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo "gem: --no-document" > ~/.gemrc

echo 'gem install bundler' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
gem install bundler >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo 'gem env home' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
gem env home >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo 'rbenv rehash' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
rbenv rehash >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo 'bundle install' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
bundle install >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo 'rbenv rehash' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
rbenv rehash >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log

echo 'rails s -p 3000 -b 0.0.0.0' >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log
rails s -p 3000 -b 0.0.0.0 >> /home/ec2-user/Relic-poc-test-app-rails-cd-v1/deploy.log




