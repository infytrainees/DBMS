SELECT g1.customerid,customername,round(sum(price*quantity*(1-discount/100))) totalbill
FROM giftorder g1,gift g,customer1 c WHERE g1.giftid=g.giftid AND g1.CUSTOMERID=c.customerid GROUP BY g1.customerid,customername HAVING 
round(sum(price*quantity*(1-discount/100)))=
(SELECT round(max(sum(price*quantity*(1-discount/100)))) FROM giftorder g1,gift g WHERE g1.giftid=g.giftid GROUP BY customerid)
