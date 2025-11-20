box::use(
  RMySQL[MySQL],
  pool[dbpool]
)


host <- Sys.getenv("DB_HOST")
dbName <- Sys.getenv("DB_NAME")
userName <- Sys.getenv("USR_NAME")
dbPassword <- Sys.getenv("USR_PWD")
port <- Sys.getenv("PORT")
if (db_password == "") {
  # Handle unset or empty DATABASE_PASSWORD variable
}
pool <- pool::dbPool(
  drv = RMySQL::MySQL(),
  dbname = dbName,
  host = host,
  username = userName,
  password = dbPassword
)