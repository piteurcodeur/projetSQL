use ProjetSQL;

SELECT 
    h.nom AS humain, 
    COUNT(r.id_rapport) AS nombre_rapports
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
GROUP BY 
    h.nom
ORDER BY 
    nombre_rapports DESC;
    
SELECT 
    rbt.nom AS robot, 
    COUNT(r.id_rapport) AS nombre_rapports
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
GROUP BY 
    rbt.nom
ORDER BY 
    nombre_rapports DESC;
    
SELECT 
    a.id_action AS action_id, 
    a.description AS action_description, 
    COUNT(r.id_rapport) AS nombre_rapports
FROM 
    Action a
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
GROUP BY 
    a.id_action, a.description
ORDER BY 
    nombre_rapports DESC;
    
SELECT 
    rbt.nom AS robot, 
    rbt.modele AS modele, 
    rbt.etat AS etat
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
    rbt.etat = 'disparu'
GROUP BY 
    rbt.id_robot, rbt.nom, rbt.modele, rbt.etat;
    
SELECT 
    rbt.modele AS modele_robot, 
    COUNT(r.id_rapport) AS nombre_rapports
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
GROUP BY 
    rbt.modele
ORDER BY 
    nombre_rapports DESC;
    

SELECT 
    AVG(TIMESTAMPDIFF(HOUR, a.date_debut, a.date_fin)) AS temps_moyen_heures
FROM 
    Action a
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    a.date_fin IS NOT NULL;





