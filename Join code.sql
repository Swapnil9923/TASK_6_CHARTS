select * from summer_olympic2024

select * from medal_data

select * from Medal_count

select *from coach_data


SELECT 
    s.code AS athlete_code,
    s.name AS athlete_name,
    s.gender AS athlete_gender,
    s.country_code AS athlete_country_code,
    s.country AS athlete_country,
    s.height,
    s.weight,
    s.disciplines AS athlete_disciplines,
    s.birth_date,
    s.residence_place,
    s.residence_country,
    
    m.medal_type,
    m.medal_code,
    m.name AS medal_athlete_name,
    m.gender AS medal_athlete_gender,
    m.nationality AS medal_athlete_nationality,
    m.discipline AS medal_discipline,
    m.event AS medal_event,
    m.code_athlete AS medal_code_athlete,
    
    c.country_code AS medal_country_code,
    c.country AS medal_country,
    c."Silver Medal",
    c."Bronze Medal",
    c."Gold Medal",
    c.total,
    
    f.code AS function_code,
    f.name AS function_athlete_name,
    f.gender AS function_athlete_gender,
    f.function AS athlete_function,
    f.country_code AS function_country_code,
    f.country AS function_country,
    f.disciplines AS function_disciplines,
    f.events AS function_events

FROM 
    summer_olympic2024 s
FULL JOIN 
    medal_data m ON s.code = m.code_athlete
FULL JOIN 
    medal_count c ON s.country_code = c.country_code
FULL JOIN 
    (SELECT * FROM coach_data)as  f ON s.code = f.code;
