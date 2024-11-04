ddg_ai_chat_in_sidebar.xpi:
	zip -r ddg_ai_chat_in_sidebar.xpi ./manifest.json ./src

clean:
	rm -f ddg_ai_chat_in_sidebar.xpi

.PHONY: clean
