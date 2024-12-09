use ProjetSQL;

CREATE USER 'administrateur'@'localhost' IDENTIFIED BY 'administrateur';
GRANT  SELECT, INSERT, UPDATE, DELETE ON *.* to 'administrateur'@'localhost';

CREATE USER 'analyste'@'localhost' IDENTIFIED BY 'analyste';
GRANT SELECT ON ProjetSQL.vue_robots_actifs TO 'analyste'@'localhost';
GRANT SELECT ON ProjetSQL.vue_robots_en_réparation TO 'analyste'@'localhost';
GRANT SELECT ON ProjetSQL.vue_robots_décommissionné TO 'analyste'@'localhost';
GRANT SELECT ON ProjetSQL.vue_robots_disparu TO 'analyste'@'localhost';

CREATE USER 'technicien'@'localhost' IDENTIFIED BY 'technicien';
GRANT UPDATE (etat) ON ProjetSQL.Robot TO 'technicien'@'localhost';

CREATE USER 'superviseur_éthique'@'localhost' IDENTIFIED BY 'superviseur_éthique';
GRANT  SELECT ON *.* to 'superviseur_éthique'@'localhost';

#
