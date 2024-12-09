use ProjetSQL;

CREATE VIEW vue_robots_actifs AS
SELECT id_robot, modele, nom
FROM Robot
WHERE etat = 'actif';

CREATE VIEW vue_robots_en_réparation AS
SELECT id_robot, modele, nom
FROM Robot
WHERE etat = 'en réparation';

CREATE VIEW vue_robots_décommissionné AS
SELECT id_robot, modele, nom
FROM Robot
WHERE etat = 'décommissionné';

CREATE VIEW vue_robots_disparu AS
SELECT id_robot, modele, nom
FROM Robot
WHERE etat = 'disparu';
