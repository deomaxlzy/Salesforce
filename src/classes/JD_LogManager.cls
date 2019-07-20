/**
 * Created by JohnnyLou on 2019/7/20.
 */

public without sharing class JD_LogManager {
    private static JL_DBLog myDBLog {get;set;}

    public static JL_DBLog DBLog {
        get {
            if (myDBLog != null) return myDBLog;
            myDBLog = new JL_DBLog();
            return myDBLog;
        }
    }
}