.PHONY: install format lint test sec

format:
	@isort .
	@blue .
lint:
	@blue . --check
	@isort . --check
	@prospector --no-autodetect --uses django -i base/asgi.py -i base/wsgi.py -i .venv
# 	@flake8
test:
	@pytest -v
sec:
	@pip-audit
