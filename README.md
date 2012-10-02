Installation
=============

Add the following to your Gemfile:

``
  gem 'google-tag-manager-rails'
``

Then run:

``
  bundle install
``

Example Configuration
====

In config/environments/production.rb :

```ruby
GoogleTagManager.gtm_id = "GTM-XXXX" # Where GTM-XXXX is your container ID from Google Tag Manager
```

In app/views/layouts/application.html.erb:

```erb
<body>
  <%= google_tag_manager %>
  ...
```

Per environment config
----

google-tag-manager-rails will only write out a tag if `GoogleTagManager.gtm_id` is set. If you don't set the value in your development, testing, or staging environments, no tags will be written.

If you'd like to add them, in config/environments/{development,staging}.rb :

```ruby
GoogleTagManager.gtm_id = "GTM-XXXX" # Where GTM-XXXX is your container ID from Google Tag Manager
```


