/* Requête 7. Lister les entités et leurs pays d'origine */

SELECT intermediary.name, country.country
FROM intermediary
INNER JOIN address ON intermediary.id_address = address.id_address
INNER JOIN country ON address.countries = country.code
WHERE address.address IS NOT NULL AND address.address != ''
    AND country.code IS NOT NULL AND country.code != ''