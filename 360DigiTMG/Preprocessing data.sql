create table machine_downtime(Date text, Machine_ID varchar, Assembly_Line_No varchar,
							 Hydraulic_Pressure float, Coolant_Pressure float,
							 Air_System_Pressure float, Coolant_Temperature float,
							 Hydraulic_Oil_Temperature float, 
							 Spindle_Bearing_Temperature float, Spindle_Vibration float
							 , Tool_Vibration float, Spindle_speed int,
							 Voltage int, Torque float, Cutting float,
							 Downtime varchar
);

select count(*) from machine_downtime
where Hydraulic_Pressure is null;

-- updating the null values in hydraulic press column(10 null) by avg(hydraulic_pressure) = 101.40908377755412.
update machine_downtime
set Hydraulic_Pressure = '101.40908377755412'
where Hydraulic_Pressure is null;

select count(*) from machine_downtime
where Coolant_Pressure is null;
--(19 null values) replace with avg(coolant pressure) = 4.94705847351793.

update machine_downtime
set Coolant_Pressure = '4.94705847351793'
where Coolant_Pressure is null;

select count(*) from machine_downtime
where Machine_ID is null or Assembly_Line_No is null or Downtime is null;
-- no null values

select count(*) from machine_downtime
where Air_System_Pressure is null;
-- 17 null values = avg 6.49927459622513

update machine_downtime
set Air_System_Pressure = '6.49927459622513'
where Air_System_Pressure is null;

select count(*) from machine_downtime
where Coolant_Temperature is null;
--12 null values = avg 18.5598874598071

update machine_downtime
set Coolant_Temperature = '18.5598874598071'
where Coolant_Temperature is null;

select count(*) from machine_downtime
where Hydraulic_Oil_Temperature is null;
-- 16 null values = avg 47.6183172302738

update machine_downtime
set Hydraulic_Oil_Temperature = '47.6183172302738'
where Hydraulic_Oil_Temperature is null;

select count(*) from machine_downtime
where Spindle_Bearing_Temperature is null;
-- 7 null values = avg 35.063698355395

update machine_downtime
set Spindle_Bearing_Temperature = '35.063698355395'
where Spindle_Bearing_Temperature is null;

select count(*) from machine_downtime
where Spindle_Vibration is null;
-- 11 null values = avg 1.00933427079148

update machine_downtime
set Spindle_Vibration = '1.00933427079148'
where Spindle_Vibration is null;

select count(*) from machine_downtime
where Tool_Vibration is null;
-- 11 null values = avg 25.4119750903976

update machine_downtime
set Tool_Vibration = '25.4119750903976'
where Tool_Vibration is null;

select count(*) from machine_downtime
where Spindle_Speed is null;
-- 6 null values = avg 20274.7923015236 approx 20275

update machine_downtime
set Spindle_Speed = '20275'
where Spindle_Speed is null;

select count(*) from machine_downtime
where Voltage is null;
-- 6 null values = avg 348.996792301523 approx 349

update machine_downtime
set Voltage = '349'
where Voltage is null;


select count(*) from machine_downtime
where Torque is null;
-- 21 null values = avg 25.2349677301369

update machine_downtime
set Torque = '25.2349677301369'
where Torque is null;

select count(*) from machine_downtime
where Cutting is null;
--7 null values = avg 2.78255114320095

update machine_downtime
set Cutting = '2.78255114320095'
where Cutting is null;

select count(*) from machine_downtime
where Hydraulic_Pressure is null or Coolant_Pressure is null or Air_System_Pressure is null or 
	  Coolant_Temperature is null or
	  Hydraulic_Oil_Temperature is null or 
	  Spindle_Bearing_Temperature is null or Spindle_Vibration  is null or 
	  Tool_Vibration is null or Spindle_speed  is null or
	  Voltage is null or Torque is null or Cutting  is null or Downtime is null;
-- All the null values are been replaced from the raw data set.

select * from machine_downtime;