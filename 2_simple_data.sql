insert into organization(name)
values
    ('Bilutleie Bergen'),
    ('Bilutleie Oslo'),
    ('Bilutleie Trondheim');

INSERT INTO membership_type(name)
VALUES
    ('Normal'),
    ('Deluxe'),
    ('Mini');

insert into product(public_id, name, msrp)
values
    ('79e3e35d-3c96-497f-89f0-b9909a9dea6d', 'Kjørte KM', 5),
    ('623be808-be4c-4a7c-b834-4ad7f4855e8c', 'StartAvgift', 10),
    ('b5cc0e21-e6dc-4210-9d24-13fdfe5f2f60', 'Feilparkering', 100),
    ('253b525d-789f-4e11-ad3a-72a869d02651', 'Medlemsavgift', 500),
    ('d0679903-cfd8-4ec4-bc5b-0dfc8b3d461a', 'Autopass', 50),
    ('03f3f870-25b3-44b3-8e32-e5bde07db513', 'Gebyr Utvask', 100),
    ('6c6a7f28-01ec-49b6-80ad-5f72fcf97bd7', 'Gebyr Drivstoff', 500),
    ('ce3431e6-0fa0-4062-8234-89333f8df347', 'Filsespikkegebyr', 100),
    ('3f30ac4a-1b5a-41be-acfb-7b3e4dfef145', 'Levert for sent', 200);

insert into model(public_id, name, manufacturer, seats, doors, fuel_type)
values
    ('de8a2980-7048-4882-ba5f-c5239d7dab69','Golf', 'Volkswagen', 5, 4, 'Bensin'),
    ('1bc7b733-f261-45f8-a7fb-8c8458073a18','E-Golf', 'Volkswagen', 5, 4, 'Elektrisk'),
    ('d37bb736-cc25-443b-81bb-495243e2b7ee','Polo', 'Volkswagen', 5, 4, 'Diesel'),

    ('036641a9-965c-41b9-91ae-d2ee001374fe','Hiace', 'Toyota', 3, 4, 'Diesel'),
    ('c3033784-079e-4401-9fdf-6a184be1cd2e','ProAce EV', 'Toyota', 3, 4, 'Elektrisk'),
    ('0a409ec2-b8c6-4fef-98c7-9120d08a371b','Yaris', 'Toyota', 5, 4, 'Elektrisk'),
    ('6501cbc5-c66d-474b-b3a4-602e674a3b31','Corolla', 'Toyota', 5, 4, 'Diesel'),
    ('f2f01746-39ed-404f-8daf-45b669df4512','Supra', 'Toyota', 2, 2, 'Diesel'),
    ('ddcc8577-cada-4ff8-b4b3-c779577efae3','RAV4', 'Toyota', 5, 4, 'Diesel'),

    ('fa3ee273-90cd-4907-8b16-330d212425f4','S-Class', 'Mercedes', 5, 4, 'Bensin'),
    ('bb7a8b0d-04cd-4781-8101-073c982ef48e','EQC', 'Mercedes', 5, 4, 'Elektrisk'),

    ('0c7869c1-7994-422a-8ad1-8ec83d570d1b','UX300e', 'Lexus', 5, 4, 'Elektrisk'),
    ('fbc30450-924d-4a4d-8141-debba73815ca','Leaf', 'Nissan', 5, 4, 'Elektrisk'),
    ('9346f786-a220-4aa8-ab0c-6582062fcd6b','Citigo E', 'Skoda', 5, 4, 'Elektrisk');


insert into location(name)
values
    ('Strømgaten 8, 5015 Bergen'),
    ('Olav Kyrres gate 27, 5014 Bergen'),
    ('Kong Oscars gate 22, 5017 Bergen'),
    ('Strandgaten 70-60, 5004 Bergen'),
    ('Nordnesbakken 4, 5005 Bergen'),
    ('Bryggen 23, 5003 Bergen'),
    ('Vetrlidsallmenningen 23A, 5014 Bergen'),
    ('Bergenhus 10, 5003 Bergen'),
    ('Kanalveien 107, 5068 Bergen'),
    ('Folke Barnadottes Vei 54, 5147 Fyllingsdalen'),
    ('Paradisleitet 1, 5231 Paradis'),

    ('Jernbanetorget, 0154 Oslo'),
    ('Sonja Henies plass 2, 0185 Oslo'),
    ('Slottsplassen 1, 0010 Oslo'),
    ('Kirsten Flagstads Plass 1, 0150 Oslo'),
    ('Stranden, 0250 Oslo'),
    ('Rådhusplassen 1, 0037 Oslo'),
    ('Kirkeveien, 0268 Oslo'),
    ('Louises gate 1, 0168 Oslo'),
    ('Akersveien 26, 0177 Oslo'),
    ('Huk Aveny 35, 0287 Oslo'),
    ('Forneburingen 300, 1364 Fornebu'),
    ('Ekebergveien 200, 1162 Oslo'),

    ('Kongsgårdsgata 2, 7013 Trondheim'),
    ('Klostergata 86, 7030 Trondheim'),
    ('St. Olavs Pir 2, 7010 Trondheim'),
    ('Bynesveien 100, 7018 Trondheim'),
    ('Tungavegen 3, 7047 Trondheim'),
    ('Høgskoleringen 1, 7034 Trondheim'),
    ('Sverresborg Alle 13, 7020 Trondheim'),
    ('Sjøvegen 11, 7053 Ranheim'),
    ('Stubbsvingen 39, 7036 Trondheim'),
    ('Fossegrenda 9, 7038 Trondheim');