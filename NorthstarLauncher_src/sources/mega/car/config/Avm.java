package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 50, permission = "mega.car.permission.NET")
public interface Avm {

    @PropertyDefine(changeMode = 2, publish = "Ais/android-cmd/Set", serializable = false, subscribe = "Ais/android-cmd", type = String.class)
    public static final int ID_ANDROID_REPLY = 838860807;

    @PropertyDefine(changeMode = 2, publish = "icinput/event/Set", serializable = false, subscribe = "icinput/event", type = String.class)
    public static final int ID_AVM_KEYCODE_APA = 838860805;
    public static final int MGR_ID = 50;
}
