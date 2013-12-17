class UserMailer < ActionMailer::Base
 default from: "roronlineshopping@gmail.com"

  def welcome_email(user,password)
  	@user = user["name"]
  	@email = user[:email]
  	@password=password
  	@url = "http://localhost:3000/users/sign_in"
  	mail(to: @email, subject:"Login your account")
  end


end
