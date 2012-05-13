**Yell for Rails**

If you are not yet familiar with **Yell - Your Extensible Logging Library** 
check out the githup project under https://github.com/rudionrails/yell or jump 
directly into the Yell wiki at https://github.com/rudionrails/yell/wiki.

## Installation

System wide:

```console
gem install yell-rails
```

In your Gemfile:

```ruby
gem "yell-rails"
```

## Configuration

Once yell-rails is added to your Gemfile, you can run the generator:

```console
rails generate yell:install
```

## Compatibility

This gem is written for Rails 3.x. Lower versions are not supported.
Pull requests for backwards compatibility are welcome if there is a need.

## Usage

This gem replaces your standard Rails logger with Yell. Please refer to the 
[Yell Wiki](https://github.com/rudionrails/yell/wiki) on how to use and 
configure this gem.


Copyright &copy; 2011-2012 Rudolf Schmidt, released under the MIT license

