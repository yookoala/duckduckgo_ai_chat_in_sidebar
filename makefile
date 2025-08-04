#all: ddg_ai_chat_in_sidebar.xpi ddg_ai_chat_in_sidebar.zip
all: ddg_ai_chat_in_sidebar.xpi

# For upload and distribute to Firefox
ddg_ai_chat_in_sidebar.xpi: dist/firefox
	cp -pdf manifest.firefox.json ./dist/firefox/manifest.json
	cp -Rpdf ./src ./*.md ./dist/firefox/.
	cd ./dist/firefox && zip -r ../../ddg_ai_chat_in_sidebar.xpi ./*

# For upload and distribute to Chrome
ddg_ai_chat_in_sidebar.zip: dist/chrome
	cp -pdf manifest.chrome.json ./dist/chrome/manifest.json
	cp -Rpdf ./src ./*.md ./dist/chrome/.
	cd ./dist/chrome && zip -r ../../ddg_ai_chat_in_sidebar.xpi ./*

dist/firefox:
	mkdir -p dist/firefox

dist/chrome:
	mkdir -p dist/chrome

clean:
	rm -Rf ./dist
	rm -f ddg_ai_chat_in_sidebar.xpi ddg_ai_chat_in_sidebar.zip

.PHONY: all clean
