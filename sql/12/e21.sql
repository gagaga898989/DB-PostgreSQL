SELECT
    character_id,
    name,
    j.job_name
FROM
    n_characters
    RIGHT JOIN n_jobs AS j ON n_characters.job_id = n_jobs.job_id;