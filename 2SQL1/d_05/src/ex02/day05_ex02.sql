create index idx_person_name on person (UPPER(name));

SET enable_seqscan = off;

EXPLAIN ANALYZE
select id
from person
where UPPER(name) = 'Dmitriy';
