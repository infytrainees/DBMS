SELECT 
i.itemtype, 
i.descr, 
NVL(q.quotationid, 'No quotation received') AS "Available Quotation number" 
FROM item i LEFT JOIN  quotation q
ON i.itemcode = q.itemcode 
WHERE i.itemtype IN ('Computer', 'FMCG')