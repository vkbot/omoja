package p172q;

import android.os.Build;
import android.util.Log;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: q.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3033w {

    /* JADX INFO: renamed from: e */
    public static final boolean f8504e;

    /* JADX INFO: renamed from: f */
    public static final boolean f8505f;

    /* JADX INFO: renamed from: g */
    public static final File f8506g;

    /* JADX INFO: renamed from: h */
    public static volatile C3033w f8507h;

    /* JADX INFO: renamed from: b */
    public int f8509b;

    /* JADX INFO: renamed from: c */
    public boolean f8510c = true;

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f8511d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a */
    public final int f8508a = AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f8504e = i10 < 29;
        f8505f = i10 >= 28;
        f8506g = new File("/proc/self/fd");
    }

    /* JADX INFO: renamed from: a */
    public static C3033w m4852a() {
        if (f8507h == null) {
            synchronized (C3033w.class) {
                try {
                    if (f8507h == null) {
                        f8507h = new C3033w();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8507h;
    }

    /* JADX INFO: renamed from: b */
    public final int m4853b() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f8508a;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m4854c(int i10, int i11, boolean z9, boolean z10) {
        boolean z11;
        if (z9) {
            if (f8505f) {
                if (!f8504e || this.f8511d.get()) {
                    if (z10) {
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
                            return false;
                        }
                    } else if (i10 >= 0 && i11 >= 0) {
                        synchronized (this) {
                            try {
                                int i12 = this.f8509b + 1;
                                this.f8509b = i12;
                                if (i12 >= 50) {
                                    this.f8509b = 0;
                                    int length = f8506g.list().length;
                                    long jM4853b = m4853b();
                                    boolean z12 = ((long) length) < jM4853b;
                                    this.f8510c = z12;
                                    if (!z12 && Log.isLoggable("Downsampler", 5)) {
                                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + jM4853b);
                                    }
                                }
                                z11 = this.f8510c;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z11) {
                            return true;
                        }
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
                            return false;
                        }
                    } else if (Log.isLoggable("HardwareConfig", 2)) {
                        Log.v("HardwareConfig", "Hardware config disallowed because of invalid dimensions");
                    }
                } else if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed by app state");
                    return false;
                }
            } else if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
                return false;
            }
        } else if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed by caller");
            return false;
        }
        return false;
    }
}
