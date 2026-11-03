package mega.car.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtil {
    private static final String VERSION_NAME = "[sdk_ver: 1.0.2.961-0436511] ";

    public static int v(String str, String str2) {
        return Log.v(str, VERSION_NAME + str2);
    }

    public static int v(String str, String str2, Throwable th) {
        return Log.v(str, VERSION_NAME + str2, th);
    }

    public static int d(String str, String str2) {
        return Log.d(str, VERSION_NAME + str2);
    }

    public static int d(String str, String str2, Throwable th) {
        return Log.d(str, VERSION_NAME + str2, th);
    }

    public static int i(String str, String str2) {
        return Log.i(str, VERSION_NAME + str2);
    }

    public static int i(String str, String str2, Throwable th) {
        return Log.i(str, VERSION_NAME + str2, th);
    }

    public static int w(String str, String str2) {
        return Log.w(str, VERSION_NAME + str2);
    }

    public static int w(String str, String str2, Throwable th) {
        return Log.w(str, VERSION_NAME + str2, th);
    }

    public static int wtf(String str, String str2) {
        return Log.wtf(str, VERSION_NAME + str2);
    }

    public static int wtf(String str, String str2, Throwable th) {
        return Log.wtf(str, VERSION_NAME + str2, th);
    }

    public static int e(String str, String str2) {
        return Log.e(str, VERSION_NAME + str2);
    }

    public static int e(String str, String str2, Throwable th) {
        return Log.e(str, VERSION_NAME + str2, th);
    }

    public static int println(int i, String str, String str2) {
        return Log.println(i, str, VERSION_NAME + str2);
    }
}
