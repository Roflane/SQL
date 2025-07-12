select
    s.Name, s.Surname, l.Place,
    RANK() over (order by l.Place) as RankInClass
from Students s
join Leaderboard l on s.Id = l.StudentId;

select Name, Surname, Salary + COALESCE(Premium, 0) as TotalIncome
from Teachers;

select
    Name,
    LEFT(Surname, 3) as ShortSurname,
    LEN(Name) as NameLength
from Students;

select
    Name, Surname, EmploymentDate,
    DATEDIFF(day, EmploymentDate, GETDATE()) as DaysWorked
from Teachers;