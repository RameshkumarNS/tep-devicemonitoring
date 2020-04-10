--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
ALTER TABLE D_StatusMessages DROP PRIMARY KEY;
DROP INDEX i_D_StatusMessages_rrf$0;
ALTER TABLE D_StatusCodes DROP PRIMARY KEY;
DROP INDEX i_D_StatusCodes_rrf$0;
ALTER TABLE D_sensorReading DROP PRIMARY KEY;
DROP INDEX i_D_sensorReading_rrf$0;
DROP INDEX i_D_sensorReading_readingValu1;
ALTER TABLE D_LogVariables DROP PRIMARY KEY;
DROP INDEX i_D_LogVariables_rrf$0;
ALTER TABLE D_EquipmentGroupCodes DROP PRIMARY KEY;
DROP INDEX i_D_EquipmentGroupCodes_rrf$0;
ALTER TABLE D_ActivityIndicatorCodes DROP PRIMARY KEY;
DROP INDEX i_D_ActivityIndicatorCodes_rr1;
ALTER TABLE D_CLEExceptionEvent DROP PRIMARY KEY;
DROP TABLE D_StatusMessages_rrf$;
DROP TABLE D_StatusMessages;
DROP TABLE D_StatusCodes_rrf$;
DROP TABLE D_StatusCodes;
DROP TABLE D_sensorReading_rrf$;
DROP TABLE D_sensorReading_readingValues;
DROP TABLE D_sensorReading;
DROP TABLE D_LogVariables_rrf$;
DROP TABLE D_LogVariables;
DROP TABLE D_EquipmentGroupCodes_rrf$;
DROP TABLE D_EquipmentGroupCodes;
DROP TABLE D_ActivityIndicatorCodes_rrf$;
DROP TABLE D_ActivityIndicatorCodes;
DROP TABLE D_CLEExceptionEvent;
DELETE StateMachineTimeout$$;
DELETE ClassToTable;
DELETE BEAliases;
DELETE ClassRegistry;
DELETE WorkItems;
DELETE ObjectTable;
