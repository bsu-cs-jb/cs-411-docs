#!/usr/bin/env bash

JEKYLL_ENV=dev bundle exec jekyll serve -l --unpublished "$@"
