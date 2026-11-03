package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 46, permission = "mega.car.permission.CAR_POWER")
public interface QNX {
    public static final int MGR_ID = 46;

    @PropertyDefine(publish = "MIC/Mute/Set", subscribe = "MIC/Mute", type = Integer.class)
    public static final int MIC_MUTE = 771751939;
    public static final String PERMISSION = "mega.car.permission.CAR_POWER";

    @PropertyDefine(publish = "misc_service/command/reboot_request", serializable = false, type = String.class)
    public static final int REBOOT_REQUEST = 771751941;
    public static final String SERVICE_NAME = "QNX";

    @PropertyDefine(publish = "SoC/AbnormalEvent/Ack", serializable = false, type = String.class)
    public static final int SOC_ABNORMAL_EVENT_ACK = 771751937;

    @PropertyDefine(changeMode = 2, serializable = false, subscribe = "SoC/AbnormalEvent/Report", type = String.class)
    public static final int SOC_ABNORMAL_EVENT_REPORT = 771751938;

    @PropertyDefine(changeMode = 2, subscribe = "mega/ssr_event/notify", type = String.class)
    public static final int SSR_EVENT = 771751940;
}
