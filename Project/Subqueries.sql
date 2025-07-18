-- Students
select s.Name, s.Surname, sum(p.Amount) as TotalPenalty
from Students as s
join Penalties as p on s.Id = p.StudentId
group by s.Name, s.Surname
having sum(p.Amount) > (
    select avg(Amount) from Penalties
);

-- Teachers
select Name, Surname, Salary
from Teachers
where Salary > (
    select avg(Salary) from Teachers
);

-- Students
select Name, Surname
from Students
where Id in (
    select top 5 StudentId from Leaderboard order by Place
);

-- Deans
select Name, Surname
from Deans
where Salary in (
    select Salary from Deans where Salary > 10000
);

-- Staff
select Name, Surname
from Staff
where Salary in (
    select Salary from Staff where Salary between 10000 and 35000
);

-- Faculties
select Name
from Faculties
where Name in (
    select Name where Name like 'E%'
);

select Name
from Faculties
where Name in (
    select Name where Name like 'M%'
);

-- Groups
select RoomNumber
from Groups
where Name in (
    select Name where Name like 'CS-%'
);

-- Departments
select Financing
from Departments
where Financing in (
    select Financing where Financing > 500000
)