package com.mega.sdk.linkmanager;

/* JADX INFO: loaded from: classes2.dex */
public class LinkMgrConstant {
    public static final String LM_PACKAGE_NAME = "com.mega.linkmanager";
    public static final String LM_SERVICE_ACTION = "mega.intent.action.CARPLAYLINK_MANAGER";
    public static final String LM_SERVICE_CLASS = "com.mega.linkmanagerlib.service.LinkMgrService";

    public static class ConStatus {
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECT = 4;
        public static final int DISCONNECTING = 3;
        public static final int FAILED = 5;
        public static final int NONE = 0;
    }

    public static class DeleteResult {
        public static final int FAIL = -1;
        public static final int SUCCESS = 0;
    }

    public static class EnableStatus {
        public static final int NONE = 0;
        public static final int NOT_SUPPORT = 1;
        public static final int SUPPORT = 2;
    }

    public static class ErrorCode {
        public static final int NONE = 0;
        public static final int UNKNOWN_ERROR = 2;
        public static final int WIRELESS_CP_UNAVAILABLE = 1;
    }

    public static class LinkType {
        public static final int NONE = 0;
        public static final int TYPE_WIRED = 1;
        public static final int TYPE_WIRELESS_AP = 2;
        public static final int TYPE_WIRELESS_P2P = 3;
    }

    public static class MobileDeviceType {
        public static final int ACCESSORY = 2;
        public static final int DEVICE = 3;
        public static final int IPHONE = 1;
    }

    public static class Platform {
        public static final int ANDROID_AUTO = 4;
        public static final int CARLINK = 3;
        public static final int CARPLAY = 1;
        public static final int HICAR = 2;
        public static final int NONE = 0;
    }

    public static class RequestReason {
        public static final int AUTOMATIC_RESTART = 2;
        public static final int AUTO_LAUNCH = 1;
        public static final int USER_REQUEST = 0;
    }

    public static class UserIntent {
        public static final int AGREE = 1;
        public static final int REJECT = 0;
    }

    public static class VideoFocus {
        public static final int UNKNOWN = 0;
        public static final int VF_AA_PROJECTED = 1;
        public static final int VF_NATIVE = 2;
    }

    public class LinkUICmd {
        public static final int UI_CMD_HIDE_CARPLAY_CONNECTED = 3;
        public static final int UI_CMD_NONE = 0;
        public static final int UI_CMD_SHOW_CARPLAY_CONNECTED = 2;
        public static final int UI_CMD_SHOW_CARPLAY_CONNECTING = 4;
        public static final int UI_CMD_SHOW_NO_AVAILABLE_CARPLAY_DEVICE = 5;
        public static final int UI_CMD_SHOW_OPEN_TETHERING = 1;
        public static final int UI_CMD_UPDATE_CARPLAY_DEVICE_NAME = 6;

        public LinkUICmd() {
        }
    }
}
