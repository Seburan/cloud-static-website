#!/usr/bin/env bash

# this command will synchronize current folder with target s3 bucket
# --acl public-read will allow public read for new files
# --delete (boolean) Files that exist in the destination but not in the source are deleted during sync.
# --exclude "*" will exclude everything unless it is specified in --include
# --include the following file types : html, css, js, jpg, ico, eot, otf, svg, tff, woff, woff2
aws --profile site-admin@severin.jp s3 sync --acl public-read --delete --exclude "*" --include "*.html" --include "*.css" --include "*.js" --include "*.jpg" --include "*.ico" --include "*.eot" --include "*.otf" --include "*.svg" --include "*.ttf" --include "*.woff" --include "*.woff2" ./ s3://aws.severin.jp
