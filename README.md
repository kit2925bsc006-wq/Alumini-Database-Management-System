# Alumni Database Management System

Java JDBC mini project for managing college alumni records.

## Features

- Add, view, update, and delete alumni
- Search by ID, name, department, batch year, or company
- Input validation (email, 10-digit phone, batch year)
- Prepared statements for all SQL
- SQLite database created automatically (`alumni.db`)

## How to run

1. Compile:

```bat
compile.bat
```

2. Run:

```bat
run.bat
```

Sample records are inserted on first run.

## Project structure

- `src/com/alumni/model/Alumni.java` — alumni entity
- `src/com/alumni/db/DBConnection.java` — JDBC connection and table setup
- `src/com/alumni/dao/AlumniDAO.java` — CRUD using JDBC
- `src/com/alumni/service/AlumniService.java` — validation and business rules
- `src/com/alumni/AlumniApp.java` — console menu
- `sql/schema_mysql.sql` — optional MySQL schema if you switch from SQLite

## Optional: MySQL

If the viva requires MySQL:

1. Run `sql/schema_mysql.sql` in MySQL.
2. Put `mysql-connector-j` in `lib`.
3. In `DBConnection.java`, change the URL to:

```java
jdbc:mysql://localhost:3306/alumni_db
```

and add username/password to `DriverManager.getConnection`.
