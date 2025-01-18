*** Settings ***
Library    SeleniumLibrary
*** Variables *** 

*** Test Cases *** 
ทดสอบใส่คำค้น ไฟน์ไลน์ ควรเจอ ผลการค้นหาสำหรับ »ไฟน์ไลน์«
    เปิดเว็บเบราว์เซอร์ และเข้า All online
    ใส่คำค้นหา
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา

*** Keywords *** 
เปิดเว็บเบราว์เซอร์ และเข้า All online
    Open Browser    url=https://www.allonline.7eleven.co.th/    browser=chrome

ใส่คำค้นหา
    Input Text    name=q    ไฟน์ไลน์

กดปุ่ม Enter
    Press Keys    	None    RETURN

ตรวจสอบผลการค้นหา
    Wait Until Page Contains    ผลการค้นหาสำหรับ »ไฟน์ไลน์«
    
       