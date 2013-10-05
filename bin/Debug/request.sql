attach database "music_torrents_12000.db" as dt;

.output "tmp.txt"

--select value, statname from feature where feature = "mean" order by value desc;

select count(distinct statname) from stats;