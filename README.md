[README (1).md](https://github.com/user-attachments/files/27400143/README.1.md)
# 🎬 MovieLens Database Project

A university database project built around the [MovieLens](https://grouplens.org/datasets/movielens/) dataset. The goal was to import, clean, and structure movie data into a relational SQL database, defining proper primary and foreign key constraints.

## 👨‍💻 Authors

- Athanasios Vasileiou — P3220013
- Aristeidis Karagiannakos — P3220066

---

## 📁 Project Structure

```
movielens-db/
├── alter_tables.sql       # SQL script for adding primary & foreign key constraints
├── keywordd.py            # Python script for preprocessing the keywords CSV
└── ΕΡΓΑΣΙΑ_2_sql.docx     # Project report (Greek)
```

---

## 🗄️ Database

- **Platform:** Microsoft Azure (MySQL)
- **Database name:** Movielens

### Tables

| Table | Description |
|---|---|
| `movie` | Core movie information |
| `genre` | Movie genres |
| `productioncompany` | Production companies |
| `collection` | Movie collections/franchises |
| `movie_cast` | Cast members per movie |
| `movie_crew` | Crew members per movie |
| `keyword` | Keywords associated with movies |
| `belongsTocollection` | Movie ↔ Collection relationship |
| `hasGenre` | Movie ↔ Genre relationship |
| `hasProductioncompany` | Movie ↔ Production company relationship |
| `hasKeywords` | Movie ↔ Keyword relationship |
| `ratings` | User ratings per movie |

---

## 🐍 Python Preprocessing (`keywordd.py`)

The original `keywords.csv` had a nested JSON-like structure that needed to be split into two separate tables before importing into SQL:

- **`keyword.csv`** — unique keywords with their `id` and `name`
- **`haskeywords.csv`** — mapping of `movie_id` to `keyword_id`

The script handles **duplicate removal** using a Python `set` to ensure each keyword ID is only written once.

---

## 🔑 SQL Constraints (`alter_tables.sql`)

After importing the raw CSV files into the database, this script adds:

- **Primary Keys** on: `movie`, `genre`, `productioncompany`, `collection`, `movie_cast`, `movie_crew`, `keyword`
- **Foreign Keys** linking all relational tables back to `movie(id)` and their respective parent tables

---

## 🚀 How to Run

1. Import all CSV files into your MySQL database
2. Run the Python script to preprocess keywords:
   ```bash
   python keywordd.py
   ```
3. Import the generated `keyword.csv` and `haskeywords.csv`
4. Execute the SQL script to apply constraints:
   ```sql
   source alter_tables.sql;
   ```
