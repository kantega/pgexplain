create or replace function random_int(lower integer, upper integer) returns integer as
$$
BEGIN
    return lower + floor((upper - lower) * random());
end;
$$ language plpgsql;

create or replace function random_date(lower timestamp, upper timestamp) returns timestamp as
$$
declare
    range int;
BEGIN
    range := extract(days from upper - lower);
    return lower + random_int(0, range) * (interval '1 day') + random_int(0, 23) * (interval '1 hour');
end;
$$ language plpgsql;


CREATE OR REPLACE PROCEDURE generate_reservation(count int, carStart int, carEnd int, membershipStart int,
                                                  membershipEnd int) AS
$$
DECLARE
    membership_id     int;
    car_id            int;
    reservation_start timestamp;
    reservation_end   timestamp;
    time_now          timestamp;
    state             text;
begin
    time_now := now();

    perform setseed(0.8);

    for i in 1..count
        loop
            membership_id := random_int(membershipStart, membershipEnd);
            car_id := random_int(carStart, carEnd);

            reservation_start := random_date('2017-01-01', '2023-05-17');
            reservation_end := reservation_start + random_int(1, 3) * interval '1 hour';

            state := 'FINISHED';


            if
                (time_now < reservation_end) then
                state := 'ACTIVE';
            elseif (time_now <= reservation_start) then
                state := 'FUTURE';
            end if;

            insert into reservation(public_id, membership_id, car_id, planned_start, planned_end, state)
            values (uuid_generate_v4(), membership_id, car_id, reservation_start, reservation_start, state);
        end loop;
end;
$$ language plpgsql;

call generate_reservation(400000, 1, 600, 1, 3000);
call generate_reservation(600000, 601, 1600, 3001, 5000);
call generate_reservation(300000, 1601, 2000, 8001, 10000);

