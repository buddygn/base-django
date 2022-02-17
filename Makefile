.PHONY: install format lint test sec

format:
	@isort .
	@blue .
lint:
	@blue . --check
	@isort . --check
	@prospector --no-autodetect --uses django
# 	@flake8
test:
	@pytest -v
sec:
	@pip-audit
