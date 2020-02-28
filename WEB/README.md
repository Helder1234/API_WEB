# Configurar ambiente para automação WEB

Instalação e configuração, para executar testes de Web, utilizando capybara com Cucumber.

## Abrir o terminal e executar os seguintes passos:

* Instalar Homebrew

		$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

* Instalar RVM

		$ curl -sSL https://get.rvm.io | bash

* Instalar Ruby

		$ rvm install ruby-2.7.0

* Dar permissão nas Gems

		$ sudo chown -R `whoami` /Library/Ruby/Gems

* Instalar bundle

		$ gem install bundler

* Clonar o projeto de desenvolvimento

		$ git clone <url-do_repositorio-do-git>

* Para executar o projeto no Mac

		$ cucumber