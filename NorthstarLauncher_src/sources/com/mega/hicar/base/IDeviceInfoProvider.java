package com.mega.hicar.base;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface IDeviceInfoProvider {

    @Retention(RetentionPolicy.SOURCE)
    public @interface UiDisplayType {
        public static final int APP_LIST = 4;
        public static final int BLUETOOTH_OPENING = 5;
        public static final int CONNECTING_PROGRESS = 8;
        public static final int CONNECT_FAILED = 10;
        public static final int EXIT_FUSION_UI = 9;
        public static final int INITIALIZE_FAILED = 7;
        public static final int INITIALIZING = 6;
        public static final int WIRED_ONLY = 3;
        public static final int WIRELESS_PIN_CODE = 1;
        public static final int WIRELESS_QR_CODE = 2;
    }
}
