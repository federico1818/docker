SHELL = /bin/sh

angular:
	@if [ -z "$(path)" ]; then \
		echo "Falta el parámetro 'path'. Ejemplo: make angular path=/ruta/proyecto"; \
		exit 1; \
	fi; \
	mkdir -p $(path); \
	cp -R ./angular-20-0-1/* $(path); \
	echo "Estructura de proyecto creada en: $(path)"