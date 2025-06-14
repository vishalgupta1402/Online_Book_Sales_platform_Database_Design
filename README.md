
## 📌 Project Overview

This project is focused on designing the **relational database infrastructure** for an **Online Book Sales Platform** — similar to online bookstores like Amazon Books or Flipkart.

The goal of this project is to manage the backend data for:
- 📦 Books and inventory  
- 👤 Customers and their orders  
- 🛒 Shopping carts and checkouts  
- 💳 Payments and delivery  
- 📝 Author and publisher databases  
- 📊 Reports and analytics  

This was built using **MySQL** and standard SQL commands, with normalized schemas and relational integrity using **primary and foreign keys**.

---

## 💡 Key Features

- Store and manage multiple books with stock info, price, and genres  
- Handle customer accounts with their addresses and order history  
- Track shopping cart data and place orders with proper transactions  
- Process payments securely and track delivery status  
- Maintain catalog of authors and publishers  
- Collect customer reviews and feedback  
- Generate reports like top-selling books, frequent customers, etc.

---

## 🗃️ Database Schema

Key tables in the project:

- `Books` – book info, price, stock, ISBN, etc.  
- `Authors` – book authors (linked to Books)  
- `Publishers` – publisher details  
- `Customers` – user details and login  
- `Orders` – full order information and order items  
- `Payments` – order payment status and method  
- `Cart` – active items before order is placed  
- `Reviews` – customer reviews for books  

🔗 All tables are connected using **foreign keys** to ensure referential integrity.

---

## 💾 Technologies Used

- **MySQL** – for database design and queries  
- **SQL** – for DDL (table creation), DML (data insertion), and queries  
- **MySQL Workbench – GUI for database management

---

## 📁 Project Files

- `bookstore_schema.sql` – Main SQL file that creates all tables
- `bookstore_insert.sql` – SQL file with sample data
- `bookstore_queries.sql` – Sample queries to test the system
- `entity_relationship_diagram.png` – ERD showing table relationships *(optional)*

📝 All scripts can be run in any **MySQL** environment (Workbench etc.)

---

## 🎯 Learning Outcomes

Through this project, I learned:

- How to design a complex database from scratch 🔍  
- How entities relate through primary & foreign keys  
- Writing advanced SQL queries (joins, groupings, nested queries)  
- Data normalization and clean relational design  
- Real-world data modeling for e-commerce platforms

---

## 🧑‍💻 Author

**Vishal Gupta**  
📘 1st-year Computer Science Engineering Student at Niat 
🔗 [LinkedIn](www.linkedin.com/in/vishal-linga) 
| 🌐 [GitHub](https://github.com/vishalgupta1402)

---

## 📬 Feedback & Contributions

Feedback is welcome!  
Feel free to open an **issue**, leave a **star ⭐**, or **fork** this repository to expand it further.

