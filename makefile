all: ddg_ai_chat_in_sidebar.xpi ddg_ai_chat_in_sidebar.zip

ddg_ai_chat_in_sidebar.xpi:
	zip -r ddg_ai_chat_in_sidebar.xpi ./manifest.json ./src ./*.md

ddg_ai_chat_in_sidebar.zip:
	zip -r ddg_ai_chat_in_sidebar.zip ./manifest.json ./src ./*.md

clean:
	rm -f ddg_ai_chat_in_sidebar.xpi ddg_ai_chat_in_sidebar.zip

.PHONY: all clean
