class OsCustomerMailer < ActionMailer::Base
 default from: "rorappraisal@gmail.com"

  def welcome_email(user,password)
  	@user = user["cust_name"]
  	@email = user[:email]
  	@password=password
  	@url = "http://localhost:3000/os_customers/sign_in"
  	mail(to: @email, subject:"Login your account")
  end


end
