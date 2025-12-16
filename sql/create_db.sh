---

### **1️⃣ Create `sql/setup_database.sql`**

Copy this into a file called `setup_database.sql` inside your `sql/` folder:

```sql
-- SQL script to create a sample database and table

-- Create database
CREATE DATABASE IF NOT EXISTS web_project_db;

-- Use the database
USE web_project_db;

-- Create a sample table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Verify data
SELECT * FROM users;
```

---

### **2️⃣ How to run the SQL script**

After cloning the repo and connecting to your database:

```bash
cd sql
mysql -u <username> -p <database_name> < setup_database.sql
```

Replace `<username>` and `<database_name>` with your MySQL credentials.

---

### **3️⃣ Link with your web project**

* If your web server (Apache) is running, you can now connect your web application to the `web_project_db` database.
* You can expand the database with more tables as your project grows.
