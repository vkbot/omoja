package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 106, permission = TBoxSignal.PERMISSION)
public interface TBoxSignal {
    public static final int MGR_ID = 106;
    public static final String PERMISSION = "mega.car.permission.SEQUOIA";

    @PropertyDefine(publish = "TBox/5GSwitch/Set", subscribe = "TBox/5GSwitch", type = Integer.class)
    public static final int TBOX_5G_SWITCH = 1778384918;

    @PropertyDefine(changeMode = 2, topic = "TBox/CallStatus", type = String.class)
    public static final int TBOX_BEICALL_UPLOAD_CALL_STATUS = 1778384917;

    @PropertyDefine(changeMode = 2, topic = "TBox/GnssInfo", type = String.class)
    public static final int TBOX_GNSSINFO_GNSS_INFO = 1778384916;

    @PropertyDefine(publish = "TBox/SendUnit/Response", subscribe = "TBox/SendUnit/Request", type = String.class)
    public static final int TBOX_SEND_UNIT = 1778384920;

    @PropertyDefine(changeMode = 2, topic = "TBox/AntState", type = String.class)
    public static final int TBOX_SYSTEMINFO_ANT_STATE = 1778384913;

    @PropertyDefine(changeMode = 2, topic = "TBox/BleModuleInfo", type = String.class)
    public static final int TBOX_SYSTEMINFO_BLE_MODULE_INFO = 1778384898;

    @PropertyDefine(changeMode = 2, topic = "TBox/CallNumberList", type = String.class)
    public static final int TBOX_SYSTEMINFO_CALL_NUMBER_LIST = 1778384915;

    @PropertyDefine(changeMode = 2, topic = "TBox/CanConfig", type = String.class)
    public static final int TBOX_SYSTEMINFO_CAN_CONFIG = 1778384910;

    @PropertyDefine(changeMode = 2, topic = "TBox/CellInfo", type = String.class)
    public static final int TBOX_SYSTEMINFO_CELL_INFO = 1778384905;

    @PropertyDefine(changeMode = 2, topic = "TBox/CertificateIssuedMark", type = String.class)
    public static final int TBOX_SYSTEMINFO_CERTIFICATE_ISSUED_MARK = 1778384903;

    @PropertyDefine(changeMode = 2, topic = "TBox/CurrentMonthTalkTime", type = String.class)
    public static final int TBOX_SYSTEMINFO_CURRENT_MONTH_TALK_TIME = 1778384906;

    @PropertyDefine(changeMode = 2, topic = "TBox/EcuVersion", type = String.class)
    public static final int TBOX_SYSTEMINFO_ECU_VERSION = 1778384909;

    @PropertyDefine(changeMode = 2, topic = "TBox/ImeiInfo", type = String.class)
    public static final int TBOX_SYSTEMINFO_IMEI_INFO = 1778384901;

    @PropertyDefine(changeMode = 2, topic = "TBox/Kl15State", type = String.class)
    public static final int TBOX_SYSTEMINFO_KL15_STATE = 1778384911;

    @PropertyDefine(changeMode = 2, topic = "TBox/MicState", type = String.class)
    public static final int TBOX_SYSTEMINFO_MIC_STATE = 1778384908;

    @PropertyDefine(changeMode = 2, topic = "TBox/NetworkState", type = String.class)
    public static final int TBOX_SYSTEMINFO_NETWORD_STATE = 1778384914;

    @PropertyDefine(topic = "TBox/SetCallNumber", type = String.class)
    public static final int TBOX_SYSTEMINFO_SET_CALL_NUMBER = 1778384904;

    @PropertyDefine(changeMode = 2, topic = "TBox/SimCardInfo", type = String.class)
    public static final int TBOX_SYSTEMINFO_SIM_CARD_INFO = 1778384900;

    @PropertyDefine(changeMode = 2, topic = "TBox/SpkState", type = String.class)
    public static final int TBOX_SYSTEMINFO_SPK_STATE = 1778384912;

    @PropertyDefine(changeMode = 2, topic = "TBox/VersionInfo", type = String.class)
    public static final int TBOX_SYSTEMINFO_TBOX_VERSION_INFO = 1778384897;

    @PropertyDefine(changeMode = 2, topic = "TBox/TspConnectionState", type = String.class)
    public static final int TBOX_SYSTEMINFO_TSP_CONNECTION_STATE = 1778384907;

    @PropertyDefine(changeMode = 2, topic = "TBox/WorkModel", type = String.class)
    public static final int TBOX_SYSTEMINFO_WORK_MODEL = 1778384902;

    @PropertyDefine(publish = "TBox/V2XSwitch/Set", subscribe = "TBox/V2XSwitch", type = Integer.class)
    public static final int TBOX_V2X_SWITCH = 1778384919;
}
