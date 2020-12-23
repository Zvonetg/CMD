REM Code started from here
@echo off
call :setWindowProperty
call :creteFolder
goto :main
:setWindowProperty
 title Serengeti
  mode con: cols=65 lines=22
  color 5f
goto :eof
:creteFolder
 set messageCode=welcome
 set feedbackURL="https://serengetitech.com/"
 set GetiHub="https://www.getihub.com/workspace"
 set Outlook="https://outlook.office.com/mail/inbox"
 set DevSkills="https://apps.serengetitech.com/devskills/#/azureLogin"
 set Portal="https://portal.serengetitech.com/newsportal/"
 set setupPath="C:\Users\%username%\Desktop\FFHide"
 IF NOT EXIST %setupPath% (
  cd "C:\Users\%username%\Desktop"
  mkdir FFHide
  attrib +S +H %setupPath%
  cd %setupPath%
  echo. >> log.txt
 )
goto :eof
:main
 cls
 if "%messageCode%"=="welcome" (
  call :welcomeMesssage
 ) else if "%messageCode%"=="pathnotfounderror" (
  call :pathnotfounderror
 ) else if "%messageCode%"=="success" (
  call :success
 ) else if "%messageCode%"=="error" (
  call :error
 ) else if "%messageCode%"=="contact" (
  call :contact
 ) else (
  call :error
 )
 echo [1] GetiHub
 echo [2] Outlook
 echo [3] DevSkills
 echo [4] Contact
 echo [5] Web site
 echo [6] Exit
 echo *****************************************************************
 set /p option="Enter your Choice: "

 call :operation %option%

goto :main
:welcomeMesssage
 cls
 echo *****************************************************************
 echo *       Welcome to Serengeti  ...!!                             *
 echo *              												  *
 echo *       Choose option below                                     *  
 echo *****************************************************************
goto :eof
:error  
 cls
 echo *****************************************************************
 echo *       Sorry...!!                                              *
 echo *       Choice is Incorrect..!!                                 *
 echo *       Please Choose option below                              *  
 echo ***************************************************************** 
goto :eof 
:success
 cls
 echo *****************************************************************
 echo *       Congratulations...!!                                    *
 echo *       Operation Done Successfully..!!                         *
 echo *       Please Choose option below                              *  
 echo *****************************************************************   
goto :eof
:pathnotfounderror
 cls
 echo *****************************************************************
 echo *       Sorry...!!                                              *
 echo *       File/Folder Does not Exists..!!                         *
 echo *       Please Choose option below                              *  
 echo *****************************************************************
goto :eof
:feedback
 if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start chrome.exe "%feedbackURL%"
 ) else (
  start iexplore "%feedbackURL%"
 )
 set messageCode=welcome
goto :eof

:exit
exit
:: errorcode401.blogspot.in
:operation
 if %~1==1 (
  call :hide
 ) else if %~1==2 (
  call :unhide
 ) else if %~1==3 (
  call :log
 ) else if %~1==4 (
  set messageCode=contact
 ) else if %~1==5 (
  call :feedback
 ) else if %~1==6 (
  call :exit
 )else (
  set messageCode=error
 )
goto :eof
:hide
 if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start chrome.exe "%GetiHub%"
 ) else (
  start iexplore "%GetiHub%"
 )
 set messageCode=welcome
goto :eof
:unhide
 if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start chrome.exe "%Outlook%"
 ) else (
  start iexplore "%Outlook%"
 )
 set messageCode=welcome
goto :eof
:log
 if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start chrome.exe "%DevSkills%"
 ) else (
  start iexplore "%DevSkills%"
 )
 set messageCode=welcome
goto :eof
:contact
 cls
 echo *****************************************************************
 echo *       If you have any problem or you need any help            *
 echo *       You can Contact Us by bolow EmailID                     *
 echo *       Zvone : zvonimir.knezevic@serengetitech.com             *  
 echo *       Facebook     : facebook.com/zvone0                      *
 echo *****************************************************************
goto :eof
:error  
 cls
 echo *****************************************************************
 echo *       Sorry...!!                                              *
 echo *       Choice is Incorrect..!!                                 *
 echo *       Please Choose option below                              *  
 echo ***************************************************************** 
goto :eof 
REM Code ended from here