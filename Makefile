PROD_URL="user=doadmin dbname=pool-1 host=db-prod-do-user-6594536-0.db.ondigitalocean.com  port=25061 sslmode=require"
STAG_URL="user=doadmin dbname=pool host=db-dev-do-user-6594536-0.db.ondigitalocean.com  port=25061 sslmode=require"

ROLE ?= "admin"

db-prod:
	PGPASSWORD=`pass Vybe/db_prod` psql $(PROD_URL)
db-staging:
	PGPASSWORD=`pass Vybe/db_staging` psql $(STAG_URL)

env_url:
ifeq ($(env), prod)
URL=$(PROD_URL)
else ifeq ($(env), staging)
URL=$(STAG_URL)
else
	echo "env not valid"
endif


admin-api-key: env_url
	PGPASSWORD=`pass Vybe/db_$(env)` psql $(URL) -c "select id as $(env)_$(ROLE)_api_key from api_keys where user_id = (select id from users where role = '$(ROLE)' limit 1) order by expiration_date desc limit 1;"

user-api-key: env_url
	@PGPASSWORD=`pass Vybe/db_$(env)` psql $(URL) -c "select id as user_api_key from api_keys where user_id = (select id from users where phone = '$(PHONE)') order by expiration_date desc limit 1;"
