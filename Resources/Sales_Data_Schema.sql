CREATE TABLE sales_data (
	id SERIAL PRIMARY KEY,
	Year_ INTEGER NOT NULL,
	Month_ INTEGER NOT NULL,
	InvDate DATE NOT NULL,
	InvNumber VARCHAR NOT NULL,
	Market VARCHAR NOT NULL,
	InvCustomer VARCHAR NOT NULL,
	CompanyName VARCHAR NOT NULL,
	ItemClass VARCHAR NOT NULL,
	SubCategory VARCHAR NOT NULL,
	Flavours VARCHAR,
	Product INTEGER NOT NULL,
	Description VARCHAR NOT NULL,
	Config VARCHAR NOT NULL,
	UOM VARCHAR NOT NULL,
	Real_Qty INTEGER NOT NULL,
	CAD_Value DECIMAL (10,4)
);

DROP TABLE sales_data;

SELECT * FROM sales_data;
	