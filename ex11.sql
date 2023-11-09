/*Requête 11. Lister les entités et leurs intermédiaires associés :*/
SELECT entity.name AS nom_entite, intermediary.name AS nom_intermediaire
FROM assoc_inter_entity
JOIN entity ON entity.id = assoc_inter_entity.entity
JOIN intermediary ON intermediary.id = assoc_inter_entity.inter