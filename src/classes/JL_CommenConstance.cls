/**
 * Created by JohnnyLou on 2019/7/20.
 */

public with sharing class JL_CommenConstance {
    public Enum LOG_LEVEL{
        Error,
        Warning,
        Information
    }

    public Enum LOG_TYPE{
        Apex,
        Batch,
        Schedule,
        Aura,
        VF,
        LWC,
        Other
    }
}