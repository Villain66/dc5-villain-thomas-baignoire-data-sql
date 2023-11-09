/*Requête 12. Trouver le nombre d'entités associées à chaque intermédiaire*/

SELECT intermediary.name AS nom_intermediaire, COUNT(assoc_inter_entity.entity) AS nb_entites_associees
FROM assoc_inter_entity
JOIN intermediary ON intermediary.id = assoc_inter_entity.inter
GROUP BY intermediary.name