@echo off
C:\Qt\5.12.3\msvc2017_64\bin\lrelease trans_en.qs -qm trans_en.qm
C:\Qt\5.12.3\msvc2017_64\bin\lrelease trans_zh.qs -qm trans_zh.qm
xcopy /s /y /a trans_en.qm ..\bin\Debug\trans_en.qm
xcopy /s /y /a trans_zh.qm ..\bin\Debug\trans_zh.qm
xcopy /s /y /a trans_en.qm ..\bin\Release\trans_en.qm
xcopy /s /y /a trans_zh.qm ..\bin\Release\trans_zh.qm
pause