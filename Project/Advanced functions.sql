select
    s.Name, s.Surname, l.Place,
    RANK() over (order by l.Place) as RankInClass
from Students s
join Leaderboard l on s.Id = l.StudentId;

select Name, Surname, Salary + COALESCE(Premium, NULL) as TotalIncome
from Teachers;

select
    Name,
    LEFT(Surname, 3),
    LEN(Name)
from Students;

select
    Name, Surname, EmploymentDate,
    DATEDIFF(day, EmploymentDate, GETUTCDATE())
from Teachers;

select
    Name,
    LEN(Name)
from Staff;