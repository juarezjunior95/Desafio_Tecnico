# Desafio Técnico de Automação de Testes

![Robot Framework Logo](https://raw.githubusercontent.com/robotframework/robotframework/master/doc/images/robot-framework-logo.png)

Este projeto é um desafio técnico de automação de testes usando o Robot Framework e a biblioteca Selenium WebDriver. O objetivo do projeto é automatizar testes no site [https://phptravels.com/demo/](https://phptravels.com/demo/).

## Estrutura do Projeto

O projeto está estruturado da seguinte maneira:

- **Resources/resources.robot**: Neste arquivo, estão definidas as variáveis e keywords usadas nos testes.
- **tests/TestesCadastrados.robot**: Aqui estão os casos de teste escritos no estilo Gherkin e usando o conceito de Page Object.
- **resultados/**: Esta pasta armazena os resultados dos testes após a execução.

## Pré-Requisitos

- Robot Framework instalado
- Biblioteca Selenium WebDriver instalada
- Navegador Chrome instalado (Driver do Chrome compatível deve estar no PATH)

## Executando os Testes

Para executar os testes, siga os passos abaixo:

1. Certifique-se de ter atendido aos pré-requisitos mencionados acima.
2. Abra o terminal na raiz do projeto.
3. Execute o comando abaixo para rodar os testes:
   ```shell
   robot -d resultados ./tests/TestesCadastrados.robot
## Resultados
Os resultados dos testes serão salvos na pasta 'resultados'. Abra os arquivos HTML gerados para visualizar os detalhes de cada execução.

## Contribuindo
Contribuições são bem-vindas! Se você encontrar problemas, bugs ou quiser adicionar novos recursos, sinta-se à vontade para abrir um problema ou enviar um pull request.