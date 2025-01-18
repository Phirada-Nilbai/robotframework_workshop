
*** Settings ***
Library    SeleniumLibrary

*** Keywords *** 
เปิดเว็บเบราว์เซอร์ 
    Open Browser   browser=${BROWSER}

เข้า Google
    Go To    ${URL} 

ค้นหาและตรวจสอบ
    [Arguments]    ${คำค้น}    ${คำที่พบ}
    ใส่คำค้นหา    ${คำค้น}
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา    ${คำที่พบ}

ใส่คำค้นหา
    [Arguments]    ${คำค้น}
    Input Text    name=q    ${คำค้น}

กดปุ่ม Enter
    Press Keys    	None    RETURN

ตรวจสอบผลการค้นหา
    [Arguments]    ${คำที่พบ}
    Wait Until Page Contains    ${คำที่พบ}    

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    headlesschrome