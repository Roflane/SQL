create view v_StudentPenalties as
select
    s.Id as StudentId,
    s.Name,
    s.Surname,
    sum(p.Amount) as TotalPenalty
from Students s
left join Penalties p on s.Id = p.StudentId
group by s.Id, s.Name, s.Surname;

create view v_TeacherIncome as
select
    Id,
    Name,
    Surname,
    Salary,
    Premium,
    (Salary + Premium) as TotalIncome
from Teachers;

create view v_LeaderboardTop5 as
select
    s.Name,
    s.Surname,
    l.Place
from Leaderboard l
join Students s on l.StudentId = s.Id
where l.Place <= 5;