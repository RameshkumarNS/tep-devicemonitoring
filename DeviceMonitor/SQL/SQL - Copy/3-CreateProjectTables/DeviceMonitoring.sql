--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\3-CreateProjectTables\DeviceMonitoring -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************

DROP TABLE DEVICEMONITORING.D_BaseEvent;
CREATE TABLE DEVICEMONITORING.D_BaseEvent (cacheId integer, payload__p blob, DeviceReading_extId varchar(255), time_acknowledged$ timestamp, time_sent$ timestamp, time_created$ timestamp, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_CLEExceptionEvent;
CREATE TABLE DEVICEMONITORING.D_CLEExceptionEvent (cacheId integer, payload__p blob, time_acknowledged$ timestamp, time_sent$ timestamp, time_created$ timestamp, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_DeviceLimitSetNotification;
CREATE TABLE DEVICEMONITORING.D_DeviceLimitSetNotification (cacheId integer, payload__p blob, time_acknowledged$ timestamp, time_sent$ timestamp, time_created$ timestamp, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_ActivityIndicatorCodes;
CREATE TABLE DEVICEMONITORING.D_ActivityIndicatorCodes (cacheId integer, Add varchar(255), Delete varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_ActivityIndicatorCodes_rrf$;
CREATE TABLE DEVICEMONITORING.D_ActivityIndicatorCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_EquipmentGroupCodes;
CREATE TABLE DEVICEMONITORING.D_EquipmentGroupCodes (cacheId integer, Loco varchar(255), RailCar varchar(255), Chassis varchar(255), Intermodal varchar(255), Equipment varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_EquipmentGroupCodes_rrf$;
CREATE TABLE DEVICEMONITORING.D_EquipmentGroupCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_GVs;
CREATE TABLE DEVICEMONITORING.D_GVs (cacheId integer, LearningSampleSize integer, LearningTag varchar(255), MonitoringTag varchar(255), StatefulDataSize integer, AlertAbove varchar(255), AlertBelow varchar(255), AlertNA varchar(255), AlertTrendUP varchar(255), AlertTrendDown varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_GVs_rrf$;
CREATE TABLE DEVICEMONITORING.D_GVs_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_LogVariables;
CREATE TABLE DEVICEMONITORING.D_LogVariables (cacheId integer, LogLevelError varchar(255), LogLevelInfo varchar(255), LogLevelWarning varchar(255), LogLevelDebug varchar(255), LogLevel varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_LogVariables_rrf$;
CREATE TABLE DEVICEMONITORING.D_LogVariables_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_sensorReading;
CREATE TABLE DEVICEMONITORING.D_sensorReading (cacheId integer, deviceKey varchar(255), deviceType varchar(255), operationMode varchar(255), StatsDateTime_tm timestamp, StatsDateTime_tz varchar(100), StatsMethodName varchar(255), variance double, meanValue double, stdDevValue double, time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_sensorReading_readingValues;
CREATE TABLE DEVICEMONITORING.D_sensorReading_readingValues (pid$ bigint, valPid$ bigint, val double);
DROP TABLE DEVICEMONITORING.D_sensorReading_rrf$;
CREATE TABLE DEVICEMONITORING.D_sensorReading_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_StatusCodes;
CREATE TABLE DEVICEMONITORING.D_StatusCodes (cacheId integer, Received varchar(255), Invalid varchar(255), Deleted varchar(255), Success varchar(255), Processed varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_StatusCodes_rrf$;
CREATE TABLE DEVICEMONITORING.D_StatusCodes_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
DROP TABLE DEVICEMONITORING.D_StatusMessages;
CREATE TABLE DEVICEMONITORING.D_StatusMessages (cacheId integer, EventReceived varchar(255), MissingEquipmentInitOrNbr varchar(255), MissingEventDateTime varchar(255), MissingScannerId varchar(255), EventNotLatest varchar(255), Complete varchar(255), MissingEventCode varchar(255), time_created$ timestamp, time_last_modified$ timestamp, parent$_id$ bigint, id$ bigint not null, extId$ varchar(255), state$ char(1));
DROP TABLE DEVICEMONITORING.D_StatusMessages_rrf$;
CREATE TABLE DEVICEMONITORING.D_StatusMessages_rrf$ (pid$ bigint, propertyName$ varchar(255), id$ bigint not null);
ALTER TABLE DEVICEMONITORING.D_BaseEvent ADD PRIMARY KEY (ID$);
ALTER TABLE DEVICEMONITORING.D_CLEExceptionEvent ADD PRIMARY KEY (ID$);
ALTER TABLE DEVICEMONITORING.D_DeviceLimitSetNotification ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_ActivityIndicatorCodes_rr0 ON D_ActivityIndicatorCodes_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_ActivityIndicatorCodes ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_EquipmentGroupCodes_rrf$ ON D_EquipmentGroupCodes_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_EquipmentGroupCodes ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_GVs_rrf$ ON D_GVs_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_GVs ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_LogVariables_rrf$ ON D_LogVariables_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_LogVariables ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_sensorReading_readingValu0 ON D_sensorReading_readingValues(PID$);
ALTER INDEX DEVICEMONITORING.i_D_sensorReading_rrf$ ON D_sensorReading_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_sensorReading ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_StatusCodes_rrf$ ON D_StatusCodes_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_StatusCodes ADD PRIMARY KEY (ID$);
ALTER INDEX DEVICEMONITORING.i_D_StatusMessages_rrf$ ON D_StatusMessages_rrf$(PID$);
ALTER TABLE DEVICEMONITORING.D_StatusMessages ADD PRIMARY KEY (ID$);
DELETE DEVICEMONITORING.ClassToTable;
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.Concepts.sensorReading', 'D_sensorReading');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'readingValues', 'D_sensorReading_readingValues');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Concepts.sensorReading', 'rrf$', 'D_sensorReading_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.Events.BaseEvent', 'D_BaseEvent');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.Events.OutgoingEvents.DeviceLimitSetNotification', 'D_DeviceLimitSetNotification');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.Scorecards.GVs', 'D_GVs');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.Scorecards.GVs', 'rrf$', 'D_GVs_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Concepts.LogVariables', 'D_LogVariables');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Concepts.LogVariables', 'rrf$', 'D_LogVariables_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Events.Logging.CLEExceptionEvent', 'D_CLEExceptionEvent');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.ActivityIndicatorCodes', 'D_ActivityIndicatorCodes');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.ActivityIndicatorCodes', 'rrf$', 'D_ActivityIndicatorCodes_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.EquipmentGroupCodes', 'D_EquipmentGroupCodes');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.EquipmentGroupCodes', 'rrf$', 'D_EquipmentGroupCodes_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusCodes', 'D_StatusCodes');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusCodes', 'rrf$', 'D_StatusCodes_rrf$');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusMessages', 'D_StatusMessages');
INSERT INTO DEVICEMONITORING.ClassToTable(classname, fieldName, tablename) VALUES ('be.gen.SharedLib.Scorecards.StatusMessages', 'rrf$', 'D_StatusMessages_rrf$');
;