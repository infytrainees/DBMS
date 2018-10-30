SELECT g.giftid, g.giftname, g.availability, count (gf.giftid) AS 	nooforders
FROM gift g, giftorder gf
WHERE g.giftid = gf.giftid AND g.availability > 40
GROUP BY g.giftid, g.giftname, g.availability
HAVING count (gf.giftid) > 1
