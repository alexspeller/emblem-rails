# Emblem::Rails is unmaintained

#Emblem rails is unmaintained - at this point I'd _extremely strongly_ recommend using `ember-cli` instead of `ember-rails`, and _slightly less strongly_ recommend not using emblem, as although the syntax is great it's turned out to not keep up with developments in hbs very quickly and as such using hbs has been a lot easier overall in my experience

Integrate [Emblem.js](https://github.com/machty/emblem.js) with ember-rails

## Installation

Add `gem 'emblem-rails'` to your application's Gemfile after `ember-rails`:

```ruby
gem 'ember-rails'
gem 'emblem-rails'

# If you are using Ember 1.9, you will currently need to specify the master branch of 
# emblem source, and a fork of barber-emblem:

gem "emblem-source", github: "machty/emblem.js"
```
And then execute:

    $ bundle


Now any templates ending in `.emblem` will be compiled as
Ember-Handlebars templates. If you need to compile your Emblem templates
with vanilla Handlebars, use the `.raw.emblem` extension.

## Upgrading to the latest Emblem

This gem is only responsible for integrating Emblem.js with Rails. Any
updates to the Emblem language itself can be pulled in via
 
    $ bundle update emblem-source

