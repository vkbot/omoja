package q;

import android.os.Build;
import android.os.Build$VERSION;
import android.util.Log;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w {
    public static final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f4743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final File f4744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile w f4745h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4747b;
    public boolean c = true;
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4746a = AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int i9 = Build$VERSION.SDK_INT;
        e = i9 < 29;
        f4743f = i9 >= 28;
        f4744g = new File("/proc/self/fd");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static w a() {
        if (f4745h == null) {
            synchronized (w.class) {
                try {
                    if (f4745h == null) {
                        f4745h = new w();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4745h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        if (Build$VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f4746a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(int i9, int i10, boolean z8, boolean z9) {
        boolean z10;
        if (z8) {
            if (f4743f) {
                if (!e || this.d.get()) {
                    if (z9) {
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
                            return false;
                        }
                    } else if (i9 >= 0 && i10 >= 0) {
                        synchronized (this) {
                            try {
                                int i11 = this.f4747b + 1;
                                this.f4747b = i11;
                                if (i11 >= 50) {
                                    this.f4747b = 0;
                                    int length = f4744g.list().length;
                                    long jB = b();
                                    boolean z11 = ((long) length) < jB;
                                    this.c = z11;
                                    if (!z11 && Log.isLoggable("Downsampler", 5)) {
                                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + jB);
                                    }
                                }
                                z10 = this.c;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z10) {
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
