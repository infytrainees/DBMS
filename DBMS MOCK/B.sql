select distinct
gfo.customerid,
gfo.giftid 
from gift g ,giftorder gfo 
WHERE g.giftid = gfo.giftid 
AND g.category != 'Home Decor'
