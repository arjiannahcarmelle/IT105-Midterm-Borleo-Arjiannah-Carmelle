# **Database Indexing Report**

**System:** Student Management System

## 1. **The Test Query**
- **Action:** Search for a specific student by a column (**LastName**) that is not yet indexed.
- **Result:** Without an index, the database engine must perform a **Full Table Scan**, checking every individual row from start to finish to find a match.

```sql
SELECT * FROM Students WHERE LastName = 'Rizal';
```

## 2. **Adding the Index**
- **Action:** Create a **B-Tree index** on the **LastName** column to act as a pointer map.
- **Result:** This creates a **sorted lookup map**, allowing the database to navigate directly to specific records without reading the entire table.

```sql
CREATE INDEX idx_lastname ON Students(LastName);
```

## 3. **Observation (The Comparison)**
- **Action:** Compare the internal search strategy used by the database engine before and after optimization.
- **Result:** Before indexing, the database performed a **Full Table Scan** ($O(N)$), checking every row manually. After indexing, it performed an **Index Seek** ($O(\log N)$), navigating the B-Tree to jump directly to the result almost **instantly**.

## 4. **Why Indexing is Important**
- **Action:** Evaluate how indexing affects system **scalability** and overall performance.
- **Result:** Indexing is critical for large systems (e.g., **50,000+ students**) where a full scan would cause **system lag**. While it speeds up **Reads (SELECT)**, it adds a slight overhead to **Writes (INSERT/UPDATE)** because the index must be updated—making it a vital trade-off for a **fast and responsive** user experience.
