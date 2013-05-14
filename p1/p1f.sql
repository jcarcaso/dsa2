SELECT COUNT(*) FROM (SELECT DISTINCT docid from frequency where term = 'transaction'
                      INTERSECT
                      SELECT DISTINCT docid from frequency where term = 'world') x;
