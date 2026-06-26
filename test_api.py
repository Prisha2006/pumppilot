import requests
import json

# Test the API endpoints
base_url = "http://localhost:8000"

def test_endpoints():
    print("Testing Pump Pilot API...")
    
    # Test root endpoint
    try:
        response = requests.get(f"{base_url}/")
        print(f"Root endpoint: {response.status_code} - {response.json()}")
    except Exception as e:
        print(f"Root endpoint error: {e}")
    
    # Test health endpoint
    try:
        response = requests.get(f"{base_url}/health")
        print(f"Health endpoint: {response.status_code} - {response.json()}")
    except Exception as e:
        print(f"Health endpoint error: {e}")
    
    # Test login endpoint
    try:
        login_data = {
            "email": "admin@pumppilot.com",
            "password": "password"
        }
        response = requests.post(f"{base_url}/api/auth/login", json=login_data)
        print(f"Login endpoint: {response.status_code} - {response.json()}")
    except Exception as e:
        print(f"Login endpoint error: {e}")

if __name__ == "__main__":
    test_endpoints()