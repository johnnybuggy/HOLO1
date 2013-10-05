attach database "test.db" as dt;

select b.statname, avg((b.statvalue - c.value)*(b.statvalue - c.value))
from dt.stats b, dt.feature c
where b.statname = c.statname and c.feature = "mean"
group by b.statname;