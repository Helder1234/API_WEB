#language:pt
#uft-8

Funcionalidade: realizar cadastro, editar e apagar
# 1 - Realizar Login
# 2 - Cadastro
# 3 - Remove
Contexto:
	Dado que realizo login

@primeiro
Esquema do Cenário: Cadastro
	Dado que eu crie um cadastro
	E preencho os campos "<nome>", "<webSite>", "<email>", "<officePhone>"
	Então a conta deve ser cadastrada com sucesso
	Exemplos:
		| nome | webSite        | email          | officePhone |
		| Ruer | www.ruy.com.br | ruy@ruy.com.br | 11987574878 |
		
@segundo
Cenário: Editar cadastro
  Dado que eu selecione um cadastro
  Quando alterar os campos <nome>, <City>, <Phone>, <email> e <officePhone>
  Então o cadastro deve ser alterado com sucesso

@terceiro
Cenário: Remove task
  Dado que selecione um task
  Quando executo a ação delete
  Então task removido com sucesso
