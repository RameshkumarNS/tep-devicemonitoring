--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************
-- The following script can be used for deleting entities that have been marked as deleted in ObjectTable;
DELETE FROM D_sensorReading WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.Concepts.sensorReading');
DELETE FROM D_LogVariables WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Concepts.LogVariables');
DELETE FROM D_CLEExceptionEvent WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Events.Logging.CLEExceptionEvent');
DELETE FROM D_ActivityIndicatorCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.ActivityIndicatorCodes');
DELETE FROM D_EquipmentGroupCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.EquipmentGroupCodes');
DELETE FROM D_StatusCodes WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.StatusCodes');
DELETE FROM D_StatusMessages WHERE id$ IN (SELECT GLOBALID FROM OBJECTTABLE WHERE ISDELETED=1 and CLASSNAME='be.gen.SharedLib.Scorecards.StatusMessages');
DELETE FROM OBJECTTABLE WHERE ISDELETED = 1 AND TIMEDELETED <= (SELECT (DAYS(current date) - DAYS(TO_DATE('1970-01-02','YYYY-MM-DD'))) * (86400000) FROM sysibm.sysdummy1);
