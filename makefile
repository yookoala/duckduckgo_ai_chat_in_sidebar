#all: ddg_ai_chat_in_sidebar.xpi ddg_ai_chat_in_sidebar.zip
all: dist/ddg_ai_chat_in_sidebar--firefox.xpi

# For upload and distribute to Firefox
dist/ddg_ai_chat_in_sidebar--firefox.xpi: dist/firefox
	cp -pdf manifest.firefox.json ./dist/firefox/manifest.json
	cp -Rpdf ./src ./*.md ./dist/firefox/.
	cd ./dist/firefox && zip -r ../../$@ ./*

# For upload and distribute to Chrome
dist/ddg_ai_chat_in_sidebar--chrome.zip: dist/chrome
	cp -pdf manifest.chrome.json ./dist/chrome/manifest.json
	cp -Rpdf ./src ./*.md ./dist/chrome/.
	cd ./dist/chrome && zip -r ../../$@ ./*

dist/firefox:
	mkdir -p dist/firefox

dist/chrome:
	mkdir -p dist/chrome

clean:
	rm -Rf ./dist

.PHONY: all clean
