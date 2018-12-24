#! /bin/bash

source $(dirname (which rvm)/../../script/rvm)
bundle install
bundle update
bundle exec jekyll serve --detach