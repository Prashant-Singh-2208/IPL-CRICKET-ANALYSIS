select * from deliveries
1--common type of dismissal
select wicket_type,count(*) as dismissal,round(count(*) * 100.0/sum(count(*)) over(),2) from deliveries 
where wicket_type is not null and wicket_type !='' group by wicket_type order by dismissal desc
2--top 10 batmen by total runs across all season
select striker , sum(runs_of_bat) as run , count(*) as num_ball,
round(sum(runs_of_bat) * 100/count(*),2) as s_rate from deliveries
GROUP BY striker order by run desc limit 10
3--most catches
select fielder ,count(*)as catches from deliveries 
where wicket_type ='caught' and fielder is not null and fielder!='' group by fielder order by catches desc limit 10
4--best economy all overs
select bowler , sum(runs_of_bat + extras) as runs,count(distinct match_no) as matchs,round(count(*)/6.0,1) as overs , 
round((sum(runs_of_bat + extras)*6.0)/count(*),2) as economy
from deliveries where wide = 0 group by bowler having count(*)>=60 order by economy limit 10


alter table deliveries 
alter column over type numeric(10,2) using over :: numeric
5--best economy in powerplay
select bowler , sum(runs_of_bat + extras) as runs,count(distinct match_no) as matchs,round(count(*)/6.0,1) as overs , 
round((sum(runs_of_bat + extras)*6.0)/count(*),2) as economy
from deliveries where over between 1 and 6 and wide = 0 group by bowler having count(*)>=60 order by economy limit 10
6--best economy in death overs
select bowler , sum(runs_of_bat + extras) as runs,count(distinct match_no) as matchs,round(count(*)/6.0,1) as overs , 
round((sum(runs_of_bat + extras)*6.0)/count(*),2) as economy limit 10
from deliveries where over between 16 and 20 and wide = 0 group by bowler having count(*)>=60 order by economy 
7--fastest run scorrer in death overs
select striker , count(runs_of_bat) as run , count(*) as num_ball,
round(sum(runs_of_bat) * 100.0/count(*),2) as s_rate from deliveries
where over between 16 and 20 and wide = 0 group by striker having count(*)>=50
order by s_rate desc limit 10
8--fastest run scorrer in powerplay
select striker , count(runs_of_bat) as run , count(*) as num_ball,
round(sum(runs_of_bat) * 100.0/count(*),2) as s_rate from deliveries
where over between 1 and 6 and wide = 0 group by striker having count(*)>=50
order by s_rate desc limit 10