# Builds and deploys the app to app.getcabra.com.
# Run this after running "jekyll build".
# From root of project, run "./deploy.sh".
bundle exec jekyll build
yes overwrite | duck \
    --upload ftp://hathix5@ftp.hathix.com/public_html _site \
    -assumeyes
