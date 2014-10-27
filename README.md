#Quizzy

Build-in quiz module. 

Ready to use with Rails 4, find the "Rails3" tag for Rails3.

Installation:

	Add to Gemfile
	Bundle
	Run `rake quizzy:install:migrations`
	(it will copy the gem's migration into your app's folder)
	Run `rake db:migrate`
  Créate an initializer to set up the user class (eg: Quizzy.user_class = User)

##Licence

MIT