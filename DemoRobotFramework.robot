*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:8080
${BROWSER}    Chrome
${Google-TH-URL}    http://www.google.co.th
${Cs-kku}	www.cs.kku.ac.th
*** Test Cases ***
I want Google page
	Open Browser    ${Google-TH-URL}    ${BROWSER}
	Page Should Contain   google

CS KKU Website
	Input Text    q    ${Cs-kku}    
	Submit form    tsf
	Page Should Contain  CS KKU - มหาวิทยาลัยขอนแก่น 
	
	[Teardown]    close Browser
	
	