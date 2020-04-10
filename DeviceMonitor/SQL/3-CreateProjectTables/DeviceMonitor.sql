--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor-TEST.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************

DROP TABLE D_sensorReading;
CREATE TABLE D_sensorReading (cacheId integer, deviceKey varchar(255), deviceType varchar(255), operationMode varchar(255), StatsDateTime_tm timestamp, StatsDateTime_tz varchar(100), StatsMethodName varchar(255), variance double, meanValue double, stdDevValue double, time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));

DROP TABLE D_sensorReading_readingValues;
CREATE TABLE D_sensorReading_readingValues (pid$ bigint, valPid$ bigint, val double);

DROP TABLE D_sensorReading_rrf$;
CREATE TABLE D_sensorReading_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
CREATE INDEX i_D_sensorReading_readingValu1 ON D_sensorReading_readingValues(PID$);
CREATE INDEX i_D_sensorReading_rrf$0 ON D_sensorReading_rrf$(PID$);

ALTER TABLE D_sensorReading ADD PRIMARY KEY (ID$);

DELETE ClassToTable;
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.Concepts.sensorReading', 'D_sensorReading');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'readingValues', 'D_sensorReading_readingValues');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'rrf$', 'D_sensorReading_rrf$');
;
