SELECT DISTINCT i.descr, i.itemtype, pb.billamount
FROM retailstock ro, item i, purchasebill pb
WHERE ro.itemcode = i.itemcode AND pb.itemcode = i.itemcode AND pb.roid = 'R1001' 