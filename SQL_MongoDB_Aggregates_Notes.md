# SQL & MongoDB Aggregates — Notes

1. **MySQL Aggregate Nesting**  
   - Directly nested aggregates (e.g., `MAX(AVG(...))`) not allowed.  
   - With subqueries → possible.  
   - Maximum = **63 levels** (MySQL subquery nesting limit).  

2. **MIN() on Strings**  
   - `MIN()` treats VARCHAR as strings.  
   - Comparison is **lexicographical** (left-to-right character comparison).  
   - Example: `MIN('20','3','100') = '100'`.  

3. **SUM()**  
   - Returns sum of all **non-NULL values**.  
   - Example: `SUM([1,2,NULL,3]) = 6`.  

4. **COUNT()**  
   - By default counts **non-NULL values**.  
   - Does not count distinct values unless `DISTINCT` used.  
   - Example: `COUNT([10,10,NULL,20]) = 3`; `COUNT(DISTINCT [...]) = 2`.  

5. **AVG()**  
   - Returns average of **all non-NULL values**.  
   - Use `DISTINCT` for unique values only.  
   - Example: `AVG([2,2,4]) = 2.67`; `AVG(DISTINCT [...]) = 3`.  

6. **MAX()**  
   - Returns **maximum value** (highest numeric or lexicographical string).  
   - Example: `MAX([5,7,2]) = 7`; `MAX(['apple','banana','cat']) = 'cat'`.  

7. **MongoDB Aggregates**  
   - Direct nesting of aggregates in one stage ❌ not allowed.  
   - Use **multiple pipeline stages** instead.  
   - Limit = **100 stages per aggregation pipeline**.  

8. **CASE WHEN**  
   - Used for conditional logic in SQL.  
   - Works with patterns (`LIKE`), numeric ranges, or inside aggregates.  
   - Example: `CASE WHEN marks>=90 THEN 'A' ... ELSE 'Fail' END`.  
