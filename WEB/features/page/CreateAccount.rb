class CreateAccount < SitePrism::Page
  element :subject_field, "input[id='name']"	
  element :webSite_field, "input[id='website']"
  element :email_field, "input[id='Accounts0emailAddress0']"
  element :officePhone_field, "#phone_office"
  element :bnt_save, :button, 'SAVE', match: :first
  element :nomeCadastro, '.module-title-text'

  def createAccount(nome, webSite, email, phone)
    subject_field.set(nome)
    webSite_field.set(webSite)
    email_field.set(email)
    officePhone_field.set(phone)
    bnt_save.click
  end
end
	