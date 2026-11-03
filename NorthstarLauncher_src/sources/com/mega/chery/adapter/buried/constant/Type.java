package com.mega.chery.adapter.buried.constant;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public interface Type {

    public interface DCType {
        public static final int ALL = -1;
        public static final int APPLICATION_USAGE = 1;
        public static final int BROWSE = 2;
        public static final int VEHICLE_SETTING = 3;
    }

    public interface ModeType {
        public static final int CLICK = 2;
        public static final int VOICE = 1;
    }

    public interface SwitchType {
        public static final int CLOSE = 0;
        public static final int OPEN = 2;
    }

    public static class EventType implements Type {
        private static final String APPLICATION_USAGE = "App_Open|App_Close";
        private static final String BROWSE = "Content_Click";
        private static final String VEHICLE_SETTING = "_Set";

        public static int getNodeType(String str) {
            if (TextUtils.equals(str, BROWSE)) {
                return 2;
            }
            if (APPLICATION_USAGE.contains(str)) {
                return 1;
            }
            return (TextUtils.isEmpty(str) || !str.contains(VEHICLE_SETTING)) ? -1 : 3;
        }
    }
}
