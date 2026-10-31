package s2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build$VERSION;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode$ThreadPolicy;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import q.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f5237a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f5238b;
    public static Boolean c;
    public static Boolean d;
    public static String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f5239f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a() throws Throwable {
        BufferedReader bufferedReader;
        if (e == null) {
            if (Build$VERSION.SDK_INT >= 28) {
                e = c.i();
            } else {
                int iMyPid = f5239f;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    f5239f = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                if (iMyPid > 0) {
                    try {
                        String str = "/proc/" + iMyPid + "/cmdline";
                        StrictMode$ThreadPolicy strictMode$ThreadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            StrictMode.setThreadPolicy(strictMode$ThreadPolicyAllowThreadDiskReads);
                            try {
                                String line = bufferedReader.readLine();
                                r2.a.b(line);
                                strTrim = line.trim();
                            } catch (IOException unused) {
                                if (bufferedReader != null) {
                                }
                                e = strTrim;
                                return e;
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            StrictMode.setThreadPolicy(strictMode$ThreadPolicyAllowThreadDiskReads);
                            throw th2;
                        }
                    } catch (IOException unused3) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                }
                e = strTrim;
            }
        }
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f5238b == null) {
            f5238b = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        f5238b.booleanValue();
        if (c == null) {
            c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (!c.booleanValue()) {
            return false;
        }
        int i9 = Build$VERSION.SDK_INT;
        return i9 < 26 || i9 >= 30;
    }
}
