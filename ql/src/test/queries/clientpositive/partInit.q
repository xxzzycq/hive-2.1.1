set hive.mapred.mode=nonstrict;
CREATE TABLE empty (c INT) PARTITIONED BY (p INT);
SELECT MAX(c) FROM empty;
SELECT MAX(p) FROM empty;

ALTER TABLE empty ADD PARTITION (p=1);
SELECT MAX(p) FROM empty;

