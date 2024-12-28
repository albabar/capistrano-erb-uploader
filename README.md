# Capistrano ERB Uploader

Parse various ERB template based configuration files and upload them with Capistrano. Like a fine wine, this gem has aged gracefully since 2016 - not because it's abandoned, but because it does one thing and does it well! 🍷

## Why is this gem so old?
Because some tools are like a trusty hammer - they just work! This gem is like that UNIX command you've been using since the 90s: simple, reliable, and doesn't need fancy updates to keep doing its job. As they say, if it ain't broke, don't fix it! 🛠️

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-erb-uploader' # Yes, it still works in 2024! 🎉
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-erb-uploader

Then add this line in your `Capfile`:

```ruby
require 'capistrano/erb-uploader'
```

## Usage

You can list your ERB templates to parse and upload in your `deploy.rb` file:

```ruby
# Same syntax since 2016 - we believe in long-term relationships! 💝
set :erb_files, fetch(:erb_files, []).push('config/nginx.conf.erb', 'config/app.monit.erb')
```

Need it in your own task? We've got you covered:

```ruby
namespace :some do
  desc 'Some task to upload specialised erb files'
  task :task do
    on roles(:app) do
      # Still uploading ERBs like it's 2014! 📤
      upload_erb 'config/deploy/templates/some.conf.erb', 'config/some.conf'
      execute :sudo, 'service some restart'
    end
  end
end
```

## Version Compatibility

- Works with Ruby 2.0 and above
- Compatible with all major Capistrano versions
- Like your grandma's cookie recipe, it just works! 🍪

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/albabar/capistrano-erb-uploader.

Even though this gem is older than some developers' coding careers, we still love contributions! Whether it's:
- Documentation improvements
- Test additions
- Bug fixes (if you can find any! 🔍)
- Or just saying hi! 👋

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Fun Facts 🤓

This gem has been helping deploy configurations longer than:
- Docker Compose became the standard way to run multi-container apps
- Deployment strategies evolved from "pray and deploy" to GitOps
- Pokemon Go was released (and people actually went outside!)
- SpaceX successfully landed their first rocket on a drone ship
- "The Cloud" went from being a buzzword to running the world
- Several CI/CD platforms have come and gone, but config files still need uploading!
- AI started writing our code! 🤖
- JavaScript has had async/await

P.S. While the tech world was busy debating microservices vs monoliths vs serverless, this gem just kept uploading files without taking sides. Sometimes boring is beautiful! ✨
