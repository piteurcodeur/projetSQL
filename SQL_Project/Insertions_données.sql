USE ProjetSQL;

SET autocommit = 0;
START TRANSACTION;
INSERT INTO Robot (modele, nom, etat) VALUES 
('RX-100', 'AlphaBot', 'actif'),
('RX-200', 'BetaBot', 'en réparation'),
('RX-300', 'GammaBot', 'actif'),
('RX-400', 'DeltaBot', 'décommissionné'),
('RX-500', 'EpsilonBot', 'disparu'),
('TX-100', 'ZetaBot', 'actif'),
('TX-200', 'EtaBot', 'en réparation'),
('TX-300', 'ThetaBot', 'décommissionné'),
('TX-400', 'IotaBot', 'disparu'),
('TX-500', 'KappaBot', 'actif');


INSERT INTO Humain (nom, poste, anciennete) VALUES 
('John Doe', 'Technicien', 5),
('Jane Smith', 'Ingénieure', 8),
('Alice Johnson', 'Manager', 3),
('Bob Brown', 'Directeur', 15),
('Charlie White', 'Opérateur', 2),
('Diana Black', 'Analyste', 10),
('Edward Green', 'Superviseur', 7),
('Fiona Blue', 'Consultante', 6),
('George Red', 'Développeur', 4),
('Hannah Gray', 'Chercheuse', 12);

INSERT INTO Membre (id_humain, id_robot) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Rapport (type_loi, description) VALUES 
('Loi 1', 'Respect de l’intégrité humaine.'),
('Loi 2', 'Obéissance aux ordres sauf contradiction avec la première loi.'),
('Loi 3', 'Protection de l’existence robotique sauf contradiction avec les lois précédentes.'),
('Incident 1', 'Détérioration d’un composant critique.'),
('Incident 2', 'Conflit inter-robot.'),
('Maintenance 1', 'Mise à jour logicielle réussie.'),
('Maintenance 2', 'Problème réseau détecté.'),
('Rapport 1', 'Diagnostic complet terminé.'),
('Rapport 2', 'Observation comportementale.'),
('Rapport 3', 'Rapport d’efficacité.');

-- Insertion des données dans la table Action
INSERT INTO Action (description, date_debut, date_fin, id_rapport) VALUES 
('Inspection visuelle', '2024-12-01 08:00:00', '2024-12-01 12:00:00', 1),
('Réparation module', '2024-12-02 09:00:00', '2024-12-02 14:00:00', 2),
('Mise à jour logicielle', '2024-12-03 10:00:00', '2024-12-03 12:00:00', 3),
('Analyse système', '2024-12-04 11:00:00', '2024-12-04 15:00:00', 4),
('Simulation processus', '2024-12-05 13:00:00', '2024-12-05 17:00:00', 5),
('Test terrain', '2024-12-06 08:00:00', '2024-12-06 11:00:00', 6),
('Diagnostic', '2024-12-07 09:30:00', '2024-12-07 12:30:00', 7),
('Observation', '2024-12-08 10:00:00', '2024-12-08 13:00:00', 8),
('Maintenance préventive', '2024-12-09 08:00:00', '2024-12-09 10:00:00', 9),
('Rapport final', '2024-12-10 14:00:00', '2024-12-10 16:00:00', 10);

INSERT INTO Participent (id_membre, id_action) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


