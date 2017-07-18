# hathix.com

Code for my website, [hathix.com](http://hathix.com). Feel free to borrow relevant parts.

## Building

Once you've cloned the repo, run the following in your terminal. You'll need to have Ruby installed (it's pre-installed on macOS and most Linux distributions.)

```
sudo gem install bundler
bundle install
```

To run the app, run this in your terminal:

```
bundle exec jekyll serve
```

Then open up <http://127.0.0.1:4000> in your browser to view the site.

### Deployment

To deploy the website, first run `bundle exec jekyll build`. Then copy the `_site` directory to your server or run `deploy.sh`, remembering to install [duck.sh](https://duck.sh) and to change the FTP URL to that of your own site.

## Libraries/tools used:

- Jekyll
- AngularJS
- Bootstrap
- jQuery
- Underscore
