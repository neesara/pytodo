setup:
	python3 -m venv venv
	. venv/bin/activate
	venv/bin/python3 -m pip install -r requirements.txt
	cp pytodo/script.py pytodo/script
	sudo chmod +x pytodo/script
	sudo apt update
	sudo apt install -y mongodb
	chmod +x create_db
	./create_db
	chmod +x set_alias
	./set_alias
	exec bash
