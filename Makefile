manage:
	cf-agent -KI -f ./lib/manage.cf -b tide_manage

run:
	cf-agent -KI -f ./lib/run.cf -b tide_run
