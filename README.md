

### Using the azure sql server example projects

First setup  ~/.dbt/profiles.yml 
dw_dev:
  target: dev
  outputs:
    dev:
      type: sqlserver
      driver: 'ODBC Driver 17 for SQL Server'
      server: srv-ssc.database.windows.net
      port: 1433
      schema: dbo
      user: ssc_admin
      password: <fill me in>
      database: db-ssc




Try running the following commands:

[CLI DOC](https://docs.getdbt.com/reference/dbt-commands)

for Docs:
```
dbt dbt docs generate
dbt docs serve --port 8002
```

for tests
```
dbt test
```

for building out your models:
```
dbt run
```
