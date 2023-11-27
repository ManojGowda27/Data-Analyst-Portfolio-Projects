
-- Selecting the Data that needs to be used

select location, date, total_cases, new_cases, total_deaths, population
from "CovidDeaths"
order by 1, 2

-- Total Cases vs Total Deaths

select location, date, total_cases, total_deaths, (total_deaths::float / total_cases)*100 as DeathPercentage
from "CovidDeaths"
order by 1, 2

-- Highest Infection Rate Compared to Population

select location, population, max(total_cases) as HighestInfectionCount, max((total_cases::float / population))*100 PercentPopulationInfected
from "CovidDeaths"
group by location, population 
order by PercentPopulationInfected desc


-- Displaying Countries with Highest death toll per population

select location, max(cast(total_deaths as int)) as totalDeathCount
from "CovidDeaths"
where continent is not null
group by "location"   
order by totalDeathCount desc


-- Displaying Continents with Highest Death count


select continent, max(total_deaths) as totalDeathCount
from "CovidDeaths"
where continent is not null
group by continent  
order by totalDeathCount desc



-- Vaacinaton -- 

select *
from "CovidDeaths" cd 
join "CovidVaccinations" cv 
	on cd."location"  = cv."location" 
	and cd."date" = cv."date" 
	

-- Displaying total population v vaccinations using Common Table Expression(CTE)


WITH PopvVac (continent, location, date, population, RollingPeopleVaccinated) AS (
    SELECT 
        cd.continent,
        cd.location,
        cd.date,
        cd.population,
        SUM(CASE WHEN cv.new_vaccinations <> '' THEN CAST(cv.new_vaccinations AS numeric) ELSE 0 END)
        OVER (PARTITION BY cd.location ORDER BY cd.date) AS RollingPeopleVaccinated
    FROM 
        "CovidDeaths" cd
    JOIN 
        "CovidVaccinations" cv ON cd.location = cv.location AND cd.date = cv.date
    WHERE 
        cd.continent IS NOT NULL
)
SELECT 
    continent,
    location,
    date,
    population,
    RollingPeopleVaccinated,
    (RollingPeopleVaccinated / population) * 100 AS VaccinationPercentage
FROM 
    PopvVac;
   

 
-- Creating view to store data for later visualizations 

create or replace VIEW PercentPopulationVaccinated AS
SELECT
    dea.continent,
    dea.location,
    dea.date,
    dea.population,
    vac.new_vaccinations,
    SUM(CASE WHEN vac.new_vaccinations <> '' THEN CAST(vac.new_vaccinations AS int) ELSE 0 END)
    OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
FROM
    "CovidDeaths" dea
JOIN
    "CovidVaccinations" vac 
ON dea."location" = vac."location" AND dea.date = vac.date
where dea.continent IS NOT NULL;
 

select *
from percentpopulationvaccinated













