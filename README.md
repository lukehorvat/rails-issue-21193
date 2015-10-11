# rails-issue-21193

Firstly, install Docker.

Then execute the following commands:

```bash
$ git clone git@github.com:lukehorvat/rails-issue-21193.git
$ cd rails-issue-21193
$ docker build -t rails-issue-21193 .
$ docker run -p 9000:9000 -d rails-issue-21193
```

If everything is set up properly, you should see a welcome message from nginx when you navigate to `http://<host-ip>:9000/` in a web browser.

Next, navigate to `http://<host-ip>:9000/app/`, which is the subdirectory where the Rails app is hosted. Immediately, you'll notice that it redirects to `http://<host-ip>:9000/ui/`. But based on the configuration in [routes.rb](config/routes.rb), it really _should_ redirect to `http://<host-ip>:9000/app/ui/` instead.

Bug?
