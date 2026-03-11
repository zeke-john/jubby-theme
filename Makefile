EXTENSION_NAME := jubby

ifeq ($(OS),Windows_NT)
	THEMES_DIR := $(APPDATA)/Zed/themes
	MKDIR := mkdir
	CP := copy /Y
	SEP := \\
else
	THEMES_DIR := $(HOME)/.config/zed/themes
	MKDIR := mkdir -p
	CP := cp
	SEP := /
endif

.PHONY: install
install:
	$(MKDIR) "$(THEMES_DIR)"
	$(CP) themes$(SEP)*.json "$(THEMES_DIR)"
	@echo "Installed $(EXTENSION_NAME) theme to $(THEMES_DIR)"
