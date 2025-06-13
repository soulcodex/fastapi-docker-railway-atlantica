-- Create the database
CREATE
DATABASE event_manager
  WITH ENCODING='UTF8'
  LC_COLLATE='en_US.UTF-8'
  LC_CTYPE='en_US.UTF-8'
  TEMPLATE=template0;

-- Connect to the database
\c event_manager;

-- Create the schema
CREATE SCHEMA IF NOT EXISTS event_manager;

-- Create the table
CREATE TABLE event_manager.events
(
    id          UUID PRIMARY KEY,
    title       TEXT COLLATE "C" NOT NULL,
    description TEXT COLLATE "C" NULL,
    price       INTEGER,
    venue       TEXT COLLATE "C",
    event_date  DATE             NOT NULL,
    event_hour  TIME WITHOUT TIME ZONE NOT NULL,
    created_at  TIMESTAMP(3) WITHOUT TIME ZONE,
    updated_at  TIMESTAMP(3) WITHOUT TIME ZONE
);

INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('b7b08e44-a8d3-4881-b527-e86e5e7f9369', 'Universal 3rdgeneration policy Conference',
        'Car strategy television put him local.', 40, 'Rua de Batista, 63, 8683-361 Tarouca', '2025-11-10', '09:00:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('a85dde56-0c66-4344-90d4-fdb3d5574314', 'Ameliorated leadingedge customer loyalty Conference',
        'Dinner participant cold machine our.', 37, 'Callejón Benito Aragonés 15 Piso 9 , Cádiz, 28992', '2025-12-24',
        '20:00:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('d27718f7-4421-44e4-abb0-1067b0c03884', 'Grass-roots systemic intranet Conference',
        'Democratic stand record produce. Bar last generation across. Go east trip election could.', 19,
        'Callejón Rosenda Palacios 89, Jaén, 02842', '2025-11-17', '16:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('29f097d9-6eb4-407f-b00e-605c63bacf96', 'Open-architected exuding pricing structure Conference',
        'Risk whether board. Range statement religious force us development.', 10,
        'Pasaje de Viviana Coloma 278, Castellón, 14580', '2025-08-13', '08:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('aa8c1dc5-1483-45e7-b0a0-f16ec5c2d25d', 'Mandatory motivating ability Conference',
        'Loss our hold discuss anything own. Much think environmental floor air medical.', 51,
        'Glorieta de Angelita Fernández 41, Ciudad, 95094', '2025-11-24', '12:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e7b3e7e7-6d0e-4d8e-adaf-2e1341fcfaa9', 'Switchable context-sensitive database Conference',
        'Possible six life see past money generation.', 96, 'Avenida Pinto, 905, 6971-305 Marinha Grande', '2025-12-11',
        '19:45:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('60e8d441-1d33-49c8-8f65-0821ad691ecb', 'Monitored multi-tasking policy Conference',
        'Skin collection personal network nature. Machine candidate loss safe.', 73,
        'Camino Azahar Sales 716 Piso 5 , Ourense, 67127', '2025-11-13', '14:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e1087585-e77b-4842-8ba8-306ec34b1eab', 'Polarized leadingedge conglomeration Conference',
        'Relate woman strategy physical. Size offer consumer positive.', 6, 'Avenida Javier Fabra 64, Murcia, 33810',
        '2025-07-26', '14:30:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('b496ca3d-c74f-404c-af90-ef8ff7752f90', 'Virtual high-level access Conference',
        'I art prove ready southern. Work fill him protect information task light result.', 48,
        'Av de Silva, S/N, 9009-385 Ponta Delgada', '2025-07-11', '12:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('bc6e2e55-f6cc-4d4e-b3b9-ce73e8f2a473', 'Configurable multimedia throughput Conference',
        'Direction security window send the live economic. Card safe significant first. Wish raise report.', 84,
        'Acceso Mario Serna 48 Piso 1 , Barcelona, 12587', '2025-12-03', '09:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('fac39066-07a2-4e10-8544-298f4cdb765a', 'Reduced 6thgeneration neural-net Conference', 'Economy be later everybody think.
Several theory people culture ability beat.', 24, 'Avenida Herculano, S/N, 1548-005 Coimbra', '2025-06-13', '12:15:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('6a81df67-f88b-48bc-9480-d1621fe1aac6', 'Fully-configurable heuristic model Conference',
        'Nature door difference become push ball.', 42, 'Acceso Custodia Alberto 238 Apt. 19 , La Rioja, 34991',
        '2025-09-03', '14:15:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('22502272-8d82-4b3f-ae69-7d3b1c0521d5', 'Adaptive modular utilization Conference',
        'Through realize season. Care its someone point daughter nice resource.', 11,
        'Praça João Assunção, 8, 5616-269 Oliveira do Hospital', '2025-10-03', '19:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('7e74ac5f-dab3-4769-bbf6-6cd94c98105b', 'Enhanced incremental neural-net Conference',
        'Station visit indeed school because until across. Loss rock notice play green understand media.', 43,
        'Av das Pedras, 187, 9139-183 Santa Cruz', '2025-07-18', '16:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('31824d2e-b6de-46ae-8b6e-e49ef3910e0c', 'Re-contextualized stable projection Conference',
        'Player degree window training. Learn exactly reach difficult represent deal strong.', 18,
        'Callejón de Calista Gaya 6, La Rioja, 85644', '2025-08-26', '12:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('4ca3212c-0663-400e-b09c-c9ff5b4f3dcc', 'Quality-focused explicit service-desk Conference',
        'Candidate song make. Task animal Mrs usually. Would professional gun describe nature often smile.', 48,
        'Av Coelho, 41, 8883-037 Esmoriz', '2025-10-24', '15:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('680f459f-d26a-4136-a809-7a4a40d35a3a', 'Versatile 6thgeneration concept Conference',
        'Spring different level become however.', 94, 'Travessa de Martins, 77, 6412-888 Alcácer do Sal', '2025-07-04',
        '15:00:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8d3bc00d-51f7-4b08-9c5b-aa86776697d6', 'Intuitive contextually-based initiative Conference',
        'Along speech food seat actually. Easy dark deal. Democratic organization type.', 47,
        'Camino de Reina Tudela 63 Piso 9 , Murcia, 84644', '2025-09-20', '08:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('3ab0f7c6-f4c0-4331-924b-03006d6e3f51', 'Pre-emptive real-time attitude Conference', 'Sell hope power.', 86,
        'Via Jordi Morante 82 Piso 1 , Zaragoza, 12116', '2025-07-15', '18:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('0c5f7d54-77d1-424f-ae5e-fc1e40f58143', 'Pre-emptive human-resource conglomeration Conference',
        'Begin phone long scientist agent authority. Yes both edge apply spring. Reduce office decide which.', 30,
        'Ronda de Pía Arteaga 28 Piso 2 , Lleida, 06143', '2025-06-19', '20:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8d313222-0239-41af-a20a-38afdf0c3de5', 'Reduced human-resource core Conference', 'Build identify seat run. War address guy month not.
Thank case case away time democratic.', 17, 'Travessa de João Augusto Ribeiro, S/N, 1019-040 Quarteira', '2025-06-18',
        '14:00:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('07248913-8f3e-4916-8c45-f5c62e520264', 'Reactive regional open architecture Conference',
        'Behind successful of why day door sit. Believe save simply some.', 62,
        'R. de Carrilho Videira, 94, 6530-652 Lourosa', '2025-10-23', '16:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('472d04c3-6830-4df0-baeb-f12c8ee70d25', 'User-friendly foreground infrastructure Conference',
        'Some although middle reach plant. Hear edge picture agency. Career whatever ten far available.', 59,
        'Pasadizo de Ainoa Lobato 18, Castellón, 36754', '2025-12-21', '17:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('b8d19bd5-33f9-4fdd-b0c6-a894baa5f79e', 'Advanced radical toolset Conference',
        'Discover through feel easy charge. Tell blue front pass.', 79,
        'Cañada de Concepción Tamarit 8 Puerta 6 , Las Palmas, 47426', '2025-09-05', '11:30:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('57778744-3d1e-4f8b-a90c-801454a9bb8b', 'Robust clear-thinking open system Conference',
        'Case military turn discover crime. Social some man maybe among. Family relate matter after year.', 19,
        'Camino Bernarda Goicoechea 5 Puerta 1 , Sevilla, 17104', '2025-09-21', '11:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('4af36d60-5fdd-4a7f-b851-dc56dd7d8b05', 'Diverse heuristic methodology Conference',
        'Fall cover character president defense. Check event administration end.', 72,
        'R. de Lamas, 620, 3347-084 Alcobaça', '2025-12-30', '19:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('3ad376e8-8e0d-4492-bfd5-720d7b060f42', 'Expanded contextually-based strategy Conference',
        'Gas sort manage firm card. Off reason watch argue cold. Food owner identify director forward.', 20,
        'R. Alice Cruz, 99, 2009-244 Rio Tinto', '2025-12-12', '18:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('12f09a0a-2771-49ce-a131-b15eb14be9e0', 'Exclusive asynchronous artificial intelligence Conference',
        'Despite money adult for yard.', 87, 'Ronda de Verónica Tenorio 60, Las Palmas, 79191', '2025-09-12',
        '12:15:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('321fd94b-ef32-4864-98bb-4aef79ca97d3', 'Grass-roots regional installation Conference',
        'Course would seek consider item. Receive hear argue century value.', 18,
        'Cuesta de Florinda Almagro 38 Piso 3 , Barcelona, 48072', '2025-12-24', '11:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('027c2a30-5a1d-45f0-834a-5e75364c7be8', 'Ergonomic mobile archive Conference', 'End realize fire. Usually detail image vote.
Significant international order herself.', 74, 'Glorieta Felicidad Guillén 26, Málaga, 21268', '2025-09-28', '14:30:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('1ed6de03-4aa4-488a-bb56-32f269292f9e', 'Reactive stable customer loyalty Conference',
        'From attention including everybody. Conference tonight fight study miss minute.', 23,
        'Av do Mar, 619, 2719-872 Póvoa de Santa Iria', '2025-06-29', '17:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('a055840b-0790-4371-b890-970a7548a789', 'Polarized next generation function Conference',
        'Inside official hold official attack. Prepare those admit how. Report hear contain heavy upon.', 71,
        'Avenida da Beneditina, 15, 5116-769 Mirandela', '2025-11-13', '18:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('bd98e655-e8c2-40fe-a1b6-d957cca13931', 'Robust object-oriented open system Conference',
        'Play crime produce nature sea.', 68, 'Pasaje Ruperta Blanch 3, Cáceres, 10655', '2025-11-23', '13:45:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('37c92cea-b69f-4aba-b7cd-9eab11b50ae6', 'Decentralized holistic instruction set Conference',
        'Show party wall. Box campaign difference system rate myself.', 6, 'Alameda de Garcia, 159, 4243-074 Albufeira',
        '2025-10-19', '17:15:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e310f71e-dae2-4fad-ac76-32efd588db99', 'Cross-platform holistic superstructure Conference',
        'Possible dream cover since various computer effort between. Nice care scene lay.', 46,
        'Cuesta de Casemiro Castañeda 2 Piso 3 , Girona, 41664', '2025-11-30', '19:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e3d9e38d-f6bd-487b-b658-7509707b0d56', 'Cloned zero-defect standardization Conference', 'Explain never audience research operation.
Data experience as term develop. Age series series the.', 82, 'Urbanización de Cristian Raya 2, Guipúzcoa, 22903',
        '2025-10-15', '10:30:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('ef7ddef6-91df-4eaf-81c3-562dbb1e76fb', 'Self-enabling tangible project Conference',
        'Tv direction job television off. Poor list TV subject product popular.', 96,
        'Avenida de Alves, 760, 4588-813 Braga', '2025-09-08', '17:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('6065aad3-55d4-4268-addd-e72fc06d150c', 'Monitored 5thgeneration website Conference',
        'Position story sense painting at baby figure. Agree until thousand member in best.', 71,
        'Acceso de Emperatriz Burgos 3, Zamora, 79337', '2025-06-19', '20:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('efb1a1f0-5269-4f30-a1b0-895ec4f7ce9d', 'Ergonomic regional customer loyalty Conference',
        'Item national seem effort long. Something production shake main agreement former phone lose.', 10,
        'Av Mota, 2, 8724-198 Penafiel', '2025-06-19', '11:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('627d3575-c12e-47c4-957e-b408c3800977', 'Balanced even-keeled challenge Conference',
        'Nothing successful change. And again dinner somebody. They garden through sport its tax force.', 47,
        'Pasadizo de María Roman 15 Piso 0 , Palencia, 63213', '2025-06-06', '20:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('0739238b-16c6-4a92-92f6-6850c414c283', 'Versatile hybrid capacity Conference',
        'Morning reflect school couple finally turn mean. Animal pass find man fast.', 52,
        'Travessa de Reis, 4, 3540-376 Peso da Régua', '2025-12-24', '10:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('44d14b13-91df-469c-9182-678a1115358d', 'Programmable upward-trending challenge Conference',
        'Within PM really effect. Same food base sure beautiful. Do class door believe expect election.', 78,
        'C. de Tristán Torrens 3 Piso 1 , León, 47958', '2025-10-16', '16:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('7efca3c5-d686-49da-bdc5-3c25a4c51784', 'Front-line eco-centric concept Conference',
        'Stand bill report. Direction after listen prevent. Glass picture run quite since population.', 100,
        'R. Escuro, 84, 8586-084 Vila do Conde', '2025-11-23', '20:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('0a3b891c-8d98-4902-81b6-d8b371cc2365', 'Up-sized user-facing software Conference', 'Case talk provide risk expert key many.
Business community any eat also her cultural.', 73, 'Av das Conchas, 9, 8025-530 Miranda do Douro', '2025-12-13',
        '11:30:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('212c2934-d442-4b1d-a718-43fbd36ac290', 'Digitized bi-directional collaboration Conference',
        'Too song tend poor. Bad say event number local central billion past. Decade player by term quality.', 82,
        'Glorieta Isabel Pina 8, Las Palmas, 80563', '2025-10-04', '20:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('86bfca68-1356-42af-af3b-dfbafe057e70', 'Decentralized bandwidth-monitored open architecture Conference',
        'Change issue run nice. Success former organization could. Name list lay upon hard hundred.', 99,
        'Callejón Fabiola Alemany 1, Granada, 16370', '2025-12-24', '08:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('9934e226-e51c-4c79-9fc5-63acfb574ccb', 'Enhanced multi-state product Conference',
        'Old plan eight ahead stock hear worry box. Poor foreign term hear hospital effort store current.', 47,
        'Via Virgilio Domingo 382 Piso 5 , Madrid, 31293', '2025-08-19', '16:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('394a272c-1c70-48fc-9588-27a4be4ea894', 'Operative secondary standardization Conference',
        'Table lay white sign. Wife attack memory staff. Hot role me bar so.', 57,
        'Alameda de Nascimento, 38, 8426-712 Figueira da Foz', '2025-10-07', '12:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e8f9c2ed-d761-4bc3-9194-c30b25777cc7', 'User-friendly scalable hub Conference',
        'Dream last within stand across. Media bed win goal thousand. Bed color station old turn.', 25,
        'Urbanización de Adelaida Arribas 2 Apt. 79 , Soria, 41123', '2025-12-27', '14:00:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('40e5dee9-b3c5-443e-a52e-8ab0255a4426', 'Face-to-face national analyzer Conference',
        'Special current each certainly. Region crime son yes bad. Life prove movement film.', 12,
        'Callejón Gregorio Cuadrado 871, Soria, 06504', '2025-08-03', '12:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('799e32b2-56e3-431f-a514-a9e8853ee850', 'Face-to-face dedicated superstructure Conference',
        'Choice someone prepare business our. Fight nearly play success role partner.', 67,
        'Ronda Javiera Elorza 55, Las Palmas, 42899', '2025-10-04', '14:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('4d8cb719-a94d-43e9-8e28-f2be4d847617', 'Optimized background standardization Conference',
        'Data money fall public. Soon watch for others wear pay.', 50,
        'Avenida de Loureiro, 2, 9836-013 Póvoa de Santa Iria', '2025-11-22', '19:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('b2569f96-902e-46ea-9b7d-566061e8dc8d', 'Diverse didactic budgetary management Conference',
        'Sister yet fast force.', 54, 'Rua Figueiredo, 3, 4176-995 Almada', '2025-06-12', '17:45:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8dbec85b-1604-420e-b9ba-465f9bbd78e1', 'Profit-focused zero administration task-force Conference',
        'Blue remember account several thank. East choice mind discussion.', 24,
        'Callejón Lorenza Acedo 804 Piso 3 , Huesca, 86116', '2025-06-15', '09:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('03d4488a-ab4b-4778-8d27-bce0b6fc2617', 'Synchronized background emulation Conference',
        'Skill white play affect significant entire away. Executive road us back.', 85,
        'Alameda Samuel Amorim, 70, 0034-304 Lisboa', '2025-06-11', '17:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('385f6000-6a3e-4860-b1f0-7875152754e5', 'Optimized regional throughput Conference',
        'None many house often police. Season audience should.', 29,
        'Alameda das Gaivotas ao Parque das Nações, 961, 8548-852 Penafiel', '2025-06-29', '19:30:00',
        '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8090ae5d-31e7-424e-9ecd-40757c60b7c3', 'Fully-configurable uniform artificial intelligence Conference',
        'Foot information chair difficult measure customer. Fish majority help pull think.', 19,
        'Rambla Hermenegildo Cantón 5, Lleida, 81793', '2025-12-20', '20:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('91bfd962-0699-4ff1-aa1a-07aaf16f23f9', 'Optimized impactful implementation Conference',
        'Might here control major hope economy important much. Star boy move skill effect might people.', 83,
        'Alameda Rui Figueiredo, S/N, 9841-395 Rio Maior', '2025-11-06', '19:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('82b4b84f-4012-4083-b220-6f0133205be3', 'Intuitive asynchronous firmware Conference',
        'Site bed foot opportunity mouth present. Best yes late listen admit improve sport.', 21,
        'Av da Cidade da Praia, 73, 2670-771 Vale de Cambra', '2025-11-16', '09:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('5905d4a7-6541-4e72-8045-9e8f6de0b2bf', 'Reduced grid-enabled synergy Conference',
        'Forward suggest happen soldier human they. Since within five safe.', 71,
        'Acceso de Silvio Cardona 91, Zaragoza, 28626', '2025-12-24', '12:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8a0867cc-83ec-4297-a60d-ff24d2067f20', 'Focused executive conglomeration Conference',
        'Read painting range sit today book support. City bar center these total.', 61,
        'Alameda de Ribeiro, 54, 8795-610 Oliveira do Hospital', '2025-06-12', '20:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('6bec1f23-2833-41b3-901e-fec51169c6e6', 'Focused didactic process improvement Conference',
        'Case change style human. Modern stop blood listen poor draw century.', 50,
        'Vial Jacinto Quesada 5, La Rioja, 83270', '2025-12-13', '11:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('78fd7a4e-c7f2-4aa0-8b3a-ecaf07a469f1', 'Digitized global groupware Conference',
        'Rather politics lay foot respond ready. Would unit nearly miss door commercial how. Side image leg.', 37,
        'Avenida Pelayo Becerra 2, Granada, 73335', '2025-06-14', '08:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('b57a2c4a-b818-4956-b964-17996f4aa661', 'Robust systemic hierarchy Conference',
        'Should notice market building hot. Might evidence into represent now.', 34,
        'Avenida Martirio Albero 12, Sevilla, 01951', '2025-10-14', '18:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('f4dccad1-a415-4dd2-a5b8-2a3a2f966019', 'Reactive clear-thinking productivity Conference',
        'Between though weight age. Current education find listen. Executive stage hope action share make.', 69,
        'Largo de Simões, 9, 5522-929 Lamego', '2025-12-18', '18:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('608ca4a4-1271-4e45-81e8-7542079e4448', 'Multi-tiered zero-defect hardware Conference',
        'Close weight family friend total find paper. Or charge trouble within above.', 77,
        'Avenida Cuf, 71, 2210-676 Ílhavo', '2025-07-02', '10:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('30162f6e-e0eb-4ba9-827f-f1c458925089', 'Distributed zero administration customer loyalty Conference',
        'Purpose nor oil forget heart truth nothing feeling. Choose single special.', 13,
        'Plaza de Enrique Aguado 28 Puerta 8 , Ourense, 74039', '2025-06-24', '09:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('6ed59ca4-c9cf-45c1-95d9-651599e5a890', 'Open-source web-enabled groupware Conference',
        'Economic never sort mind job this story. Present pattern court bill discussion while.', 98,
        'Avenida Cándido Ayala 448, Girona, 94042', '2025-09-17', '20:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('75a49b34-e3a4-4421-9f2b-9ce3a982bbbb', 'Visionary tertiary superstructure Conference',
        'Day source court relationship. Finally war particular apply.', 92, 'Largo de Ribeiro, 22, 6079-386 Mêda',
        '2025-12-22', '15:45:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('2a50eac4-07a1-4343-a711-49ae5f459f3c', 'Object-based dynamic paradigm Conference',
        'Commercial generation without wonder. Believe impact product space plant.', 97,
        'Travessa Branco, 5, 3404-941 Póvoa de Santa Iria', '2025-06-10', '15:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('94f7f09d-25cb-4383-9b11-965bbbeb7e6b', 'Open-source needs-based methodology Conference',
        'Commercial address artist strong page. Site score share push kid write. Garden data wife send.', 20,
        'Rua de Palma, 56, 2961-969 Fátima', '2025-06-23', '13:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('3fd59efa-bd79-45b6-b008-5868ade31e50', 'Object-based high-level methodology Conference',
        'Close much authority. Also stay fall young tree. Option my serve bed some. Medical hit idea.', 49,
        'Ronda Berto Milla 97 Apt. 67 , Zamora, 28898', '2025-11-27', '08:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('de93cb4c-f6ac-433c-a233-4ccfd592c0fc', 'Robust disintermediate moderator Conference',
        'Family present likely wind course media need. Your system leader half find purpose.', 14,
        'Calle de Lorenza Llopis 411, Barcelona, 35745', '2025-06-05', '11:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('e65a9a62-0ffd-4b8b-b322-1dbcdc930cf3', 'Visionary zero-defect challenge Conference',
        'Firm sort add religious sing week alone. Significant now when test.', 89,
        'Paseo de Custodio Meléndez 114 Puerta 1 , Almería, 75785', '2025-07-26', '08:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('c93029cc-02e9-48f3-a4fe-4b62d2ad932e', 'Phased explicit intranet Conference',
        'Carry foot mission. Red arm unit event wrong time keep. Station keep choice truth pass painting.', 52,
        'Paseo de Belén Calvet 9 Apt. 94 , Cuenca, 12352', '2025-12-11', '08:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('9f182cd1-f80d-4a85-aa00-12f80752875f', 'Extended neutral extranet Conference',
        'Mission say us level why. Modern thought common. Prepare player east including consumer your edge.', 28,
        'Largo Pinho, 3, 1175-052 Felgueiras', '2025-11-04', '11:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('4f9d1681-2d7f-44aa-be9a-07231c4376b0', 'Exclusive content-based superstructure Conference',
        'Final medical truth admit staff home family. Partner vote out them few. Billion benefit chair.', 95,
        'Praça de Fernandes, 785, 7139-170 Marinha Grande', '2025-07-01', '15:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('a695cc9f-b4fd-403c-b718-a86635cb1dde', 'Universal bandwidth-monitored infrastructure Conference',
        'When find east east wrong time. Through both let save much force team other.', 51,
        'Largo do Caminho Novo, 28, 2537-241 Paços de Ferreira', '2025-07-06', '08:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('d5809739-6dcd-4068-ad97-9c53ccc12508', 'Cross-group even-keeled utilization Conference',
        'Address avoid young. Goal nation somebody sometimes. Relationship moment air director base piece.', 75,
        'Largo Leonor Miranda, S/N, 5611-965 Vila Nova de Foz Côa', '2025-10-02', '12:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('060773e2-e73a-46ed-9c66-cfd0f95cefaf', 'Right-sized fresh-thinking attitude Conference', 'Article lead air carry writer hard indeed.
Part area fire fight. Several sing quality relationship.', 18, 'Rua Santos, 34, 7263-468 Almeirim', '2025-07-20',
        '17:00:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('20d74b43-096c-40b2-9907-0e2d8e5cb775', 'Cloned maximized hierarchy Conference',
        'Itself allow we Mr media Democrat. Development manage available health hand just military.', 21,
        'Via Balduino Rivero 759 Apt. 82 , Vizcaya, 38706', '2025-07-13', '14:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('a9265413-4f1d-4d94-86e5-36091efa4ed1', 'Cross-group next generation encoding Conference',
        'Weight room east suffer child four. Represent general site how key camera.', 35,
        'Paseo Florina Zaragoza 46 Puerta 1 , Salamanca, 39387', '2025-08-22', '16:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('f1fcbbf2-4b41-488d-b7b7-1630253f1992', 'Configurable bi-directional approach Conference',
        'Fear subject particularly high contain. May instead late put method job small.', 89,
        'Via de Hernando Andres 14, Melilla, 10207', '2025-08-16', '13:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('aa0cd241-6cea-479a-99d8-2c1769c42e76', 'Right-sized context-sensitive challenge Conference',
        'Country girl medical perform girl. Owner while forget eight look concern.', 55,
        'Cañada Otilia Baquero 45 Piso 4 , Cáceres, 35600', '2025-07-06', '17:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('19de0c86-8d01-4ebc-a1a8-bb741d97ca75', 'Focused incremental leverage Conference',
        'Pressure forget shake wish employee whatever. They tell choose new recognize.', 58,
        'Praça Melissa Barros, 29, 2858-859 Entroncamento', '2025-11-29', '09:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('89a49ea4-19d4-47ca-a423-e6a5f1d82837', 'De-engineered heuristic leverage Conference',
        'Know million region pay almost possible. Memory north clearly identify.', 80,
        'Largo Garcia, 4, 1659-744 Barreiro', '2025-10-21', '14:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('c7032995-13c3-4bd2-9b5c-2eb97f2659df', 'User-friendly solution-oriented success Conference',
        'That past institution. Rate support fall commercial late black west. Picture example once several.', 15,
        'Paseo Felicia Pujol 20, Teruel, 10649', '2025-08-18', '18:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('43fd7c63-51f1-4c44-9f29-b97a9a4362cd', 'Visionary radical challenge Conference',
        'Other discuss light nature. Later cause expect head similar political.', 86,
        'Via Victoriano Valcárcel 26 Piso 9 , Albacete, 58549', '2025-09-24', '18:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('03ded4ac-7769-47ca-9cc0-b732d2bc8ed7', 'Pre-emptive dedicated portal Conference',
        'Show for discussion course kitchen. Matter industry thought thus door heart city.', 58,
        'Rua de Paiva, 445, 6247-264 Viseu', '2025-09-07', '14:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('70ca9f86-3d33-467b-8f0a-b3bc9b4435d2', 'Implemented clear-thinking capacity Conference',
        'Analysis finally together believe fire month. Eye alone meeting.', 42, 'R. Ribeiro, 12, 6325-210 Estremoz',
        '2025-09-23', '11:30:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('53c024c7-3586-44d5-aef2-005c01fa5ecb', 'Right-sized explicit emulation Conference',
        'Remember try none factor go street. Answer increase true return nor.', 40,
        'Cuesta de Renato Casanova 92 Puerta 8 , Albacete, 07151', '2025-06-26', '10:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('122d81a1-48d1-4e43-892e-90fbb1c1f58c', 'Synergized clear-thinking approach Conference',
        'Thing audience like. Lead continue medical daughter now decision.', 94,
        'Largo do Bonjardim, 49, 5452-910 Angra do Heroísmo', '2025-10-23', '17:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('1440305e-94ed-4cd6-b6b3-efdf5f07d657', 'Managed upward-trending capability Conference',
        'Contain office you nearly. Exist not relationship step almost generation.', 60,
        'Paseo Tristán Ugarte 1, Ceuta, 05307', '2025-09-13', '10:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('19915a3a-8a63-4d88-b534-da03053c29e7', 'Business-focused next generation solution Conference',
        'Role care field keep act. Either task forward increase economy all adult future.', 71,
        'Plaza de Rosaura Cañete 49 Piso 6 , Córdoba, 98066', '2025-08-05', '15:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('acbd529d-8dc8-4998-948a-131190bbc5d3', 'Digitized responsive Graphical User Interface Conference',
        'Back hand sell carry population. Bag approach authority behavior.', 66,
        'Ronda Lupe Viña 306 Puerta 1 , Castellón, 40760', '2025-09-01', '15:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('824631c4-624a-4058-a621-cfab30856a38', 'Assimilated homogeneous portal Conference', 'Sure type stop sister less.
Positive building sea ready cold. At sense like morning talk.', 84, 'Av Maria Vieira, 4, 7589-253 Barcelos',
        '2025-08-17', '08:45:00', '2025-06-02 22:05:46.452', '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('d6b6d235-a192-499b-9b21-a6d75211eae7', 'Synchronized systemic process improvement Conference',
        'Your evening agent. Amount forget thus phone manage. Why performance way task second weight.', 19,
        'Travessa de Jesus, 10, 2475-393 Alcobaça', '2025-06-04', '11:30:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('8d13e3ff-d7a0-4abe-a3d5-527a9f0b03e4', 'Reactive zero tolerance middleware Conference',
        'Road building nature other method movie. Machine foot issue prevent teacher by north police.', 59,
        'Rua de Aquilino Ribeiro, 11, 2758-847 Santa Cruz', '2025-10-20', '17:15:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('38562f08-866c-44e6-9264-40a48a0e6c1d', 'Secured 24/7 success Conference',
        'Like image to maintain section business. Build with both black public.', 34,
        'Av Nádia Jesus, 893, 1775-083 Lagos', '2025-06-26', '18:45:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
INSERT INTO event_manager.events (id, title, description, price, venue, event_date, event_hour, created_at, updated_at)
VALUES ('d8692abf-c62f-4c5a-8596-175aca42790d', 'User-centric mission-critical support Conference',
        'Thousand language agent trip. Walk begin how cell.', 20,
        'Largo da Quinta do Guarda-Mor, 673, 6902-675 Montijo', '2025-08-13', '18:00:00', '2025-06-02 22:05:46.452',
        '2025-06-02 22:05:46.452');
