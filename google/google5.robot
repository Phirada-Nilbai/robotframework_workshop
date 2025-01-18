*** Settings ***
Library    SeleniumLibrary

Test Setup    เปิดเว็บเบราว์เซอร์ และเข้า Google
Test Teardown    Close Browser

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    chrome

*** Test Cases *** 
ทดสอบใส่คำค้นหาและควรเจอผลลัพธ์ที่ต้องการ 
    [Template]    ค้นหาและตรวจสอบ   
    PIM    สถาบันการจัดการปัญญาภิวัฒน์
    Agatha all along    Kathryn
    Kathryn hahn    hahn

    
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
    
       