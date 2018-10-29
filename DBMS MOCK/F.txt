SELECT DISTINCT gf.orderid, gf.customerid, gf.giftid
FROM giftorder gf, gift g, giftorder gf1
WHERE g.GIFTID = gf.GIFTID AND gf.CUSTOMERID = gf1.CUSTOMERID AND g.CATEGORY = 'Home Decor'
GROUP BY gf.orderid, gf.customerid, gf.giftid
HAVING count(gf.customerid) > 1

