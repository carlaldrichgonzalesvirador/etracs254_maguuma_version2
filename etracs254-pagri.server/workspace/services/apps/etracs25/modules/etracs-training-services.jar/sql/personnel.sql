[getList]
select *
from personnel
where lastname like $P{searchtext}
or firstname like $P{searchtext}

[getTrainings]
select* 
from personnel_training
where personnellid = $P{idno}