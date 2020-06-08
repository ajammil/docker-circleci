setup:
	python3 -m venv venv
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
#..
lint:
	hadolint Dockerfile
	pylint --disale=R,C,W1203 app.py
all: install lint test
