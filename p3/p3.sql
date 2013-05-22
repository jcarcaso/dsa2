SELECT a.docid, b.docid , SUM(a.count*b.count) 
FROM frequency a, frequency b 
WHERE a.term = b.term 
  AND a.docid < b.docid 
  AND a.docid = '10080_txt_crude' 
  and b.docid = '17035_txt_earn' GROUP BY a.docid, b.docid;
