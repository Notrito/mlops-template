install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=calCLI test_*.py

format:
	black *.py mylib/*.py

run:
	python main.py

lint:
	#pylint --disable=R,C main.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor:
	format lint

deploy:
	#deploy here
	
all: install lint
