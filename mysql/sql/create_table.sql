DROP TABLE IF EXISTS mesures_originales;
CREATE TABLE mesures_originales (
	date_de_debut TIMESTAMP NULL DEFAULT NULL,  -- Date de début: 2022/01/01 00:00:00;
	date_de_fin TIMESTAMP NULL DEFAULT NULL,    -- Date de fin: 2022/01/01 01:00:00;
 	organisme VARCHAR(255),                     -- Organisme: ATMO GRAND EST;
 	code_zas VARCHAR(255),                      -- code zas: FR44ZAG02;
 	zas VARCHAR(255),                           -- Zas: ZAG METZ;
 	code_site VARCHAR(255),                     -- code site: FR01011;
 	nom_site VARCHAR(255),                      -- nom site: Metz-Centre;
 	type_implantation VARCHAR(255),             -- type d'implantation: Urbaine;
 	polluant VARCHAR(255),                      -- Polluant: NO;
 	type_influence VARCHAR(255),                -- type d'influence: Fond;
 	discriminant VARCHAR(255),                  -- discriminant: A;
 	reglementaire VARCHAR(255),                 -- Réglementaire: Oui;
 	type_evaluation VARCHAR(255),               -- type d'évaluation: mesures fixes;
 	procedure_mesure VARCHAR(255),              -- procédure de mesure: Auto NO Conf meth CHIMILU;
 	type_valeur VARCHAR(255),                   -- type de valeur: moyenne horaire validée;
 	valeur FLOAT,                               -- valeur: 1.5;
 	valeur_brute FLOAT,                         -- valeur brute: 1.45;
 	unite_mesure VARCHAR(255),                  -- unité de mesure: µg-m3;
 	taux_saisie VARCHAR(255),                   -- taux de saisie: ;
 	couverture_temporelle VARCHAR(255),         -- couverture temporelle: ;
 	couverture_donnees VARCHAR(255),            -- couverture de données: ;
 	code_qualite VARCHAR(255),                  -- code qualité: A;
 	validite VARCHAR(255)                       -- validité: 1
);
 
-- 2022/01/01 00:00:00;2022/01/01 01:00:00;ATMO GRAND EST;FR44ZAG02;ZAG METZ;FR01011;Metz-Centre;Urbaine;NO;Fond;A;Oui;mesures fixes;Auto NO Conf meth CHIMILU;moyenne horaire validée;1.5;1.45;µg-m3;;;;A;1
