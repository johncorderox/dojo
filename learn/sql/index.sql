clustered
non clustered


The difference is how the data is structured. The index is a pointer to data in a table

Indexs can be created or deleted without harming the data.

Speeds up SELECT and WHERE clauses but slows down INSERT and UPDATE


CREATE INDEX idx_lastname
ON Persons (Last Name);
