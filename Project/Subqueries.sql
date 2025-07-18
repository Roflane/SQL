select s.Name, s.Surname, sum(p.Amount) as TotalPenalty
from Students s
join Penalties p on s.Id = p.StudentId
group by s.Name, s.Surname
having sum(p.Amount) > (
    select avg(Amount) from Penalties
);

select Name, Surname, Salary
from Teachers
where Salary > (
    select avg(Salary) from Teachers
);

select Name, Surname
from Students
where Id in (
    select top 5 StudentId from Leaderboard order by Place
);

select Name, Surname
from Deans
where Salary in (
    select Salary from Deans where Salary > 10000
);

select Name, Surname
from Staff
where Salary in (
    Select Salary from Staff where Salary between 10000 and 35000
);