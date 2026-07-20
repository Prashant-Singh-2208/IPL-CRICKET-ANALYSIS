select * from matches
--1--which team has the highest win percentage
select  team1 as team,count(*) as total_matches,sum(case when match_winner=team1 then 1 else 0 end) as wins,
round(sum(case when match_winner=team1 then 1 else 0 end) * 100/count(*),2) as win_pct
from(select team1 ,match_winner from matches union all select team2 , match_winner from matches ) as all_matches
group by team order by win_pct desc
2--does winning the toss actual help
select toss_decision,
count(*)as total_matches,sum(case when toss_winner=match_winner then 1 else 0 end) as yeah,
round(sum(case when toss_winner=match_winner then 1 else 0 end) * 100.0/count(*),2) as win_pct
from matches WHERE match_result = 'completed' group by toss_decision order by win_pct desc
3--which venue produces highest first innings scores
select distinct venue,max(first_ings_score) as highest,AVG(first_ings_score) as
average from matches WHERE match_result = 'completed' group by venue order by highest desc
4--batting vs chasing
select 
 case 
 	when toss_decision ='Bat' and toss_winner= match_winner then 'Batting first Won'
	when toss_decision = 'Bowl' and toss_winner != match_winner then 'Batting first won'
	else 'Chasing Won'
	end as matchresult,count(*) as matches,round(count(*)*100.0/sum(count(*)) over(),2) as pct
from matches group by matchresult order by matches desc
5--most POTM
select distinct player_of_the_match,count(*) as pom from matches group by player_of_the_match order by pom desc limit 10
6--which team played super over and won 
select match_winner,count(*) as sow from matches where super_over_match='Yes' group by match_winner order by sow desc 
7--Top scorrer with their avg, max score, min score
select top_scorer,count(*) as top,round(avg(highscore),2) as avg_hs,max(highscore) as bestscore,min(highscore) as lowscore 
from matches WHERE top_scorer IS NOT NULL AND match_result = 'completed' group by top_scorer order by bestscore desc
