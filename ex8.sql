/* Requête 8. Trouver tous les officiers et intermédiaires qui ont une association */

SELECT  officer.name as 'officer', officer.id as 'officer_id', assoc_inter_offi.assoc_type as 'association type', intermediary.name as 'intermediary', intermediary.id as 'intermediary_id'
FROM officer
INNER JOIN intermediary ON assoc_inter_offi.inter = intermediary.id
INNER JOIN assoc_inter_offi ON officer.id = assoc_inter_offi.officer