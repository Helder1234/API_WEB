class LoginPage < SitePrism::Page
  set_url 'https://demo.suiteondemand.com'
  element :username_field, "input[id='user_name']"
  element :password_field, "#username_password"
  element :bnt_login, "input[id='bigbutton']"

  def acesso(user, pass)
    username_field.set(user)
    password_field.set(pass)
    bnt_login.click
  end
end
