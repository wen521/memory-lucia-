@echo off
echo 🚀 Publishing memory-lucia to npm...
echo.

echo Logging in to npm...
npm login --auth-type=legacy

echo.
echo Publishing package...
npm publish --access=public

echo.
echo ✅ Published!
echo.
echo Users can now install with:
echo   npm install memory-lucia
pause
