clear:
	docker-compose stop; \
	yes | docker-compose rm
run-client:
	mysql -utest -ptest -h127.0.0.1 test
migrate:
	cd $(DIR); \
	npx prisma migrate dev --name init
