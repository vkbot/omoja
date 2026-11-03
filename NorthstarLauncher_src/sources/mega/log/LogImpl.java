package mega.log;

import android.util.Log;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;

/* JADX INFO: loaded from: classes2.dex */
class LogImpl {
    LogImpl() {
    }

    static void print(int i, String str, String str2, Throwable th) {
        if (str2 == null) {
            str2 = "log null msg";
        }
        if (MLog.ENABLE_FULL_LOG && str2.length() > 3000) {
            int length = str2.length();
            int i2 = 0;
            while (true) {
                int i3 = i2 + PathInterpolatorCompat.MAX_NUM_POINTS;
                if (i3 >= length) {
                    break;
                }
                printShort(i, str, str2.substring(i2, i3));
                i2 = i3;
            }
            str2 = str2.substring(i2);
        }
        if (th == null) {
            printShort(i, str, str2);
        } else {
            printShort(i, str, str2, th);
        }
    }

    static void printShort(int i, String str, String str2) {
        if (i == 2) {
            Log.v(str, str2);
            return;
        }
        if (i == 3) {
            Log.d(str, str2);
            return;
        }
        if (i == 4) {
            Log.i(str, str2);
            return;
        }
        if (i == 5) {
            Log.w(str, str2);
            return;
        }
        if (i == 6) {
            Log.e(str, str2);
        } else if (i == 10) {
            Log.wtf(str, str2);
        } else {
            Log.e("LogImpl", "printShort error with level " + i);
        }
    }

    static void printShort(int i, String str, String str2, Throwable th) {
        if (i == 2) {
            Log.v(str, str2, th);
            return;
        }
        if (i == 3) {
            Log.d(str, str2, th);
            return;
        }
        if (i == 4) {
            Log.i(str, str2, th);
            return;
        }
        if (i == 5) {
            Log.w(str, str2, th);
            return;
        }
        if (i == 6) {
            Log.e(str, str2, th);
        } else if (i == 10) {
            Log.wtf(str, str2, th);
        } else {
            Log.e("LogImpl", "printShort error with level " + i);
        }
    }
}
