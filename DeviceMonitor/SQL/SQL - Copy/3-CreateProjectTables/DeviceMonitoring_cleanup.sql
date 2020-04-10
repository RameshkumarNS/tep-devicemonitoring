--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\3-CreateProjectTables\DeviceMonitoring -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
DELETE DEVICEMONITORING.D_BaseEvent;
DELETE DEVICEMONITORING.D_CLEExceptionEvent;
DELETE DEVICEMONITORING.D_DeviceLimitSetNotification;
DELETE DEVICEMONITORING.D_ActivityIndicatorCodes;
DELETE DEVICEMONITORING.D_ActivityIndicatorCodes_rrf$;
DELETE DEVICEMONITORING.D_EquipmentGroupCodes;
DELETE DEVICEMONITORING.D_EquipmentGroupCodes_rrf$;
DELETE DEVICEMONITORING.D_GVs;
DELETE DEVICEMONITORING.D_GVs_rrf$;
DELETE DEVICEMONITORING.D_LogVariables;
DELETE DEVICEMONITORING.D_LogVariables_rrf$;
DELETE DEVICEMONITORING.D_sensorReading;
DELETE DEVICEMONITORING.D_sensorReading_readingValues;
DELETE DEVICEMONITORING.D_sensorReading_rrf$;
DELETE DEVICEMONITORING.D_StatusCodes;
DELETE DEVICEMONITORING.D_StatusCodes_rrf$;
DELETE DEVICEMONITORING.D_StatusMessages;
DELETE DEVICEMONITORING.D_StatusMessages_rrf$;
DELETE DEVICEMONITORING.StateMachineTimeout$$;
DELETE DEVICEMONITORING.WorkItems;
DELETE DEVICEMONITORING.ObjectTable;
;
