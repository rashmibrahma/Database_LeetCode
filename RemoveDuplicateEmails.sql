# Write your MySQL query statement below
DELETE FROM Person
WHERE Id NOT IN
    (SELECT * FROM
        (SELECT MIN(Id)
        FROM Person
        GROUP BY Email)t);
        
        
/*
Cannot write the below code: DELETE FROM Person WHERE ID NOT IN (SELECT MIN(Id) FROM Person GROUP BY Email);

because we cannot specify the table which we need to update in the for clause. 
*/
