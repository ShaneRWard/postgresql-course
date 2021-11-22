-- from listitems, calculate the number of items still desired and return this in a column called "Items Still Desired"
SELECT * FROM listitems;

SELECT lidesired - lipurchased AS "Items Still Disired" FROM listitems;