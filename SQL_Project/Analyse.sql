USE ProjetSQL;

-- Affiche le nombre de rapports associés à chaque humain.
-- Le résultat inclut le nom de l'humain et le nombre de rapports qu'il a générés.
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
    
-- Affiche le nombre de rapports associés à chaque robot.
-- Le résultat inclut le nom du robot et le nombre de rapports qu'il a générés.
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
    
-- Affiche le nombre de rapports liés à chaque action.
-- Le résultat inclut l'identifiant de l'action, sa description et le nombre de rapports associés.
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
    
-- Liste les robots disparus avec leurs détails (nom, modèle, et état).
-- Le résultat regroupe les informations par robot disparu.
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
    
-- Affiche le nombre de rapports associés à chaque modèle de robot.
-- Le résultat inclut le modèle du robot et le nombre de rapports correspondants.
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
    
-- Calcule le temps moyen (en heures) des actions ayant une date de fin définie.
-- Le résultat donne une seule valeur moyenne.
SELECT 
    AVG(TIMESTAMPDIFF(HOUR, a.date_debut, a.date_fin)) AS temps_moyen_heures
FROM 
    Action a
JOIN 
    Rapport r ON a.id_rapport = r.id_rapport
WHERE 
    a.date_fin IS NOT NULL;
