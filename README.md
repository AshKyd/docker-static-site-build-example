# Example static site docker build & serve config
I made this because Coolify wasn't quite giving me enough flexibility.

This dockerfile will:

1. build your npm packages (make sure this Dockerfile is in the same folder as your package.json)
2. serve your site with nginx over http

You must:
1. add a proxy or CDN like Coolify or Cloudflare in front to add SSL

The nginx config files in the `docker/` folder aren't strictly necessary, but I wanted to add some redirects and enable gzip compression properly.
