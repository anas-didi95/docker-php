# Laravel-specific variables
CREATE_LARAVEL=composer create-project --prefer-dist laravel/laravel .
HOST=0.0.0.0
PORT=8000

## General commands 
build:
	echo "build..."
	docker-compose build

up: build
	echo "up..."
	docker-compose up -d

down:
	echo "down..."
	docker-compose down

reset: down up

clear-code: down
	echo "clear-code..."
	rm -rf ./code
	mkdir code

## Laravel-specific commands
create-laravel-project: up
	echo "create-laravel-project..."
	echo "CREATE_LARAVEL=${CREATE_LARAVEL}"
	docker-compose run --rm app ${CREATE_LARAVEL}

exec-app-serve: up
	echo "exec-app-serve..."
	echo "HOST=${HOST}"
	echo "PORT=${PORT}"
	docker-compose exec app php artisan serve --host=${HOST} --port=${PORT}
