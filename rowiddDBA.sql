SELECT EMPLOYEE_ID, ROWID, ROWNUM, DBMS_ROWID.ROWID_ROW_NUMBER(D.ROWID) AS ROWNUMBER,
                                   DBMS_ROWID.ROWID_BLOCK_NUMBER(D.ROWID) AS BLOCK_NUMBER,
                                   OBJECT_NAME AS OBJECT,
                                   DBMS_ROWID.ROWID_RELATIVE_FNO(D.ROWID) AS "FILE"
FROM angel.DEMO8 D
JOIN DBA_OBJECTS ON (DBMS_ROWID.ROWID_OBJECT(D.ROWID) = OBJECT_ID)
JOIN DBA_DATA_FILES ON (DBMS_ROWID.ROWID_RELATIVE_FNO(D.ROWID) = FILE_ID)
/
