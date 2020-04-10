--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\3-CreateProjectTables\DeviceMonitoring -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
ALTER TABLE DEVICEMONITORING.D_StatusMessages DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_StatusMessages_rrf$;
ALTER TABLE DEVICEMONITORING.D_StatusCodes DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_StatusCodes_rrf$;
ALTER TABLE DEVICEMONITORING.D_sensorReading DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_sensorReading_rrf$;
DROP INDEX DEVICEMONITORING.i_D_sensorReading_readingValu0;
ALTER TABLE DEVICEMONITORING.D_LogVariables DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_LogVariables_rrf$;
ALTER TABLE DEVICEMONITORING.D_GVs DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_GVs_rrf$;
ALTER TABLE DEVICEMONITORING.D_EquipmentGroupCodes DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_EquipmentGroupCodes_rrf$;
ALTER TABLE DEVICEMONITORING.D_ActivityIndicatorCodes DROP PRIMARY KEY;
DROP INDEX DEVICEMONITORING.i_D_ActivityIndicatorCodes_rr0;
ALTER TABLE DEVICEMONITORING.D_DeviceLimitSetNotification DROP PRIMARY KEY;
ALTER TABLE DEVICEMONITORING.D_CLEExceptionEvent DROP PRIMARY KEY;
ALTER TABLE DEVICEMONITORING.D_BaseEvent DROP PRIMARY KEY;
DROP TABLE DEVICEMONITORING.D_StatusMessages_rrf$;
DROP TABLE DEVICEMONITORING.D_StatusMessages;
DROP TABLE DEVICEMONITORING.D_StatusCodes_rrf$;
DROP TABLE DEVICEMONITORING.D_StatusCodes;
DROP TABLE DEVICEMONITORING.D_sensorReading_rrf$;
DROP TABLE DEVICEMONITORING.D_sensorReading_readingValues;
DROP TABLE DEVICEMONITORING.D_sensorReading;
DROP TABLE DEVICEMONITORING.D_LogVariables_rrf$;
DROP TABLE DEVICEMONITORING.D_LogVariables;
DROP TABLE DEVICEMONITORING.D_GVs_rrf$;
DROP TABLE DEVICEMONITORING.D_GVs;
DROP TABLE DEVICEMONITORING.D_EquipmentGroupCodes_rrf$;
DROP TABLE DEVICEMONITORING.D_EquipmentGroupCodes;
DROP TABLE DEVICEMONITORING.D_ActivityIndicatorCodes_rrf$;
DROP TABLE DEVICEMONITORING.D_ActivityIndicatorCodes;
DROP TABLE DEVICEMONITORING.D_DeviceLimitSetNotification;
DROP TABLE DEVICEMONITORING.D_CLEExceptionEvent;
DROP TABLE DEVICEMONITORING.D_BaseEvent;
DELETE DEVICEMONITORING.StateMachineTimeout$$;
DELETE DEVICEMONITORING.ClassToTable;
DELETE DEVICEMONITORING.BEAliases;
DELETE DEVICEMONITORING.ClassRegistry;
DELETE DEVICEMONITORING.WorkItems;
DELETE DEVICEMONITORING.ObjectTable;
