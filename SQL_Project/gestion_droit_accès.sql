use ProjetSQL;

CREATE ROLE 'administrateur';
GRANT  SELECT, INSERT, UPDATE, DELETE ON *.* to 'administrateur';

CREATE ROLE 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Humains_Impliques_Incidents TO 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Robots_Impliques_Incidents TO 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Actions_Associees_Incidents TO 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Robots_Incidents_Disparus TO 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Frequence_Types_Incidents TO 'analyste';
GRANT SELECT ON ProjetSQL.Vue_Humains_Travail_Robots_Disparus TO 'analyste';

CREATE ROLE 'technicien';
GRANT UPDATE (etat) ON ProjetSQL.Robot TO 'technicien';

CREATE ROLE 'superviseur_éthique';
GRANT  SELECT ON `action` to 'superviseur_éthique';
GRANT  SELECT ON rapport to 'superviseur_éthique';