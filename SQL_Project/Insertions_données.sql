-- Utilisation de la base de données
USE ProjetSQL;

-- Insertion des données dans la table Robot avec 5x plus de données
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
('TX-500', 'KappaBot', 'actif'),
('RX-600', 'LambdaBot', 'actif'),
('RX-700', 'MuBot', 'en réparation'),
('RX-800', 'NuBot', 'actif'),
('RX-900', 'XiBot', 'décommissionné'),
('RX-1000', 'OmicronBot', 'disparu'),
('TX-600', 'PiBot', 'actif'),
('TX-700', 'RhoBot', 'en réparation'),
('TX-800', 'SigmaBot', 'décommissionné'),
('TX-900', 'TauBot', 'disparu'),
('TX-1000', 'UpsilonBot', 'actif');

-- Insertion des données dans la table Humain avec 5x plus de données
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
('Hannah Gray', 'Chercheuse', 12),
('Jack Purple', 'Technicien', 3),
('Laura Silver', 'Ingénieure', 9),
('Mike Gold', 'Manager', 4),
('Nancy Pink', 'Directrice', 14),
('Oliver Cyan', 'Opérateur', 1),
('Paul Aqua', 'Analyste', 11),
('Quincy Jade', 'Superviseur', 6),
('Rachel Amber', 'Consultante', 7),
('Steve Teal', 'Développeur', 5),
('Tina Lime', 'Chercheuse', 13);

-- Insertion des données dans la table Membre
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
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- Insertion des données dans la table Rapport
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
('Rapport 3', 'Rapport d’efficacité.'),
('Incident 3', 'Surchauffe détectée.'),
('Incident 4', 'Interruption de service.'),
('Maintenance 3', 'Mise à jour matérielle.'),
('Rapport 4', 'Analyse environnementale.'),
('Rapport 5', 'Bilan énergétique.');

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
('Rapport final', '2024-12-10 14:00:00', '2024-12-10 16:00:00', 10),
('Nettoyage des capteurs', '2024-12-11 08:00:00', '2024-12-11 11:00:00', 11),
('Mise à jour critique', '2024-12-12 09:00:00', '2024-12-12 12:00:00', 12),
('Optimisation', '2024-12-13 10:00:00', '2024-12-13 14:00:00', 13),
('Calibration', '2024-12-14 11:00:00', '2024-12-14 13:00:00', 14),
('Revue système', '2024-12-15 14:00:00', '2024-12-15 16:00:00', 15);

-- Insertion des données dans la table Participent
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
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);
