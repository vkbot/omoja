package mega.car.config;

import mega.car.annotation.DomainDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 19, permission = "mega.car.permission.OTA")
public interface Ota {
    public static final int ID_CURRENT_UPDATE_TASK_INFO = 318767111;
    public static final int ID_DISPUPDA_NOTSATISFY = 318767108;
    public static final int ID_DOWNLOAD_PERCENT = 318767118;
    public static final int ID_EXPECTED_UPDATE_TIME = 318767117;
    public static final int ID_SCHEDULE_TIME_REQ = 318767106;
    public static final int ID_TASK_STATUS = 318767116;
    public static final int ID_TASK_TYPE = 318767115;
    public static final int ID_UPDATE_FAILED_INFO = 318767113;
    public static final int ID_UPDATE_RETRY = 318767107;
    public static final int ID_UPDATE_RETRY_ENABLEST = 318767114;
    public static final int ID_UPDATE_SUCCESS_INFO = 318767112;
    public static final int ID_UPDATING_INFO = 318767120;
    public static final int ID_UPDATING_PERCENT = 318767119;
    public static final int ID_USER_OPERATION_TRGGER = 318767105;
    public static final int ID_VEHICLE_VERSION = 318767109;
    public static final int ID_VEHICLE_VERSION_INFO = 318767110;
    public static final int MGR_ID = 19;

    public interface TaskStatus {
        public static final int DEFAULT = 0;
        public static final int OTACANCELLED = 10;
        public static final int OTAEXECUTINGFLASH = 5;
        public static final int OTAEXECUTINGRETRY = 6;
        public static final int OTAEXECUTINGROLLBACK = 7;
        public static final int OTAFAILED = 9;
        public static final int OTANOTEXCUTINGBYCONDITION = 4;
        public static final int OTASCHEDULED = 3;
        public static final int OTASUCCESSED = 8;
        public static final int PACKAGEDOWNLOADEDNOTSCHEDULE = 2;
        public static final int PACKAGEDOWNLOADING = 1;
    }

    public interface TaskType {
        public static final int DEFAULT = 0;
        public static final int MANDATORY = 3;
        public static final int NOTICE = 1;
        public static final int SILENT = 2;
    }

    public interface UserOperationTrgger {
        public static final int DEFAULT = 0;
        public static final int MODIFYSCHEDULETIME = 3;
        public static final int NOTSCHEDULETIME = 2;
        public static final int RETRYUPDATEAFTERFAILED = 4;
        public static final int SCHEDULEDTIME = 1;
    }
}
