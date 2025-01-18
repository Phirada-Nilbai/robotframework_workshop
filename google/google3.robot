*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    headlesschrome

*** Test Cases *** 
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    เปิดเว็บเบราว์เซอร์ และเข้า Google
    ใส่คำค้นหา    PIM
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา    สถาบันการจัดการปัญญาภิวัฒน์

ทดสอบใส่คำค้น Agatha all along ควรเจอ Kathryn
    เปิดเว็บเบราว์เซอร์ และเข้า Google
    ใส่คำค้นหา    Agatha all along
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา    Kathryn

ทดสอบใส่คำค้น Kathryn hahn ควรเจอ hahn
    เปิดเว็บเบราว์เซอร์ และเข้า Google
    ใส่คำค้นหา    Kathryn hahn
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา    hahn

*** Keywords *** 
เปิดเว็บเบราว์เซอร์ และเข้า Google
    Open Browser    url=${URL}    browser=${BROWSER}

ใส่คำค้นหา
    [Arguments]    ${คำค้น}
    Input Text    name=q    ${คำค้น}

กดปุ่ม Enter
    Press Keys    	None    RETURN

ตรวจสอบผลการค้นหา
    [Arguments]    ${คำที่พบ}
    Wait Until Page Contains    ${คำที่พบ}
    
       