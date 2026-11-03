package vendor.mega.hardware.automotive.vehicle.northstar.V2_0;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class VehiclePropertyNorthstar {
    public static final int ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM = 544215127;
    public static final int ADAS_NTF_LANELINE_LIST_ICM = 544215129;
    public static final int ADAS_NTF_OTHER_SYMBOL_ICM = 544215137;
    public static final int ADAS_NTF_PLANNING_PATH_ICM = 544215136;
    public static final int ADAS_NTF_STATIC_OBJECT_LIST_ICM = 544215128;
    public static final int ADS_AUTONOMOUS_SETTING = 537923652;
    public static final int ADS_GET_PACKAGE_DATA = 544215109;
    public static final int ADS_NTF_ADS_AOM_STATUS_INFO = 544215113;
    public static final int ADS_NTF_ADS_DB_INFO = 544215110;
    public static final int ADS_NTF_AOM_SDK_STATUS = 541069383;
    public static final int ADS_NTF_DYNAMIC_OBJECT_LIST_HD = 544215124;
    public static final int ADS_NTF_EXT_MM_RES_WLNK = 544215107;
    public static final int ADS_NTF_FUNC_STATE_HD = 544215123;
    public static final int ADS_NTF_FUNC_STATE_HD_SPEED = 541069424;
    public static final int ADS_NTF_LANE_CON_REL_CAL_RESULT = 544215112;
    public static final int ADS_NTF_PLANNING_PATH_HD = 544215126;
    public static final int ADS_NTF_STATIC_OBJECT_LIST_HD = 544215125;
    public static final int ADS_START_ROUTE_MATCHING_BY_PB = 537923665;
    public static final int ADS_STOP_ROUTE_MATCHING = 541069392;
    public static final int ADS_UPDATE_NAV_STS_INFO = 541069394;
    public static final int DMC_GNSS_TYPE = 541069376;
    public static final int DZ_APA_FUNC_OPERATE = 537923683;
    public static final int DZ_APA_PARKING_FUNC_MOD = 541069410;
    public static final int DZ_MRA_OPERATION_ID = 541069413;
    public static final int GNSS_INFO_1 = 537923640;
    public static final int GNSS_INFO_2 = 537923641;
    public static final int IDCU_GNSS_TYPE = 541069377;
    public static final int INVALID = 0;
    public static final int IVI_RENDER_DB_INFO = 544215106;
    public static final int NTF_AVM_FAIL_STS = 537923688;
    public static final int NTF_CALIBRATION_TRIGGER = 541069415;
    public static final int NTF_CPA_FCN_OPERATING = 541069414;
    public static final int NTF_HPA_FCN_OPERATING = 537923684;
    public static final int NTF_VOICE_CONTROL_INFO = 544215145;
    public static final int TBOX_APP_T = 537923619;
    public static final int TBOX_BEICALL = 537923632;
    public static final int TBOX_BLE_MODULE_INFO = 537923591;
    public static final int TBOX_CAN_CONFIG = 537923616;
    public static final int TBOX_CELL_INFO = 537923604;
    public static final int TBOX_CERTIFICATE_ISSUED_MARK = 537923602;
    public static final int TBOX_CURREN_MONTH_TALK_TIME = 537923606;
    public static final int TBOX_ECU_VERSION = 537923609;
    public static final int TBOX_IMEI_INFO = 537923600;
    public static final int TBOX_KL15_STATE = 541069345;
    public static final int TBOX_MIC_STATE = 541069336;
    public static final int TBOX_NETWORK_STATUS = 537923588;
    public static final int TBOX_OS_RTC = 541069348;
    public static final int TBOX_OTA_APP_T_CANCEL = 541069350;
    public static final int TBOX_OTA_APP_T_INSTALL = 541069312;
    public static final int TBOX_OTA_APP_T_SET = 537923621;
    public static final int TBOX_OTA_APP_T_SYNC = 537923623;
    public static final int TBOX_OTA_REMOTE_APP_T_CANCEL = 537923587;
    public static final int TBOX_OTA_REMOTE_APP_T_SET = 537923586;
    public static final int TBOX_OTA_REMOTE_INSTALL = 537923585;
    public static final int TBOX_OTA_STATE = 537923624;
    public static final int TBOX_READY = 541069346;
    public static final int TBOX_SET_CALL_NUMBER = 537923603;
    public static final int TBOX_SIM_CARD_INFO = 537923593;
    public static final int TBOX_TSP_CONNECTION_STATE = 541069335;
    public static final int TBOX_UPLOAD_BEICALL_STS = 537923625;
    public static final int TBOX_VEHICLE_DIAG = 541069333;
    public static final int TBOX_VEHICLE_DIAG_STATUS = 537923589;
    public static final int TBOX_VERSION_INFO = 537923590;
    public static final int TBOX_VIN = 537923592;
    public static final int TBOX_WORK_MODEL = 541069329;
    public static final int USB_LOG_FTP_STS = 537923639;
    public static final int USB_LOG_PREPARE = 537923638;
    public static final int USB_UPDATE_COMPLETED = 541069365;
    public static final int USB_UPDATE_FTP_STS = 537923634;
    public static final int USB_UPDATE_PREPARE = 541069361;
    public static final int USB_UPDATE_STA = 537923636;
    public static final int USB_UPDATE_START = 541069363;

    public static final String toString(int i) {
        if (i == 0) {
            return "INVALID";
        }
        if (i == 541069312) {
            return "TBOX_OTA_APP_T_INSTALL";
        }
        if (i == 537923585) {
            return "TBOX_OTA_REMOTE_INSTALL";
        }
        if (i == 537923586) {
            return "TBOX_OTA_REMOTE_APP_T_SET";
        }
        if (i == 537923587) {
            return "TBOX_OTA_REMOTE_APP_T_CANCEL";
        }
        if (i == 537923588) {
            return "TBOX_NETWORK_STATUS";
        }
        if (i == 537923589) {
            return "TBOX_VEHICLE_DIAG_STATUS";
        }
        if (i == 537923590) {
            return "TBOX_VERSION_INFO";
        }
        if (i == 537923591) {
            return "TBOX_BLE_MODULE_INFO";
        }
        if (i == 537923592) {
            return "TBOX_VIN";
        }
        if (i == 537923593) {
            return "TBOX_SIM_CARD_INFO";
        }
        if (i == 537923600) {
            return "TBOX_IMEI_INFO";
        }
        if (i == 541069329) {
            return "TBOX_WORK_MODEL";
        }
        if (i == 537923602) {
            return "TBOX_CERTIFICATE_ISSUED_MARK";
        }
        if (i == 537923603) {
            return "TBOX_SET_CALL_NUMBER";
        }
        if (i == 537923604) {
            return "TBOX_CELL_INFO";
        }
        if (i == 541069333) {
            return "TBOX_VEHICLE_DIAG";
        }
        if (i == 537923606) {
            return "TBOX_CURREN_MONTH_TALK_TIME";
        }
        if (i == 541069335) {
            return "TBOX_TSP_CONNECTION_STATE";
        }
        if (i == 541069336) {
            return "TBOX_MIC_STATE";
        }
        if (i == 537923609) {
            return "TBOX_ECU_VERSION";
        }
        if (i == 537923616) {
            return "TBOX_CAN_CONFIG";
        }
        if (i == 541069345) {
            return "TBOX_KL15_STATE";
        }
        if (i == 541069346) {
            return "TBOX_READY";
        }
        if (i == 537923619) {
            return "TBOX_APP_T";
        }
        if (i == 541069348) {
            return "TBOX_OS_RTC";
        }
        if (i == 537923621) {
            return "TBOX_OTA_APP_T_SET";
        }
        if (i == 541069350) {
            return "TBOX_OTA_APP_T_CANCEL";
        }
        if (i == 537923623) {
            return "TBOX_OTA_APP_T_SYNC";
        }
        if (i == 537923624) {
            return "TBOX_OTA_STATE";
        }
        if (i == 537923625) {
            return "TBOX_UPLOAD_BEICALL_STS";
        }
        if (i == 537923632) {
            return "TBOX_BEICALL";
        }
        if (i == 541069361) {
            return "USB_UPDATE_PREPARE";
        }
        if (i == 537923634) {
            return "USB_UPDATE_FTP_STS";
        }
        if (i == 541069363) {
            return "USB_UPDATE_START";
        }
        if (i == 537923636) {
            return "USB_UPDATE_STA";
        }
        if (i == 541069365) {
            return "USB_UPDATE_COMPLETED";
        }
        if (i == 537923638) {
            return "USB_LOG_PREPARE";
        }
        if (i == 537923639) {
            return "USB_LOG_FTP_STS";
        }
        if (i == 537923640) {
            return "GNSS_INFO_1";
        }
        if (i == 537923641) {
            return "GNSS_INFO_2";
        }
        if (i == 541069376) {
            return "DMC_GNSS_TYPE";
        }
        if (i == 541069377) {
            return "IDCU_GNSS_TYPE";
        }
        if (i == 544215106) {
            return "IVI_RENDER_DB_INFO";
        }
        if (i == 544215107) {
            return "ADS_NTF_EXT_MM_RES_WLNK";
        }
        if (i == 537923652) {
            return "ADS_AUTONOMOUS_SETTING";
        }
        if (i == 544215109) {
            return "ADS_GET_PACKAGE_DATA";
        }
        if (i == 544215110) {
            return "ADS_NTF_ADS_DB_INFO";
        }
        if (i == 541069383) {
            return "ADS_NTF_AOM_SDK_STATUS";
        }
        if (i == 544215112) {
            return "ADS_NTF_LANE_CON_REL_CAL_RESULT";
        }
        if (i == 544215113) {
            return "ADS_NTF_ADS_AOM_STATUS_INFO";
        }
        if (i == 541069392) {
            return "ADS_STOP_ROUTE_MATCHING";
        }
        if (i == 537923665) {
            return "ADS_START_ROUTE_MATCHING_BY_PB";
        }
        if (i == 541069394) {
            return "ADS_UPDATE_NAV_STS_INFO";
        }
        if (i == 544215123) {
            return "ADS_NTF_FUNC_STATE_HD";
        }
        if (i == 544215124) {
            return "ADS_NTF_DYNAMIC_OBJECT_LIST_HD";
        }
        if (i == 544215125) {
            return "ADS_NTF_STATIC_OBJECT_LIST_HD";
        }
        if (i == 544215126) {
            return "ADS_NTF_PLANNING_PATH_HD";
        }
        if (i == 544215127) {
            return "ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM";
        }
        if (i == 544215128) {
            return "ADAS_NTF_STATIC_OBJECT_LIST_ICM";
        }
        if (i == 544215129) {
            return "ADAS_NTF_LANELINE_LIST_ICM";
        }
        if (i == 544215136) {
            return "ADAS_NTF_PLANNING_PATH_ICM";
        }
        if (i == 544215137) {
            return "ADAS_NTF_OTHER_SYMBOL_ICM";
        }
        if (i == 541069410) {
            return "DZ_APA_PARKING_FUNC_MOD";
        }
        if (i == 537923683) {
            return "DZ_APA_FUNC_OPERATE";
        }
        if (i == 537923684) {
            return "NTF_HPA_FCN_OPERATING";
        }
        if (i == 541069413) {
            return "DZ_MRA_OPERATION_ID";
        }
        if (i == 541069414) {
            return "NTF_CPA_FCN_OPERATING";
        }
        if (i == 541069415) {
            return "NTF_CALIBRATION_TRIGGER";
        }
        if (i == 537923688) {
            return "NTF_AVM_FAIL_STS";
        }
        if (i == 544215145) {
            return "NTF_VOICE_CONTROL_INFO";
        }
        return i == 541069424 ? "ADS_NTF_FUNC_STATE_HD_SPEED" : "0x" + Integer.toHexString(i);
    }

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("INVALID");
        int i2 = 541069312;
        if ((i & 541069312) == 541069312) {
            arrayList.add("TBOX_OTA_APP_T_INSTALL");
        } else {
            i2 = 0;
        }
        if ((i & 537923585) == 537923585) {
            arrayList.add("TBOX_OTA_REMOTE_INSTALL");
            i2 |= 537923585;
        }
        if ((i & 537923586) == 537923586) {
            arrayList.add("TBOX_OTA_REMOTE_APP_T_SET");
            i2 |= 537923586;
        }
        if ((i & 537923587) == 537923587) {
            arrayList.add("TBOX_OTA_REMOTE_APP_T_CANCEL");
            i2 |= 537923587;
        }
        if ((i & 537923588) == 537923588) {
            arrayList.add("TBOX_NETWORK_STATUS");
            i2 |= 537923588;
        }
        if ((i & 537923589) == 537923589) {
            arrayList.add("TBOX_VEHICLE_DIAG_STATUS");
            i2 |= 537923589;
        }
        if ((i & 537923590) == 537923590) {
            arrayList.add("TBOX_VERSION_INFO");
            i2 |= 537923590;
        }
        if ((i & 537923591) == 537923591) {
            arrayList.add("TBOX_BLE_MODULE_INFO");
            i2 |= 537923591;
        }
        if ((i & 537923592) == 537923592) {
            arrayList.add("TBOX_VIN");
            i2 |= 537923592;
        }
        if ((i & 537923593) == 537923593) {
            arrayList.add("TBOX_SIM_CARD_INFO");
            i2 |= 537923593;
        }
        if ((i & 537923600) == 537923600) {
            arrayList.add("TBOX_IMEI_INFO");
            i2 |= 537923600;
        }
        if ((i & 541069329) == 541069329) {
            arrayList.add("TBOX_WORK_MODEL");
            i2 |= 541069329;
        }
        if ((i & 537923602) == 537923602) {
            arrayList.add("TBOX_CERTIFICATE_ISSUED_MARK");
            i2 |= 537923602;
        }
        if ((i & 537923603) == 537923603) {
            arrayList.add("TBOX_SET_CALL_NUMBER");
            i2 |= 537923603;
        }
        if ((i & 537923604) == 537923604) {
            arrayList.add("TBOX_CELL_INFO");
            i2 |= 537923604;
        }
        if ((i & 541069333) == 541069333) {
            arrayList.add("TBOX_VEHICLE_DIAG");
            i2 |= 541069333;
        }
        if ((i & 537923606) == 537923606) {
            arrayList.add("TBOX_CURREN_MONTH_TALK_TIME");
            i2 |= 537923606;
        }
        if ((i & 541069335) == 541069335) {
            arrayList.add("TBOX_TSP_CONNECTION_STATE");
            i2 |= 541069335;
        }
        if ((i & 541069336) == 541069336) {
            arrayList.add("TBOX_MIC_STATE");
            i2 |= 541069336;
        }
        if ((i & 537923609) == 537923609) {
            arrayList.add("TBOX_ECU_VERSION");
            i2 |= 537923609;
        }
        if ((i & 537923616) == 537923616) {
            arrayList.add("TBOX_CAN_CONFIG");
            i2 |= 537923616;
        }
        if ((i & 541069345) == 541069345) {
            arrayList.add("TBOX_KL15_STATE");
            i2 |= 541069345;
        }
        if ((541069346 & i) == 541069346) {
            arrayList.add("TBOX_READY");
            i2 |= 541069346;
        }
        if ((537923619 & i) == 537923619) {
            arrayList.add("TBOX_APP_T");
            i2 |= 537923619;
        }
        if ((541069348 & i) == 541069348) {
            arrayList.add("TBOX_OS_RTC");
            i2 |= 541069348;
        }
        if ((537923621 & i) == 537923621) {
            arrayList.add("TBOX_OTA_APP_T_SET");
            i2 |= 537923621;
        }
        if ((541069350 & i) == 541069350) {
            arrayList.add("TBOX_OTA_APP_T_CANCEL");
            i2 |= 541069350;
        }
        if ((537923623 & i) == 537923623) {
            arrayList.add("TBOX_OTA_APP_T_SYNC");
            i2 |= 537923623;
        }
        if ((537923624 & i) == 537923624) {
            arrayList.add("TBOX_OTA_STATE");
            i2 |= 537923624;
        }
        if ((537923625 & i) == 537923625) {
            arrayList.add("TBOX_UPLOAD_BEICALL_STS");
            i2 |= 537923625;
        }
        if ((537923632 & i) == 537923632) {
            arrayList.add("TBOX_BEICALL");
            i2 |= 537923632;
        }
        if ((541069361 & i) == 541069361) {
            arrayList.add("USB_UPDATE_PREPARE");
            i2 |= USB_UPDATE_PREPARE;
        }
        if ((537923634 & i) == 537923634) {
            arrayList.add("USB_UPDATE_FTP_STS");
            i2 |= USB_UPDATE_FTP_STS;
        }
        if ((541069363 & i) == 541069363) {
            arrayList.add("USB_UPDATE_START");
            i2 |= USB_UPDATE_START;
        }
        if ((537923636 & i) == 537923636) {
            arrayList.add("USB_UPDATE_STA");
            i2 |= USB_UPDATE_STA;
        }
        if ((541069365 & i) == 541069365) {
            arrayList.add("USB_UPDATE_COMPLETED");
            i2 |= USB_UPDATE_COMPLETED;
        }
        if ((537923638 & i) == 537923638) {
            arrayList.add("USB_LOG_PREPARE");
            i2 |= USB_LOG_PREPARE;
        }
        if ((537923639 & i) == 537923639) {
            arrayList.add("USB_LOG_FTP_STS");
            i2 |= USB_LOG_FTP_STS;
        }
        if ((537923640 & i) == 537923640) {
            arrayList.add("GNSS_INFO_1");
            i2 |= GNSS_INFO_1;
        }
        if ((537923641 & i) == 537923641) {
            arrayList.add("GNSS_INFO_2");
            i2 |= GNSS_INFO_2;
        }
        if ((541069376 & i) == 541069376) {
            arrayList.add("DMC_GNSS_TYPE");
            i2 |= DMC_GNSS_TYPE;
        }
        if ((541069377 & i) == 541069377) {
            arrayList.add("IDCU_GNSS_TYPE");
            i2 |= IDCU_GNSS_TYPE;
        }
        if ((544215106 & i) == 544215106) {
            arrayList.add("IVI_RENDER_DB_INFO");
            i2 |= IVI_RENDER_DB_INFO;
        }
        if ((544215107 & i) == 544215107) {
            arrayList.add("ADS_NTF_EXT_MM_RES_WLNK");
            i2 |= ADS_NTF_EXT_MM_RES_WLNK;
        }
        if ((537923652 & i) == 537923652) {
            arrayList.add("ADS_AUTONOMOUS_SETTING");
            i2 |= ADS_AUTONOMOUS_SETTING;
        }
        if ((544215109 & i) == 544215109) {
            arrayList.add("ADS_GET_PACKAGE_DATA");
            i2 |= ADS_GET_PACKAGE_DATA;
        }
        if ((544215110 & i) == 544215110) {
            arrayList.add("ADS_NTF_ADS_DB_INFO");
            i2 |= ADS_NTF_ADS_DB_INFO;
        }
        if ((541069383 & i) == 541069383) {
            arrayList.add("ADS_NTF_AOM_SDK_STATUS");
            i2 |= ADS_NTF_AOM_SDK_STATUS;
        }
        if ((544215112 & i) == 544215112) {
            arrayList.add("ADS_NTF_LANE_CON_REL_CAL_RESULT");
            i2 |= ADS_NTF_LANE_CON_REL_CAL_RESULT;
        }
        if ((544215113 & i) == 544215113) {
            arrayList.add("ADS_NTF_ADS_AOM_STATUS_INFO");
            i2 |= ADS_NTF_ADS_AOM_STATUS_INFO;
        }
        if ((541069392 & i) == 541069392) {
            arrayList.add("ADS_STOP_ROUTE_MATCHING");
            i2 |= ADS_STOP_ROUTE_MATCHING;
        }
        if ((537923665 & i) == 537923665) {
            arrayList.add("ADS_START_ROUTE_MATCHING_BY_PB");
            i2 |= ADS_START_ROUTE_MATCHING_BY_PB;
        }
        if ((541069394 & i) == 541069394) {
            arrayList.add("ADS_UPDATE_NAV_STS_INFO");
            i2 |= ADS_UPDATE_NAV_STS_INFO;
        }
        if ((544215123 & i) == 544215123) {
            arrayList.add("ADS_NTF_FUNC_STATE_HD");
            i2 |= ADS_NTF_FUNC_STATE_HD;
        }
        if ((544215124 & i) == 544215124) {
            arrayList.add("ADS_NTF_DYNAMIC_OBJECT_LIST_HD");
            i2 |= ADS_NTF_DYNAMIC_OBJECT_LIST_HD;
        }
        if ((544215125 & i) == 544215125) {
            arrayList.add("ADS_NTF_STATIC_OBJECT_LIST_HD");
            i2 |= ADS_NTF_STATIC_OBJECT_LIST_HD;
        }
        if ((544215126 & i) == 544215126) {
            arrayList.add("ADS_NTF_PLANNING_PATH_HD");
            i2 |= ADS_NTF_PLANNING_PATH_HD;
        }
        if ((544215127 & i) == 544215127) {
            arrayList.add("ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM");
            i2 |= ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM;
        }
        if ((544215128 & i) == 544215128) {
            arrayList.add("ADAS_NTF_STATIC_OBJECT_LIST_ICM");
            i2 |= ADAS_NTF_STATIC_OBJECT_LIST_ICM;
        }
        if ((544215129 & i) == 544215129) {
            arrayList.add("ADAS_NTF_LANELINE_LIST_ICM");
            i2 |= ADAS_NTF_LANELINE_LIST_ICM;
        }
        if ((544215136 & i) == 544215136) {
            arrayList.add("ADAS_NTF_PLANNING_PATH_ICM");
            i2 |= ADAS_NTF_PLANNING_PATH_ICM;
        }
        if ((544215137 & i) == 544215137) {
            arrayList.add("ADAS_NTF_OTHER_SYMBOL_ICM");
            i2 |= ADAS_NTF_OTHER_SYMBOL_ICM;
        }
        if ((541069410 & i) == 541069410) {
            arrayList.add("DZ_APA_PARKING_FUNC_MOD");
            i2 |= 541069410;
        }
        if ((537923683 & i) == 537923683) {
            arrayList.add("DZ_APA_FUNC_OPERATE");
            i2 |= 537923683;
        }
        if ((537923684 & i) == 537923684) {
            arrayList.add("NTF_HPA_FCN_OPERATING");
            i2 |= NTF_HPA_FCN_OPERATING;
        }
        if ((541069413 & i) == 541069413) {
            arrayList.add("DZ_MRA_OPERATION_ID");
            i2 |= 541069413;
        }
        if ((541069414 & i) == 541069414) {
            arrayList.add("NTF_CPA_FCN_OPERATING");
            i2 |= NTF_CPA_FCN_OPERATING;
        }
        if ((541069415 & i) == 541069415) {
            arrayList.add("NTF_CALIBRATION_TRIGGER");
            i2 |= 541069415;
        }
        if ((537923688 & i) == 537923688) {
            arrayList.add("NTF_AVM_FAIL_STS");
            i2 |= 537923688;
        }
        if ((544215145 & i) == 544215145) {
            arrayList.add("NTF_VOICE_CONTROL_INFO");
            i2 |= 544215145;
        }
        if ((541069424 & i) == 541069424) {
            arrayList.add("ADS_NTF_FUNC_STATE_HD_SPEED");
            i2 |= 541069424;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i & (~i2)));
        }
        return String.join(" | ", arrayList);
    }
}
