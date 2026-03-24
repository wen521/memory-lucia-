@echo off
echo 🚀 Publishing memory-lucia to npm...
echo.
echo This package requires 2FA authentication.
echo.
echo Please enter your 6-digit 2FA code from your Authenticator app:
set /p OTP="2FA Code: "
echo.
echo Publishing with OTP: %OTP%
npm publish --access=public --otp=%OTP%
echo.
echo ✅ Done!
pause
