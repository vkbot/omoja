package com.mega.carlink.base;

/* JADX INFO: loaded from: classes2.dex */
public interface IDeviceConnectStatusListener {

    public @interface ConnectStatus {
        public static final int CONNECTED = 2;
        public static final int CONNECTED_BT_CL = 4;
        public static final int CONNECTING = 8;
        public static final int CONNECT_FAILED = 3;
        public static final int DISCONNECTED = 1;
        public static final int DISCONNECTING = 9;
        public static final int NONE = 0;
    }

    public @interface PriorityValue {
        public static final int HIGH = 2;
        public static final int LOW = 0;
        public static final int NORMAL = 1;
    }

    default boolean consume() {
        return false;
    }

    default boolean deleteAfterExec() {
        return false;
    }

    default int getPriority() {
        return 2;
    }

    void onConnectStatusChange(int i, String str, int i2);
}
