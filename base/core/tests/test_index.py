import pytest
from django.urls import reverse_lazy


@pytest.fixture
def resp(client, db):
    resp = client.get(reverse_lazy('base:home'))
    return resp


def test_status_code(resp):
    assert resp.status_code == 200
