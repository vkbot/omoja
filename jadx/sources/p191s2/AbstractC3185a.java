package p191s2;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import p181r2.AbstractC3093a;

/* JADX INFO: renamed from: s2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3185a {

    /* JADX INFO: renamed from: a */
    public static final char[] f9268a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b */
    public static Boolean f9269b;

    /* JADX INFO: renamed from: c */
    public static Boolean f9270c;

    /* JADX INFO: renamed from: d */
    public static Boolean f9271d;

    /* JADX INFO: renamed from: e */
    public static String f9272e;

    /* JADX INFO: renamed from: f */
    public static int f9273f;

    /* JADX INFO: renamed from: a */
    public static String m5111a() throws Throwable {
        BufferedReader bufferedReader;
        if (f9272e == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                f9272e = Application.getProcessName();
            } else {
                int iMyPid = f9273f;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    f9273f = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                if (iMyPid > 0) {
                    try {
                        String str = "/proc/" + iMyPid + "/cmdline";
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            try {
                                String line = bufferedReader.readLine();
                                AbstractC3093a.m4926b(line);
                                strTrim = line.trim();
                            } catch (IOException unused) {
                                if (bufferedReader != null) {
                                }
                                f9272e = strTrim;
                                return f9272e;
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
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        } catch (Throwable th2) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th2;
                        }
                    } catch (IOException unused4) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                f9272e = strTrim;
            }
        }
        return f9272e;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m5112b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f9269b == null) {
            f9269b = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        f9269b.booleanValue();
        if (f9270c == null) {
            f9270c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (!f9270c.booleanValue()) {
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        return i10 < 26 || i10 >= 30;
    }
}
