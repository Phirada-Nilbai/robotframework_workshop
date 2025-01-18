*** Settings ***
Library    SeleniumLibrary

Test Setup    เปิดเว็บเบราว์เซอร์ และเข้า Google
Test Teardown    Close Browser

Test Template    ค้นหาและตรวจสอบ

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    chrome

*** Test Cases ***                                คำค้น    คำที่พบ
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์    PIM    สถาบันการจัดการปัญญาภิวัฒน์
ทดสอบใส่คำค้น Agatha all along ควรเจอ Kathryn    Agatha all along    Kathryn
ทดสอบใส่คำค้น Kathryn hahn ควรเจอ hahn    Kathryn hahn    hahn
    
*** Keywords *** 
เปิดเว็บเบราว์เซอร์ และเข้า Google
    Open Browser    url=${URL}    browser=${BROWSER}

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
    
       