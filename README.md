# AWS Two-Tier Web Application

## Overview
This project demonstrates a secure two-tier architecture on AWS:
- Apache web server in a public subnet
- MySQL database in a private subnet

## Files
- `scripts/` → Contains shell scripts to install Apache and MySQL
- `sql/` → Contains SQL scripts to create database and sample data
- `architecture.png` → Optional diagram of the architecture\

## Prerequisites
- AWS account with EC2 access
- Linux instance (Amazon Linux 2 or Ubuntu recommended)
- Git installed
- Basic knowledge of Linux commands

## Setup Instructions

1. **Clone the repository**
```bash
git clone https://github.com/Ragulpps007/aws-web-db-project.git
cd aws-web-db-project
````

2. **Make scripts executable**

```bash
chmod +x scripts/*.sh
```

3. **Run installation scripts**
   Example: Apache installation

```bash
bash scripts/install_apache.sh
```

4. **Database setup**

```bash
# Navigate to the sql folder
cd sql

# Run your SQL script (replace placeholders)
mysql -u <username> -p <database_name> < your_script.sql
```

5. **Access your application**

* Open your EC2 public IP in a browser to check the web server
* Verify database connectivity and functionality

```

✅ This is **all in one block**, ready to copy-paste into `README.md`.  

If you want, I can now make the **ready-to-run `install_apache.sh` script** so your project will be fully functional with this README. Do you want me to do that?
```

