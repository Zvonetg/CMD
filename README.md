# CMD
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
