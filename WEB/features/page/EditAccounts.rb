class EditAccounts < SitePrism::Page
  element :bnt_viewAccounts, :xpath, "//*[@id='actionMenuSidebar']/ul/li[2]/a/div[2]"
  element :bnt_save, :button, 'SAVE', match: :first
  element :bnt_edit, "a[title='Edit']", match: :first
  element :checkbox_Accounts, "input[name='mass[]']", match: :first
  element :nome_field, "input[id='name']"
  element :city_field, "input[id='billing_address_city']"
  element :phone_field, "input[id='phone_office']"
  element :email_field, "input[id='Accounts0emailAddress0']"  
  element :nomeEditado, 'h2.module-title-text'
  Faker::Config.locale = 'pt-BR'
  $varNome = Faker::Name.name

  def viewAccounts
    bnt_viewAccounts.click
    checkbox_Accounts.click
    bnt_edit.click
  end

  def editaCampos
    nome_field.set($varNome)
    city_field.set(Faker::Address.city)
    phone_field.set(Faker::PhoneNumber.phone_number)
    email_field.set(Faker::Internet.email)
    bnt_save.click
  end
end
