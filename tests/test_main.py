import pytest
from main import app

@pytest.fixture
def client():
    app.testing = True
    return app.test_client()

def test_home_status(client):
    response = client.get("/")
    assert response.status_code == 200

def test_home_content(client):
    response = client.get("/")
    data = response.get_json()
    assert data == {"message": "Hello, Docker!"}
