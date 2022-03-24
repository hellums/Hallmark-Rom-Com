@echo off
echo.   
echo First step is to set up environment and install prerequisites
pause
python -m venv env
.\env\Scripts\pip install -r requirements.txt
echo.
echo Next step runs test of SQL database and tables
pause
.\env\Scripts\python romcomSQL.py
echo. 
echo Next step runs test of data structures and functions
pause
.\env\Scripts\python -m unittest test_romcom
echo.
echo Next step runs the command line program main loop
pause
.\env\Scripts\python romcom.py
echo.
echo Next step runs the Flask engine and launches the web interface in the default browser
pause
start .\env\Scripts\python romcomWeb.py
start http://localhost:5000
echo.
echo Next step runs the Flask engine and launches the API interface in the default browser
pause
start .\env\Scripts\python romcomAPI.py
start http://localhost:8080
echo.
pause
echo.
echo Thank you for reviewing this python-based Hallmark and IMDB romcom application.
echo Don't have a good day. Have a GREAT day!
