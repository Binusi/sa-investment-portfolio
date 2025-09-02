.PHONY: setup lint test data backtest run-api

setup:
	conda env create -f environment.yml || true
	conda activate sa-investor

lint:
	black .
	isort .
	flake8 src

test:
	pytest -q

run-api:
	uvicorn src.app.api:app --reload --port 8000

# Example targets you can fill in later
data:
	python -m src.data.ingest --symbols NPN.JO,AGL.JO --start 2015-01-01

backtest:
	python -m src.strategies.momentum --symbols NPN.JO,AGL.JO --start 2015-01-01
