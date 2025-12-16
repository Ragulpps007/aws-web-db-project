---

### **`scripts/install_mysql.sh`**

```bash
#!/bin/bash
# Script to install MySQL on Linux (Amazon Linux 2 / Ubuntu)

echo "Updating system packages..."
if command -v yum &> /dev/null
then
    sudo yum update -y
    echo "Installing MySQL server..."
    sudo yum install mysql-server -y
    echo "Starting MySQL service..."
    sudo systemctl start mysqld
    sudo systemctl enable mysqld
elif command -v apt &> /dev/null
then
    sudo apt update -y
    echo "Installing MySQL server..."
    sudo apt install mysql-server -y
    echo "Starting MySQL service..."
    sudo systemctl start mysql
    sudo systemctl enable mysql
else
    echo "Neither yum nor apt found. Cannot install MySQL."
    exit 1
fi

echo "MySQL installation complete!"

# Optional: show temporary root password for Amazon Linux 2
if [ -f /var/log/mysqld.log ]; then
    echo "Temporary MySQL root password (Amazon Linux 2):"
    grep 'temporary password' /var/log/mysqld.log
fi

echo "You can now secure MySQL by running: sudo mysql_secure_installation"
```

---

### **Steps to run**

1. Make the script executable:

```bash
chmod +x scripts/install_mysql.sh
```

2. Run the script:

```bash
bash scripts/install_mysql.sh
```

3. Secure MySQL and set a root password:

```bash
sudo mysql_secure_installation
```

4. Create your database and user (or run your `setup_database.sql` script):

```bash
mysql -u root -p < sql/setup_database.sql
```
