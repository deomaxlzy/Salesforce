/**
 * Created by JohnnyLou on 2019/7/20.
 */

public without sharing class JL_DBLog implements JL_LogInterface{
    public void error(String message, String detail,Object logObject, JL_LogType logType) {
        JL_Log__c log = createLog(message, detail, logObject, logType);
        log.Level__c = JL_LogLevel.Error.name();
        insert log;
    }

    public void error(Exception ex, Object logObject, JL_LogType logType) {
        JL_Log__c log = createLog(ex.getMessage(), ex.getStackTraceString(), logObject, logType);
        log.Level__c = JL_LogLevel.Error.name();
        insert log;
    }

    public void warning(String message, String detail, Object logObject, JL_LogType logType) {
        JL_Log__c log = createLog(message, detail, logObject, logType);
        log.Level__c = JL_LogLevel.Warning.name();
        insert log;
    }

    public void Debug(String message, String detail, Object logObject, JL_LogType logType) {
        JL_Log__c log = createLog(message, detail, logObject, logType);
        log.Level__c = JL_LogLevel.Debug.name();
        insert log;
    }

    public void info(String message, String detail, Object logObject, JL_LogType logType) {
        JL_Log__c log = createLog(message, detail, logObject, logType);
        log.Level__c = JL_LogLevel.Information.name();
        insert log;
    }

    private JL_Log__c createLog (String message, String detail, Object logObject, JL_LogType logType) {
        JL_Log__c log = new JL_Log__c();
        log.Message__c = message;
        log.Detail__c = detail;
        log.Object__c = JL_LogUtility.getObjectType(logObject);
        log.Type__c = logType.name();
        return log;
    }
}