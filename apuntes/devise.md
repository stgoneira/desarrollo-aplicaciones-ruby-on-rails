# Devise Gem

https://github.com/heartcombo/devise#getting-started

## Gemfile

```
gem 'devise', '~> 4.8', '>= 4.8.1'
```

## Install

```bash
jruby -S bundle install
```

## Generate files

```bash
jruby -S rails generate devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
```

## Configuration

Depending on your application's configuration some manual setup may be required:

1. Ensure you have defined default url options in your environments files. Here is an example of default_url_options appropriate for a development environment in **config/environments/development.rb**:

```ruby
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

In production, :host should be set to the actual host of your application.

* Required for all applications. *

2. Ensure you have defined root_url to *something* in your **config/routes.rb**.

3. Ensure you have flash messages in **app/views/layouts/application.html.erb**.

```erb
       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>
```

4. You can copy Devise views (for customization) to your app by running:

```bash
jruby -S rails generate devise:views
```

5. Generate Devise Model

```bash
jruby -S rails g devise Usuario
```

6. Restart the rails server 


