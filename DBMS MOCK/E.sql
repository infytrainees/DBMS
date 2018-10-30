select nvl(to_char(orderid),'NA') as ordernum, nvl(c.customerid,'N') as customer
from customer1 c full join giftorder g
on c.customerid = g.customerid and location = 'Bangalore' 
