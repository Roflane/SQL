DROP VIEW IF EXISTS v_StudentPenalties;
DROP VIEW IF EXISTS v_TeacherIncome;
DROP VIEW IF EXISTS v_LeaderboardTop5;
DROP VIEW IF EXISTS v_StaffTop5;
DROP VIEW IF EXISTS v_UniversityTop5;

-- Students
create view v_StudentPenalties as
select
    s.Id,
    s.Name,
    s.Surname,
    sum(p.Amount) as TotalPenalty
from Students s
left join Penalties p on s.Id = p.StudentId
group by s.Id, s.Name, s.Surname, p.Amount;

-- Teachers
create view v_TeacherIncome as
select
    Id,
    Name,
    Surname,
    Salary,
    Premium,
    (Salary + Premium) as TotalIncome
from Teachers;

-- Leaderboard
create view v_LeaderboardTop5 as
select
    s.Name,
    s.Surname,
    l.Place
from Leaderboard l
join Students as s on l.StudentId = s.Id
where l.Place <= 5;

-- Staff
create view v_StaffTop5 as
select
    Name,
    Surname
from Staff
where Salary > 30000;

-- University
create view v_UniversityTop5 as
select
    Id,
    Name
from Institution
where Id <= 5;