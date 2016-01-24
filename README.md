# Capistrano ERB Uplader

Parse various ERB template based configuration files and upload them with Capistrano.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-erb-uplader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-erb-uplader

Then add this line in your `Capfile`

```ruby
require 'capistrano/erb-uploader'
```

## Usage

You can list a bunch of ERB templates to parse and upload in your `deploy.rb` file.

```ruby
set :erb_files, fetch(:erb_files, []).push('config/nginx.conf.erb', 'config/app.monit.erb')
```

You might also use this on your own task:

```ruby
namespace :some do
  desc 'Some task to upload specialised erb files'
  task :task do
    on rolse(:app)
      upload_erb 'config/deploy/templates/some.conf.erb', 'config/some.conf'  
      execute :sudo, 'service some restart'
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/albabar/capistrano-erb-uplader.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

