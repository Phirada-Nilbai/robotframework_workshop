*** Settings ***
Suite Setup    เปิดเว็บเบราว์เซอร์
Test Setup    เข้า Google
Suite Teardown    Close All Browsers

Test Template    ค้นหาและตรวจสอบ

Resource    keywords.resource

*** Test Cases ***                                คำค้น    คำที่พบ
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์    PIM    สถาบันการจัดการปัญญาภิวัฒน์
ทดสอบใส่คำค้น Agatha all along ควรเจอ Kathryn    Agatha all along    Kathryn
ทดสอบใส่คำค้น Kathryn hahn ควรเจอ hahn    Kathryn hahn    hahn
    

    
       