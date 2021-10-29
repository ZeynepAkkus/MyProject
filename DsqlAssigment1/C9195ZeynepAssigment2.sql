


CREATE TABLE Actions(
Visitor_ID int,
Adv_Type varchar(255),
Action varchar(255));
INSERT INTO Actions
VALUES	(1,'A','Left'),
		(2,'A','Order'),
		(3,'B','Left'),
		(4,'A','Order'),
		(5,'A','Review'),
		(6,'A','Left'),
		(7,'B','Left'),
		(8,'B','Order'),
		(9,'B','Review'),
		(10,'A','Review');





select * 
from actions

select adv_Type,Action ,COUNT (Action)
FROM actions
group by Adv_Type,Action

select A.Adv_Type, CAST(CAST(B.Action_Count AS NUMERIC(3,2))/count(A.Action) AS Numeric(3,2)) Order_Ratio
FROM Actions A, (
		
		select adv_Type,Action ,COUNT (Action) Action_Count
		FROM actions
		where Action = 'Order'
		group by Adv_Type,Action
			) B
where A.Adv_Type = B.Adv_Type
group by A.Adv_Type,B.Action_Count



