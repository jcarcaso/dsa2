SELECT docid1, docid2, MAX(score) from (
    SELECT a.docid as docid1, b.docid as docid2, SUM(a.count*b.count) as score
    FROM freqs a, freqs b
    WHERE a.term = b.term
    and b.docid = 'q'
    and a.docid != b.docid
    GROUP BY a.docid, b.docid) b;
