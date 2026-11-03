package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 53, permission = MegaSystemSettings.PERMISSION)
public interface MegaSystemSettings {
    public static final int MGR_ID = 53;
    public static final String PERMISSION = "mega.car.permission.CarSettings";
    public static final String SERVICE_NAME = "CarSettings";

    @PropertyDefine(source = 5, topic = "time_12_24", type = Integer.class)
    public static final int TIME_FORMAT_24_HOURS = 889192449;
}
