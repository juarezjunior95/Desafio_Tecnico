*** Settings ***
Documentation        Aqui estão todos testes de Cadastro
Resource             ../resources/resources.robot           
Suite Setup          Abrir Navegador
Test Teardown        Fechar o Navegador



*** Test Cases ***

CT 01 - Criar Um Novo Cadastro Com Sucesso
  Dado que o usuário esteja no site https://phptravels.com/demo/
  Quando preencher todos os dados com dados válidos    Juarez    Francisco    Qa    juares.franciscodacruz@gmail.com  
  E realizar o calculo da soma e preencher no campo Result
  E clicar no botão Submit
  Então o sistema deve apresentar a tela com a mensagem     Thank you!


CT 02 - Tentar fazer um cadastro sem um campo obrigatório
  Dado que o usuário esteja no site https://phptravels.com/demo/
  Quando preencher dados sem email    Juarez    Francisco    Qa    
  E realizar o calculo da soma e preencher no campo Result
  E clicar no botão Submit
  Lidar Com Pop-up    Please type your email nam