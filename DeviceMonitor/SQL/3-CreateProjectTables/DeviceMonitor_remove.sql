--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor-TEST.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
ALTER TABLE D_sensorReading DROP PRIMARY KEY;
DROP INDEX i_D_sensorReading_rrf$0;
DROP INDEX i_D_sensorReading_readingValu1;
DROP TABLE D_sensorReading_rrf$;
DROP TABLE D_sensorReading_readingValues;
DROP TABLE D_sensorReading;
DELETE StateMachineTimeout$$;
DELETE ClassToTable;
DELETE BEAliases;
DELETE ClassRegistry;
DELETE WorkItems;
DELETE ObjectTable;
