*** Settings ***
Documentation    Some test using seleniumlibrary
Resource    vaccine-haven.resource

*** Keywords ***

Open Application
    Open Browser        ${BASE_URL}     ${BROWSER}
    SET SELENIUM SPEED  0.3 seconds

Go To Register
    Click Element   id:register__link

Input Registeration Information
    Input Text      id:citizen_id        ${CITIZEN_ID} 
    Input Text      id:name              ${FIRST_NAME} 
    Input Text      id:surname           ${LAST_NAME} 
    Input Text      id:birth_date        ${BIRTH_DATE} 
    Input Text      id:occupation        ${OCCUPATION} 
    Input Text      id:phone_number      ${PHONE_NUMBER} 
    Input Text      id:address           ${ADDRESS}
    Click Button    id:register__btn

Check Go To Homepage    
    Wait Until Page Contains Element  id:splash-img
    ${URL} =  Get Location
    Should Be Equal  ${URL}    ${BASE_URL}

Verify Reservation Information
    Wait Until Page Contains  User information:
    Page Should Contain Element    id:reserve_vaccine_value
    Page Should Contain Element    id:reserve_site_value
    Page Should Contain         ${VACCINE}
    Page Should Contain         ${SITE}

Verify Cancelation Information
    Wait Until Page Contains  User information:
    Page Should Contain Element    id:reserve_vaccine_value
    Page Should Contain Element    id:reserve_site_value
    Page Should NOT Contain         ${VACCINE}
    Page Should NOT Contain         ${SITE}

Go To Reservation
    Click Button            Reserve Vaccine
    Page Should Contain     Vaccine Reservation

Input Reservation Information
    Input Text      id:citizen_id        ${CITIZEN_ID}
    Select From List By Value    id:site_name    ${SITE}
    Select From List By Value    id:vaccine_name    ${VACCINE}
    Click Button    Submit

Go To My Info
    Wait Until Page Contains Element  id:splash-img
    Click Element   id:nav__info__link

Input Citizen Id
    Wait Until Page Contains        Citizen Page   
    Input Text    id:citizen_id        ${CITIZEN_ID}
    Click Button    Submit

Cancel Reservation
    Click Button    Cancel

Verify Registration
    Wait Until Page Contains  Citizen Registration
    Page Should Contain Button  Register
    Click Button  Register
    Go Back

Verify Reservation
    Page Should Contain Button  Reserve Vaccine
    Click Button  Reserve Vaccine
    Go Back

*** Test Cases ***

Go To Homepage
    Open Application
    Title Should Be     Vaccine Haven

Verify Two Items On Homepage
    Verify Reservation
    Verify Reservation

Register On Register Page
    Go To Register
    Page Should Contain  Citizen Registration
    Input Registeration Information

Make Reservation
    Wait Until Page Contains Element  id:splash-img
    Go To Reservation
    Input Reservation Information
    Go To My Info
    Input Citizen Id
    Verify Reservation Information

Cancel Reservation
    Click Element  identifier=cancel__btn
    Input Citizen Id
    Verify Cancelation Information







