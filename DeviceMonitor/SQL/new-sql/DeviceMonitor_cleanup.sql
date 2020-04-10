--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
DELETE D_CLEExceptionEvent;
DELETE D_ActivityIndicatorCodes;
DELETE D_ActivityIndicatorCodes_rrf$;
DELETE D_EquipmentGroupCodes;
DELETE D_EquipmentGroupCodes_rrf$;
DELETE D_LogVariables;
DELETE D_LogVariables_rrf$;
DELETE D_sensorReading;
DELETE D_sensorReading_readingValues;
DELETE D_sensorReading_rrf$;
DELETE D_StatusCodes;
DELETE D_StatusCodes_rrf$;
DELETE D_StatusMessages;
DELETE D_StatusMessages_rrf$;
DELETE StateMachineTimeout$$;
DELETE WorkItems;
DELETE ObjectTable;
;
