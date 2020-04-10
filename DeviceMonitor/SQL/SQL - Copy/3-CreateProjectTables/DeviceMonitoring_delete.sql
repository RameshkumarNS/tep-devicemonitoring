--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\3-CreateProjectTables\DeviceMonitoring -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
-- The following script can be used for deleting entities that have been marked as deleted in ObjectTable;
DELETE FROM DEVICEMONITORING.D_sensorReading WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.Concepts.sensorReading');
DELETE FROM DEVICEMONITORING.D_BaseEvent WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.Events.BaseEvent');
DELETE FROM DEVICEMONITORING.D_DeviceLimitSetNotification WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.Events.OutgoingEvents.DeviceLimitSetNotification');
DELETE FROM DEVICEMONITORING.D_GVs WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.Scorecards.GVs');
DELETE FROM DEVICEMONITORING.D_LogVariables WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Concepts.LogVariables');
DELETE FROM DEVICEMONITORING.D_CLEExceptionEvent WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Events.Logging.CLEExceptionEvent');
DELETE FROM DEVICEMONITORING.D_ActivityIndicatorCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.ActivityIndicatorCodes');
DELETE FROM DEVICEMONITORING.D_EquipmentGroupCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.EquipmentGroupCodes');
DELETE FROM DEVICEMONITORING.D_StatusCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.StatusCodes');
DELETE FROM DEVICEMONITORING.D_StatusMessages WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.StatusMessages');
DELETE FROM DEVICEMONITORING.OBJECTTABLE WHERE ISDELETED = 1 AND TIMEDELETED <= (SELECT (DAYS(current date) - DAYS(TO_DATE('1970-01-02','YYYY-MM-DD'))) * (86400000) FROM sysibm.sysdummy1);
