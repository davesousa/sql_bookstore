--SELECT e.isbn, b.title, s.stock, s.cost, e.type, 
--CASE WHEN e.type = 'h' THEN 'Hardcover' 
--WHEN e.type = 'p' THEN 'Paperback' END AS Type_of_book 
--FROM stock AS s, editions AS e, books AS b, publishers AS p  
--WHERE p.name = 'Random House'  
--AND b.id=e.book_id
--AND e.publisher_id=p.id 
--AND e.ISBN = s.ISBN 
--AND stock > 0;

--SELECT b.title, e.publication FROM books AS b FULL OUTER JOIN editions AS e ON (b.id=e.book_id);

-- SELECT SUM(stock) FROM stock;

--SELECT ROUND(AVG(cost),2) AS "Average Cost", ROUND(AVG(retail),2) AS "Average Retail", ROUND(AVG(retail)-AVG(cost),2) AS "Average Proffit" FROM stock;

--SELECT e.book_id AS "Book ID"
--FROM editions AS e 
--JOIN stock AS s ON (s.isbn = e.isbn)
--ORDER BY s.stock DESC
--LIMIT 1;

SELECT a.id, (a.first_name ||' '|| a.last_name) AS "Author Name", COUNT(b.title) AS "How many books" 
FROM authors AS a 
LEFT JOIN books AS b ON (a.id = b.author_id)
GROUP BY a.id
ORDER BY COUNT(b.title) DESC;