package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 30, permission = "mega.car.permission.NET")
public interface BluetoothPhone {

    @PropertyDefine(publish = "btphone_list/Set", subscribe = "btphone_list", type = String.class)
    public static final int ID_CALL_HISTORY = 503316482;

    @PropertyDefine(publish = "btphone_req/Set", subscribe = "btphone_req", type = String.class)
    public static final int ID_CALL_REQUEST = 503316483;

    @PropertyDefine(publish = "BluetoothPhone/CallState", subscribe = "BluetoothPhone/CallState/Set", type = PropertyDefine.JsonString.class)
    public static final int ID_CALL_STATE = 503316481;

    @PropertyDefine(publish = "BluetoothPhone/CallStatus/Set", subscribe = "BluetoothPhone/CallStatus", type = Integer.class)
    public static final int ID_CALL_STATUS = 503316488;

    @PropertyDefine(publish = "BluetoothPhone/CallTime/Set", subscribe = "BluetoothPhone/CallTime", type = Long.class)
    public static final int ID_CALL_TIME = 503316487;

    @PropertyDefine(publish = "BluetoothPhone/ContactIcon/Set", subscribe = "BluetoothPhone/ContactIcon", type = PropertyDefine.JsonString.class)
    public static final int ID_CONTACT_ICON = 503316484;

    @PropertyDefine(publish = "BluetoothPhone/PhoneInfoWordCode/Set", subscribe = "BluetoothPhone/PhoneInfoWordCode", type = String.class)
    public static final int ID_PHONE_INFO_WORD_CODE = 503316485;

    @PropertyDefine(publish = "BluetoothPhone/PhoneNumber/Set", subscribe = "BluetoothPhone/PhoneNumber", type = String.class)
    public static final int ID_PHONE_NUMBER = 503316486;
    public static final int MGR_ID = 30;

    @PropertyDefine(publish = "BluetoothPhone/PrivacyModeText/Set", subscribe = "BluetoothPhone/PrivacyModeText", type = Integer.class)
    public static final int PRIVACY_MODE_TEXT = 503316489;

    public interface CallStatus {
        public static final int ANSWER = 1;
        public static final int CALLING = 4;
        public static final int DIAL = 2;
        public static final int HANGUP = 3;
        public static final int NO_REQUEST = 0;
    }
}
