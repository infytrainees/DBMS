select 
to_number(substr(giftid,2)) as giftnum, 
giftname, round((price*discount/100),0) AS pricereduction 
from gift
WHERE category = 'Utilities'
