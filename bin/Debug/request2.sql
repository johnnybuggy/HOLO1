attach database "test.db" as dt;

--select a.name, b.statname, b.statvalue
--from dt.main a, dt.stats b
--where a.id = b.id
--order by a.id;

select group_concat(value, "| ")
from dt.about
order by value;

select a.path, group_concat(b.statvalue, "| ")
from dt.main a, dt.stats b
where a.id = b.id
group by a.id, a.path
order by a.path, b.statname;