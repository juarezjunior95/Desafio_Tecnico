*** Settings ***
Documentation        Aqui estao as KeyWords e Variaveis e Library que vao ser usadas para os nossos testes 
Library              SeleniumLibrary



*** Variables ***
${URL_Base}                   https://phptravels.com/demo/
${Navegador}                  chrome
${Titulo_Home}                Demonstration
${Campo_First_Name}           name=first_name
${Campo_Last_Name}            name=last_name
${Campo_Bussines_Name}        name=business_name
${Campo_Email}                name=email
${BOTAO_SUBMIT}               id=demo
${Campo_Result}               id=number
${Mensagem_Alerta}            Please type your email name





*** Keywords ***

Abrir Navegador 
    SeleniumLibrary.Open Browser      ${URL_BASE}        ${NAVEGADOR}
    Maximize Browser Window

Fechar o Navegador
    Capture Page Screenshot
    SeleniumLibrary.Close Browser


Dado que o usuário esteja no site https://phptravels.com/demo/
    Page Should Contain            ${Titulo_Home}


Quando preencher dados sem email
    [Arguments]    ${First_Name}    ${Last_Name}    ${Bussines_Name}
    Input Text    ${Campo_First_Name}    ${First_Name}
    Input Text    ${Campo_Last_Name}    ${Last_Name}
    Input Text    ${Campo_Bussines_Name}    ${Bussines_Name}

Quando preencher todos os dados com dados válidos
    [Arguments]    ${First_Name}    ${Last_Name}    ${Bussines_Name}    ${Email}
    Quando preencher dados sem email    ${First_Name}    ${Last_Name}    ${Bussines_Name}
    Input Text    ${Campo_Email}    ${Email}

    
E realizar o calculo da soma e preencher no campo Result
    Wait Until Element Is Visible   ${Campo_Result}
    ${num1_text}    Get Text    xpath=//span[@id='numb1']
    ${num2_text}    Get Text    xpath=//span[@id='numb2']
    
    ${num1}    Convert To Integer    ${num1_text}
    ${num2}    Convert To Integer    ${num2_text}
    
    ${soma}    Evaluate    ${num1} + ${num2}

    Input Text    ${Campo_Result}    ${soma}
    
    

E clicar no botão Submit
    Sleep    15
    Wait Until Element Is Visible   ${BOTAO_SUBMIT}
    Click Button                    ${BOTAO_SUBMIT}
Então o sistema deve apresentar a tela com a mensagem 
    [Arguments]            ${Mensagem_Retornada}
    Page Should Contain    ${Mensagem_Retornada}

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    [Arguments]    ${Mensagem_Esperada}
    ${Mensagem_Alerta} =    Alert Should Be Present
    Handle Alert       accept
    Should Be Equal    ${Mensagem_Alerta}    ${Mensagem_Esperada}
    




    