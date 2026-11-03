package com.mega.nexus.os;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class MegaSystemProperties {
    public static String get(String str, String str2) {
        return SystemProperties.get(str, str2);
    }

    public static int getInt(String str, int i) {
        return SystemProperties.getInt(str, i);
    }

    public static long getLong(String str, long j) {
        return SystemProperties.getLong(str, j);
    }

    public static boolean getBoolean(String str, boolean z) {
        return SystemProperties.getBoolean(str, z);
    }

    public static void set(String str, String str2) {
        SystemProperties.set(str, str2);
    }
}
