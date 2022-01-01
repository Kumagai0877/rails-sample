build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

create-test-db:
	docker-compose exec -T api bash -c "rake db:create RAILS_ENV=test"