Rack::NonWwwEnforcer
=================

Rack Middleware for redirect requests to the main domain of the app. (Ex. http://www.mysite.com to http://mysite.com)

To know why you must avoid www in your app read about [no-www initiative](http://no-www.org/)

Usage
-------

    use Rack::NonWwwEnforcer


You can use it in your Rails app, in the environment configuration file add it to Middleware stack:

    config.middleware.insert_before ActionDispatch::Static, Rack::NonWwwEnforcer
