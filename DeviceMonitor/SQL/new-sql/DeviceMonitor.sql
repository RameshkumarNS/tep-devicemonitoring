--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************

DROP TABLE D_CLEExceptionEvent;
CREATE TABLE D_CLEExceptionEvent (cacheId integer, payload__p blob, time_acknowledged$ timestamp, time_sent$ timestamp, time_created$ timestamp, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_ActivityIndicatorCodes;
CREATE TABLE D_ActivityIndicatorCodes (cacheId integer, Add varchar(255), Delete varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_ActivityIndicatorCodes_rrf$;
CREATE TABLE D_ActivityIndicatorCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE D_EquipmentGroupCodes;
CREATE TABLE D_EquipmentGroupCodes (cacheId integer, Loco varchar(255), RailCar varchar(255), Chassis varchar(255), Intermodal varchar(255), Equipment varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_EquipmentGroupCodes_rrf$;
CREATE TABLE D_EquipmentGroupCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE D_LogVariables;
CREATE TABLE D_LogVariables (cacheId integer, LogLevelError varchar(255), LogLevelInfo varchar(255), LogLevelWarning varchar(255), LogLevelDebug varchar(255), LogLevel varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_LogVariables_rrf$;
CREATE TABLE D_LogVariables_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE D_sensorReading;
CREATE TABLE D_sensorReading (cacheId integer, deviceKey varchar(255), deviceType varchar(255), operationMode varchar(255), StatsDateTime_tm timestamp, StatsDateTime_tz varchar(100), StatsMethodName varchar(255), variance double, meanValue double, stdDevValue double, time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_sensorReading_readingValues;
CREATE TABLE D_sensorReading_readingValues (pid$ bigint, valPid$ bigint, val double);
DROP TABLE D_sensorReading_rrf$;
CREATE TABLE D_sensorReading_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE D_StatusCodes;
CREATE TABLE D_StatusCodes (cacheId integer, Received varchar(255), Invalid varchar(255), Deleted varchar(255), Success varchar(255), Processed varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_StatusCodes_rrf$;
CREATE TABLE D_StatusCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE D_StatusMessages;
CREATE TABLE D_StatusMessages (cacheId integer, EventReceived varchar(255), MissingEquipmentInitOrNbr varchar(255), MissingEventDateTime varchar(255), MissingScannerId varchar(255), EventNotLatest varchar(255), Complete varchar(255), MissingEventCode varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE D_StatusMessages_rrf$;
CREATE TABLE D_StatusMessages_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
ALTER TABLE D_CLEExceptionEvent ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_ActivityIndicatorCodes_rr1 ON D_ActivityIndicatorCodes_rrf$(PID$);
ALTER TABLE D_ActivityIndicatorCodes ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_EquipmentGroupCodes_rrf$0 ON D_EquipmentGroupCodes_rrf$(PID$);
ALTER TABLE D_EquipmentGroupCodes ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_LogVariables_rrf$0 ON D_LogVariables_rrf$(PID$);
ALTER TABLE D_LogVariables ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_sensorReading_readingValu1 ON D_sensorReading_readingValues(PID$);
CREATE INDEX i_D_sensorReading_rrf$0 ON D_sensorReading_rrf$(PID$);
ALTER TABLE D_sensorReading ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_StatusCodes_rrf$0 ON D_StatusCodes_rrf$(PID$);
ALTER TABLE D_StatusCodes ADD PRIMARY KEY (ID$);
CREATE INDEX i_D_StatusMessages_rrf$0 ON D_StatusMessages_rrf$(PID$);
ALTER TABLE D_StatusMessages ADD PRIMARY KEY (ID$);
DELETE ClassToTable;
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.Concepts.sensorReading', 'D_sensorReading');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'readingValues', 'D_sensorReading_readingValues');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'rrf$', 'D_sensorReading_rrf$');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Concepts.LogVariables', 'D_LogVariables');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Concepts.LogVariables', 'rrf$', 'D_LogVariables_rrf$');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Events.Logging.CLEExceptionEvent', 'D_CLEExceptionEvent');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.ActivityIndicatorCodes', 'D_ActivityIndicatorCodes');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.ActivityIndicatorCodes', 'rrf$', 'D_ActivityIndicatorCodes_rrf$');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.EquipmentGroupCodes', 'D_EquipmentGroupCodes');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.EquipmentGroupCodes', 'rrf$', 'D_EquipmentGroupCodes_rrf$');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusCodes', 'D_StatusCodes');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusCodes', 'rrf$', 'D_StatusCodes_rrf$');
INSERT INTO ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusMessages', 'D_StatusMessages');
INSERT INTO ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusMessages', 'rrf$', 'D_StatusMessages_rrf$');
;
