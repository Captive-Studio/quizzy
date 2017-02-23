# Quizzy

Build-in quiz module. 

Ready to use with **Rails 4**, find the "Rails5" branch for **Rails5**.

## Installation

Add this to your Gemfile:

```ruby
gem 'quizzy', github: 'Captive-Studio/quizzy', branch: 'rails5'
```

Then run `bundle install`

Next, you need to run the generator:

```console
$ rails quizzy:install:migrations
```

(it will copy the gem's migration into your app's folder)

Then run

```console
$ rails db:migrate
```

Create an initializer to set up the user class (eg: Quizzy.user_class = User)

## Licence

MIT