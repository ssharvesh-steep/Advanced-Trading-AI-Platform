#!/bin/bash
# AutoTradeAI: Run backend and frontend automatically

# Activate virtual environment
source venv/bin/activate

# Start backend (Flask) in background
python backend/app.py &
BACKEND_PID=$!

# Start frontend server (serves dashboard.html and monitor.html)
python3 -m http.server 8000

# When you stop the http.server, kill the backend
kill $BACKEND_PID 