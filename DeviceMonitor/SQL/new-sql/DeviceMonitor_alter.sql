--**********************************************************************
--	TIBCO BusinessEvents 5.1.4.056 (2014-10-31)
--	Using arguments :-c C:/Projects/TEP/DeviceMonitoring/DeviceMonitor/Deployments/DeviceMonitor.cdd -o C:\Projects\TEP\DeviceMonitoring\DeviceMonitor\SQL\DeviceMonitor -d db2 -ansi true 
--	Copyright(c) 2004-2014 TIBCO Software Inc. All rights reserved.
--**********************************************************************

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
