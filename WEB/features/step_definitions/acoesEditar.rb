Dado(/^que eu selecione um cadastro$/) do
  @home.menuCreateAccount
  @edit.viewAccounts
end

Quando(/^alterar os campos <nome>, <City>, <Phone>, <email> e <officePhone>$/) do
  @edit.editaCampos
end

Então(/^o cadastro deve ser alterado com sucesso$/) do
  expect(@edit.nomeEditado.text) == $varNome
end
