Dado(/^que realizo login$/) do
  @login.load
  @login.acesso(MASSA['login']['username'], MASSA['login']['password'])
end

Dado(/^que eu crie um cadastro$/) do
  @home.menuCreateAccount
end

Dado(/^preencho os campos "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |nome, webSite, email, officePhone|
  @nome = nome
  @account.createAccount(nome, webSite, email, officePhone)
end

Então(/^a conta deve ser cadastrada com sucesso$/) do
  expect(@account.nomeCadastro.text).to eq @nome.upcase
end
