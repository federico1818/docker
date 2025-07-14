SHELL = /bin/sh

.PHONY: angular

angular:
	@if [ -z "$(path)" ]; then \
		echo "Falta el parámetro 'path'. Ejemplo: make angular path=/ruta/proyecto"; \
		exit 1; \
	fi; \
	mkdir -p $(path); \
	cp -R ./angular/angular-20-1-0/* $(path); \
	echo "Estructura de proyecto creada en: $(path)"