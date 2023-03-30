
with reservation_to_update as (
    select *, floor(random()*(300-5)+5) as count from reservation where state = 'FINISHED'
)
insert into order_line(public_id,membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    1 as product_id,
    rtu.count as count,
    5 * rtu.count,
    null,
    rtu.planned_end
from reservation_to_update rtu;



with reservation_to_update as (
    select * from reservation where state = 'FINISHED'
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    2 as product_id,
    1,
    10.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;



with reservation_to_update as (
    select * from reservation where state = 'FINISHED' order by random() limit 200000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    3 as product_id,
    1,
    100.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;


with reservation_to_update as (
    select *, floor(random()*(5-1)+1) as count from reservation where state = 'FINISHED' order by random() limit 800000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    5 as product_id,
    rtu.count,
    50 * rtu.count,
    null,
    rtu.planned_end
from reservation_to_update rtu;


with reservation_to_update as (
    select * from reservation where state = 'FINISHED' order by random() limit 200000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    6 as product_id,
    1,
    100.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;


with reservation_to_update as (
    select * from reservation where state = 'FINISHED' order by random() limit 300000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    7 as product_id,
    1,
    500.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;


with reservation_to_update as (
    select * from reservation where state = 'FINISHED' order by random() limit 400000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    8 as product_id,
    1,
    100.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;


with reservation_to_update as (
    select * from reservation where state = 'FINISHED' order by random() limit 300000
)
insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    rtu.membership_id,
    rtu.id,
    9 as product_id,
    1,
    200.00,
    null,
    rtu.planned_end
from reservation_to_update rtu;






insert into order_line(public_id, membership_id, reservation_id, product_id, count, total, invoice_id, created)
select
    uuid_generate_v4(),
    m.id,
    null,
    4 as product_id,
    1,
    500.00,
    null,
    m.created_ts + ((a.period * 6)::varchar || ' months')::interval
from membership m
         cross join lateral (
    select generate_series(1, extract(year from age(now(), m.created_ts)) * 2 +
                              extract(month from age(now(), m.created_ts)) / 6::integer) as period
    ) a;