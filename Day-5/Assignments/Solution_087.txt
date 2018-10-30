SELECT rs.itemcode,
i.descr,
ro.LOCATION,
rs.qtyavailable
FROM item i,retailoutlet ro, retailstock rs
WHERE i.itemcode = rs.itemcode AND rs.roid = ro.roid AND i.itemtype = 'Apparels'