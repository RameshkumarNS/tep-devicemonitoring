--*****************************************************************************
--    Description: This file defines all necessary tables needed to manage
--    IBM DB2 persistence of BusinessEvents® working memory objects
--*****************************************************************************

/** This table stores all the mappings between BE classes (full generated path) and corresponding DB2 tables*/
DROP TABLE DEVICEMONITORING.ClassToTable;
CREATE TABLE DEVICEMONITORING.ClassToTable (className varchar (255), fieldName varchar(255), tableName varchar(255) );

/** This table persists the EAR wide next cache Id */
DROP TABLE DEVICEMONITORING.CacheIds;
CREATE TABLE DEVICEMONITORING.CacheIds (cacheIdGeneratorName varchar (255), nextCacheId integer);

DROP TABLE DEVICEMONITORING.BEAliases;
CREATE TABLE DEVICEMONITORING.BEAliases (beName varchar(255), alias varchar(255));

DROP TABLE DEVICEMONITORING.ClassRegistry;
CREATE TABLE DEVICEMONITORING.ClassRegistry (className varchar(255), typeId integer);

DROP TABLE DEVICEMONITORING.StateMachineTimeout$$;
CREATE TABLE DEVICEMONITORING.StateMachineTimeout$$ (CACHEID bigint, smid bigint, propertyName varchar(255), currentTime bigint, nextTime bigint, closure varchar(255), ttl bigint, fired bigint, time_created$ timestamp, id$ bigint, extId$ varchar(2000), state$ char(1));

DROP TABLE DEVICEMONITORING.WorkItems;
CREATE TABLE DEVICEMONITORING.WorkItems (workKey varchar(2000), workQueue varchar(255), workStatus integer, scheduledTime bigint, work blob);

CREATE INDEX DEVICEMONITORING.i_WorkItems on DEVICEMONITORING.WorkItems (workQueue, scheduledTime);

-- DB2 Server has index key length limitation
--CREATE UNIQUE INDEX i_WorkItemsU on WorkItems(workQueue, workKey);

DROP TABLE DEVICEMONITORING.ObjectTable;
CREATE TABLE DEVICEMONITORING.ObjectTable (GLOBALID bigint, SITEID bigint, ID bigint, EXTID varchar(255), CLASSNAME varchar(255), ISDELETED integer, TIMEDELETED bigint);

CREATE UNIQUE INDEX DEVICEMONITORING.i_ObjectTable1 on DEVICEMONITORING.ObjectTable(GLOBALID);

CREATE INDEX DEVICEMONITORING.i_ObjectTable2 on DEVICEMONITORING.ObjectTable(EXTID);

DROP TABLE DEVICEMONITORING.ProcessLoopState;
CREATE TABLE DEVICEMONITORING.ProcessLoopState (loopKey varchar(256) not null, jobKey varchar(256), taskName varchar(256), counter integer, maxCounter integer, isComplete smallint, primary key (loopkey));

DROP TABLE DEVICEMONITORING.ProcessMergeState;
CREATE TABLE DEVICEMONITORING.ProcessMergeState (mergeKey varchar(256), tokenCount smallint, expectedTokenCount smallint, isComplete smallint, processId bigint, processTime bigint, transitionName varchar(256), isError smallint);
CREATE INDEX DEVICEMONITORING.i_ProcessMergeState1 on DEVICEMONITORING.ProcessMergeState(mergeKey);
