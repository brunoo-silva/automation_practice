## Nome Projeto: Automation_Practice
Repositório do projeto automation_practice com cucumber, capybara e ruby

* Foi realizado cenário em BDD, adicionando um novo usuário a cada execução;
**Foi realizado cenário em BDD, compra de produtos, selecionando quantidade, tamanho, cor e forma de pagamento;
**Foi realizado cenário em BDD, inserido produto(s) no carrinho de compras e depois retirado.

### Para executar o projeto

**Necessário ter o ruby instalado no computador (versão 2.5 ou superior)
**Necessário ter o geckodriver.exe e chromedriver.exe, os mesmos foram colocados na pasta do windows
**Projeto desenvolvido no VS Code
**Utilizado o console cmder

### No cmder executar o comando
'
gem install bundler 
'

### Acessar a pasta do projeto no cmder e executar o comando
'
bundle install 
'

### Para executar o projeto em headless no chrome 
'
cucumber -p nav_chrome
'

### Para executar o projeto em headless no firefox
'
cucumber -p nav_firefox
'

**Quando finalizado a execução do projeto, na pasta Log temos o relatório com os screenshots.

**Obs: Para termos sempre uma massa de teste válida, será necessário apenas alterar o email_title do arquivo user.yaml
**Os e-mail's que estão no arquivo user.yaml está disponível, pode ser utilizado eles.

**Vídeo evidência do projeto: https://drive.google.com/file/d/13mUbup3HF_eBNRHfWPw_1NW53Eg3hV-s/view?usp=sharing

**Autor: Bruno Silva 
**Projeto finalizado em: 05/07/2020
