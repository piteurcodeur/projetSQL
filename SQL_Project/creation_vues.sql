USE ProjetSQL;

-- Création des index pour améliorer les performances des vues

-- Index sur la colonne id_humain pour les jointures avec la table Humain
CREATE INDEX idx_humain_id_humain ON Humain(id_humain);

-- Index sur la colonne id_robot pour les jointures avec la table Robot
CREATE INDEX idx_robot_id_robot ON Robot(id_robot);

-- Index sur la colonne type_loi pour les filtres sur le type d'incident (type_loi LIKE 'Loi%')
CREATE INDEX idx_rapport_type_loi ON Rapport(type_loi);

-- Vue : Humains les plus impliqués dans des rapports d'incidence
CREATE VIEW Vue_Humains_Impliques_Incidents AS
SELECT 
    h.nom AS humain, 
    COUNT(r.id_rapport) AS nombre_incidents
FROM 
    Humain h
JOIN 
    Membre m ON h.id_humain = m.id_humain
JOIN 
    Participent p ON m.id_membre = p.id_membre
JOIN 
    Action a ON p.id_action = a.id_action
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    r.type_loi LIKE 'Loi%'
GROUP BY 
    h.nom
ORDER BY 
    nombre_incidents DESC;

-- Vue : Robots les plus impliqués dans des rapports d'incidence
CREATE VIEW Vue_Robots_Impliques_Incidents AS
SELECT 
    rbt.nom AS robot, 
    COUNT(r.id_rapport) AS nombre_incidents
FROM 
    Robot rbt
JOIN 
    Membre m ON rbt.id_robot = m.id_robot
JOIN 
    Participent p ON m.id_membre = p.id_membre
JOIN 
    Action a ON p.id_action = a.id_action
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    r.type_loi LIKE 'Loi%'
GROUP BY 
    rbt.nom
ORDER BY 
    nombre_incidents DESC;

-- Vue : Actions ayant menées au plus de rapports d'incidences
CREATE VIEW Vue_Actions_Associees_Incidents AS
SELECT 
    a.id_action AS action_id, 
    a.description AS action_description, 
    COUNT(r.id_rapport) AS nombre_incidents
FROM 
    Action a
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    r.type_loi LIKE 'Loi%'
GROUP BY 
    a.id_action, a.description
ORDER BY 
    nombre_incidents DESC;

-- Vue : Robots déclarés dans des incidents puis disparus
CREATE VIEW Vue_Robots_Incidents_Disparus AS
SELECT 
    rbt.nom AS robot, 
    rbt.modele AS modele, 
    COUNT(r.id_rapport) AS nombre_incidents
FROM 
    Robot rbt
JOIN 
    Membre m ON rbt.id_robot = m.id_robot
JOIN 
    Participent p ON m.id_membre = p.id_membre
JOIN 
    Action a ON p.id_action = a.id_action
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    r.type_loi LIKE 'Loi%'
    AND rbt.etat = 'disparu'
GROUP BY 
    rbt.nom, rbt.modele
ORDER BY 
    nombre_incidents DESC;

-- Vue : Fréquence des incidents par type
CREATE VIEW Vue_Frequence_Types_Incidents AS
SELECT 
    r.type_loi AS type_incident, 
    COUNT(r.id_rapport) AS nombre_incidents
FROM 
    Rapport r
WHERE 
    r.type_loi LIKE 'Loi%'
GROUP BY 
    r.type_loi
ORDER BY 
    nombre_incidents DESC;

-- Vue : Détection des humains ayant travaillés avec des robots disparus
CREATE VIEW Vue_Humains_Travail_Robots_Disparus AS
SELECT 
    h.nom AS humain, 
    h.poste AS poste, 
    COUNT(DISTINCT rbt.id_robot) AS nombre_robots_disparus
FROM 
    Humain h
JOIN 
    Membre m ON h.id_humain = m.id_humain
JOIN 
    Participent p ON m.id_membre = p.id_membre
JOIN 
    Action a ON p.id_action = a.id_action
JOIN 
    Robot rbt ON m.id_robot = rbt.id_robot
WHERE 
    rbt.etat = 'disparu'
GROUP BY 
    h.nom, h.poste
ORDER BY 
    nombre_robots_disparus DESC;
