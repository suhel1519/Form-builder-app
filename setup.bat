@echo off
echo Installing dependencies...
echo.

echo [1/2] Installing backend dependencies...
cd backend
call npm install
cd ..

echo.
echo [2/2] Installing frontend dependencies...
cd frontend
call npm install
cd ..

echo.
echo ========================================
echo Setup complete!
echo ========================================
echo.
echo To start the application:
echo.
echo 1. Backend (in one terminal):
echo    cd backend
echo    npm run dev
echo.
echo 2. Frontend (in another terminal):
echo    cd frontend
echo    npm run dev
echo.
echo Backend will run on: http://localhost:3000
echo Frontend will run on: http://localhost:5173
echo.
pause
