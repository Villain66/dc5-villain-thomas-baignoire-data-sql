/* Requête 13. Lister les intermédiaires et le nombre d'entités et d'officiers associés */
SELECT intermediary.name AS intermediary_name, COUNT(DISTINCT entity.id) AS nb_entity, COUNT(DISTINCT officer.id) AS nb_officer
FROM intermediary
JOIN assoc_inter_entity ON assoc_inter_entity.inter = intermediary.id
JOIN entity ON assoc_inter_entity.entity = entity.id
JOIN assoc_officer_entity ON assoc_officer_entity.entity = entity.id
JOIN officer ON assoc_officer_entity.officer = officer.id
GROUP BY intermediary.name