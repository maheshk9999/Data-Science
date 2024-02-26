create table raw_data(Date text, Machine_ID varchar, Assembly_Line_No varchar,
							 Hydraulic_Pressure float, Coolant_Pressure float,
							 Air_System_Pressure float, Coolant_Temperature float,
							 Hydraulic_Oil_Temperature float, 
							 Spindle_Bearing_Temperature float, Spindle_Vibration float
							 , Tool_Vibration float, Spindle_speed int,
							 Voltage int, Torque float, Cutting float,
							 Downtime varchar
);

select * from raw_data;

select * from raw_data;

select count(*) from raw_data;

select distinct Machine_ID from raw_data;

select distinct Assembly_Line_No from raw_data;

select count(*) from raw_data
where Hydraulic_Pressure is null or Coolant_Pressure is null or Air_System_Pressure is null or 
	  Coolant_Temperature is null or
	  Hydraulic_Oil_Temperature is null or 
	  Spindle_Bearing_Temperature is null or Spindle_Vibration  is null or 
	  Tool_Vibration is null or Spindle_speed  is null or
	  Voltage is null or Torque is null or Cutting  is null or Downtime is null;
	  
select count(*) from raw_data
where Downtime = 'Machine_Failure';

Select Machine_ID, count(Machine_ID) from raw_data
where Downtime = 'Machine_Failure'
Group by Machine_ID;

select avg(Hydraulic_Pressure) as hp, avg(Coolant_Pressure) as cp,
							 avg(Air_System_Pressure) as asp, avg(Coolant_Temperature) as ct,
							 avg(Hydraulic_Oil_Temperature) as hot, 
							 avg(Spindle_Bearing_Temperature) as sbt, avg(Spindle_Vibration) as sv
							 , avg(Tool_Vibration) as tv, avg(Spindle_speed) as ss,
							 avg(Voltage) as v, avg(Torque) as tor, avg(Cutting) as cutting
							 from raw_data
where Downtime = 'Machine_Failure';

select avg(Hydraulic_Pressure) as hp, avg(Coolant_Pressure) as cp,
							 avg(Air_System_Pressure) as asp, avg(Coolant_Temperature) as ct,
							 avg(Hydraulic_Oil_Temperature) as hot, 
							 avg(Spindle_Bearing_Temperature) as sbt, avg(Spindle_Vibration) as sv
							 , avg(Tool_Vibration) as tv, avg(Spindle_speed) as ss,
							 avg(Voltage) as v, avg(Torque) as tor, avg(Cutting) as cutting
							 from raw_data
where Downtime = 'No_Machine_Failure';
