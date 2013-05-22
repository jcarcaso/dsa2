SELECT a.row_num, b.col_num, SUM(a.value*b.value) FROM A a, B b WHERE b.row_num = a.col_num GROUP BY a.row_num, b.col_num;
