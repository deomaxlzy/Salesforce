/**
 * Created by JohnnyLou on 2019/7/20.
 */

public interface JL_LogInterface {
    void setLogLevel(String level);
    void error(String message, String detail,Object logObject, JL_LogType logType);
    void error(Exception ex, Object logObject, JL_LogType logType);
    void warning(String message, String detail, Object logObject, JL_LogType logType);
    void info(String message, String detail, Object logObject, JL_LogType logType);
}