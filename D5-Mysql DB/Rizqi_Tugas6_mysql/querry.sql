use penampung_data;

show tables; 

select * from agents;

describe agents;

update agents set AGENT_NAME = 'Swipper' where AGENT_CODE = 'A001';
update agents set AGENT_NAME = 'Ayaka' where AGENT_CODE = 'A002';
update agents set AGENT_NAME = 'Haruka' where AGENT_CODE = 'A003';
update agents set AGENT_NAME = 'sizuka' where AGENT_CODE = 'A004';
update agents set AGENT_NAME = 'nabila' where AGENT_CODE = 'A005';
