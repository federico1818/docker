SHELL = /bin/sh

.PHONY: angular laravel

angular:
	@if [ -z "$(path)" ]; then \
		echo "Falta el parámetro 'path'. Ejemplo: make angular path=/ruta/proyecto"; \
		exit 1; \
	fi; \
	mkdir -p $(path); \
	cp -R ./angular/angular-20-1-0/* $(path); \
	echo "Estructura de proyecto creada en: $(path)"

laravel:
	@if [ -z "$(path)" ]; then \
		echo "Falta el parámetro 'path'. Ejemplo: make laravel path=/ruta/proyecto"; \
		exit 1; \
	fi; \
	mkdir -p $(path); \
	cp -R ./laravel/laravel-12-4-0/* $(path); \
	cp $(path)/docker/.env.example $(path)/docker/.env; \
	echo "Estructura de proyecto creada en: $(path)"