P = python
backup = backup/

all:
	$(P) main.py

install:
	pip install -r requirements.txt

release:
	# 1. Clean
	rm -rf dist build *.spec
	mkdir -p dist/obfuscated

	# 2. Obfuscate
	pyarmor gen -r --output dist/obfuscated main.py backend/ frontend/

	# 3. Bundle
	pyinstaller --noconfirm --windowed \
		--name "Spark" \
		--paths "dist/obfuscated" \
		--collect-all sv_ttk \
		--collect-all matplotlib \
		--hidden-import=sqlite3 \
		--hidden-import=_sqlite3 \
		--hidden-import=tkinter.messagebox \
		--hidden-import=tkinter.filedialog \
		--hidden-import=tkinter.ttk \
		--hidden-import=tkinter.font \
		--add-data "dist/obfuscated/backend:backend" \
		--add-data "dist/obfuscated/frontend:frontend" \
		--add-data "dist/obfuscated/pyarmor_runtime_*:." \
		dist/obfuscated/main.py


dev:
	$(P) -m unittest tests/*.py
	$(P) hot_reload.py

build:
	pyinstaller main.py
	cd dist/main && ./main

fresh:
	rm -f *.db
	rm -rf __pycache__
	$(P) hot_reload.py

freshbuild:
	rm -f *.spec
	rm -rf __pycache__
	rm -rf build
	rm -rf dist

test:
	$(P) -m unittest tests/*.py

db:
	$(P) init_db.py

backup: .FORCE
	mkdir -p $(backup)
	cp *.db $(backup)
	cp *.csv $(backup)

.FORCE:

.PHONY: backup