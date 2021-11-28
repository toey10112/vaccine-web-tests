*** Settings ***
Library          SeleniumLibrary
Library          DateTime 

*** Variables ***
# variable names can contain spaces
${BASE_URL}    https://vaccine-haven.herokuapp.com/
${REGISTER_URL}    https://vaccine-haven.herokuapp.com/registration
${BROWSER}      gc
${CITIZEN_ID}      9621054563771
${FIRST_NAME}      Suchon 
${LAST_NAME}       Prasert
${BIRTH_DATE}      09152000
${OCCUPATION}      Student
${PHONE_NUMBER}    0812641758
${ADDRESS}         325 Sisaket
${VACCINE}         Pfizer
${SITE}            OGYHSite
