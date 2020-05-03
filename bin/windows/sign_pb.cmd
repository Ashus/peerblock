@ECHO OFF

SET PB_CERT=certificate-testmode.pfx
SET PB_CERT_PWD=testmode

signtool sign /f %PB_CERT% /p %PB_CERT_PWD% /t http://timestamp.verisign.com/scripts/timstamp.dll /v pbfilter.sys
signtool sign /f %PB_CERT% /p %PB_CERT_PWD% /t http://timestamp.verisign.com/scripts/timstamp.dll /v peerblock.exe


ECHO. & ECHO.
ECHO Done!
ECHO.
pause