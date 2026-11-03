package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 47, permission = "mega.car.permission.LOCAL_EVENT", source = 4)
public interface LocalEvent {

    @PropertyDefine(changeMode = 2, type = Power.ReportEntry.class)
    public static final int ID_ANDROID_POWER_STATUS = 788529160;

    @PropertyDefine(type = Integer.class)
    public static final int ID_APP_SCREEN_ON_OFF_EVENT = 788529162;

    @PropertyDefine(type = Integer.class)
    public static final int ID_APP_SECOND_SCREEN_ON_OFF_EVENT = 788529163;

    @PropertyDefine(type = Integer.class)
    public static final int ID_AVM_CALIBRATION_RESULT = 788529159;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CHECK_QNX_LICENSE = 788529161;

    @PropertyDefine(type = Integer.class)
    public static final int ID_EMERGENCY_RECORD_STATUS = 788529157;

    @PropertyDefine(type = Integer.class)
    public static final int ID_EMERGENCY_RECORD_SWITCH = 788529156;

    @PropertyDefine(type = Integer.class)
    public static final int ID_HEAD_LIGHT_EVENT = 788529153;

    @PropertyDefine(type = Integer.class)
    public static final int ID_ONEKEY_POWEROFF_EVENT = 788529154;

    @PropertyDefine(type = Integer.class)
    public static final int ID_SCREEN_ON_OFF_ACOUST = 788529155;

    @PropertyDefine(type = Integer.class)
    public static final int ID_SCREEN_ON_OFF_EVENT = 788529158;
    public static final int MGR_ID = 47;
}
