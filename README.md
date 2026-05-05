# ecommerce-sqlite-project
E-Commerce Order History System using SQLite with query analysis and indexing

## 1. Project Overview
This project implements an E-Commerce Order History System using SQLite.

The system allows users to:
- View recent orders
- View detailed order information

The main goal of this project is to understand how SQLite database internals such as B-tree storage, indexing, and query planning affect query performance.

---

## 2. Environment Setup

### Requirements
- SQLite installed on your system

### Check if SQLite is installed
```bash
sqlite3 --version
```

If not installed:
- Mac:
  ```bash brew install sqlite ```
- Ubuntu:
  ```bash sudo apt install sqlite3 ```

---

## 3. Run the Project

### Step 1: Open terminal
Navigate to the project folder:

```bash
cd ecommerce-sqlite-project
```

### Step 2: Open SQLite

```bash
sqlite3 ecommerce.db
```
### Step 3: Run a simple query

```bash
SELECT * FROM orders LIMIT 10;
```
### Step 4: Run all queries

```bash
.read queries.sql
```

