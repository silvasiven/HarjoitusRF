*** Settings ***
Library   SeleniumLibrary
Library  OperatingSystem
Documentation    Haku koulun kirjaston sivuilta

*** Variables ***
${kirja}            Robot Framework

*** Test Cases ***
Haku sivulta
    Siirtyminen sivustolle
    Siirry Kirjastopalveluihin
    Etsi Hakusana
    Valitse Opinnäytetyö
    Valitse hakutulos
    Hae ja kopio viitetiedot
    Hae oppari
    Lopeta

*** Keywords ***
Haku sivulta
    Siirtyminen sivustolle
    Siirry Kirjastopalveluihin
    Etsi Hakusana
    Valitse Opinnäytetyö
    Valitse hakutulos
    Hae ja kopio viitetiedot
    Hae oppari
    Lopeta

Siirtyminen sivustolle
    Open Browser                     https://www.haaga-helia.fi/fi/etusivu?userLang=fi        chrome
    Wait Until Element Is Visible    //a[contains(@class,'has-children')][contains(text(),'Koulutus')]

Siirry Kirjastopalveluihin
    Click Element                      //a[contains(@class,'has-children')][contains(text(),'Palvelut')]
    Wait Until Element Is Visible     //div[@id='submenu-1']//a[contains(text(),'Kirjasto- ja tietopalvelut')]
    Click Element                     //div[@id='submenu-1']//a[contains(text(),'Kirjasto- ja tietopalvelut')]

Valitse Opinnäytetyö
    Wait Until Element Is Visible     //span[contains(text(),'Opinnäyte')]
    Click Element                     //span[contains(text(),'Opinnäyte')]

Etsi Hakusana
    Wait Until ELement Is Visible       //input[@name='lookfor']
    Input Text                          //input[@name='lookfor']    ${kirja}
    Wait Until Element Is Visible       //input[@class='btn btn-primary']
    Click Element                      //input[@class='btn btn-primary']

Valitse hakutulos
    Wait Until Element Is Visible   //div[@id='result0']//div[@class='title-container']//a[1]       timeout=10
    Click Element                  //div[@id='result0']//div[@class='title-container']//a[1]

Hae ja kopio viitetiedot
    Wait Until Element Is Visible        //span[@class='hidden-xs'][contains(text(),'Viitetiedot')]
    Click Element                       //span[@class='hidden-xs'][contains(text(),'Viitetiedot')]
    Wait Until Element Is Visible       //p[4]
    ${text}   Get Text                  //p[4]
    Create File 		                C:\Users\silva\PycharmProjects\TekHarjoitus\Harjoitus/kirja.txt	 ${text}
    Wait Until Element Is Visible       //button[@class='close']
    Click Element                        //button[@class='close']

Hae oppari
    Wait Until Element Is Visible   //div[@class='recordURLs local-available-online-record']//div[@class='truncate-field truncate-done']//div[1]//a[1]
    sleep       5
    Click Element                    //div[@class='recordURLs local-available-online-record']//div[@class='truncate-field truncate-done']//div[1]//a[1]
    Sleep    5
Lopeta
        Delete All Cookies
        Close Browser