package p225w0;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.C0862c;
import p047e0.AbstractC1387m;
import p062f5.RunnableC1556j;

/* JADX INFO: renamed from: w0.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3445b1 implements AutoCloseable {

    /* JADX INFO: renamed from: b */
    public final Context f9933b;

    /* JADX INFO: renamed from: c */
    public final C3474l0 f9934c;

    /* JADX INFO: renamed from: d */
    public boolean f9935d;

    /* JADX INFO: renamed from: e */
    public boolean f9936e;

    /* JADX INFO: renamed from: f */
    public int f9937f;

    /* JADX INFO: renamed from: g */
    public final C0862c f9938g;

    public C3445b1(Context context, C3474l0 c3474l0, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        C0862c c0862c = new C0862c(7, this);
        this.f9938g = c0862c;
        Context applicationContext = context.getApplicationContext();
        this.f9933b = applicationContext;
        this.f9934c = c3474l0;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{108, -13, -77, 65, -39, -117, -27, -7, 111, -15, -94, 86, -62, -115, -18, -93, 101, -77, -77, 86, -64, -117, -30, -78, 35, -4, -76, 71, -33, -115, -17, -7, 76, -34, -101, 108, -11, -83, -49, -103, 72, -34, -125, 118, -14}, new byte[]{13, -99, -41, 51, -74, -30, -127, -41}));
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-79, -89, -83, 103, -110, -95, 106, -22, -78, -91, -68, 112, -119, -89, 97, -80, -72, -25, -83, 112, -117, -95, 109, -95, -2, -88, -86, 97, -108, -89, 96, -22, -111, -118, -123, 74, -71, -127, 93, -121, -97, -121, -121, 80, -66, -100, 75, ByteCompanionObject.MIN_VALUE}, new byte[]{-48, -55, -55, 21, -3, -56, 14, -60}));
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-25, -61, -71, 42, -116, 105, 43, -15, -28, -63, -88, Base64.padSymbol, -105, 111, 32, -85, -18, -125, -68, 60, -126, 112, 59, -70, -12, -125, -68, 59, -105, 105, 32, -79, -88, -2, -119, 25, -73, 69, 16, -100, -50, -20, -109, 31, -90, 68}, new byte[]{-122, -83, -35, 88, -29, 0, 79, -33}));
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                applicationContext.registerReceiver(c0862c, intentFilter, 2);
            } else {
                applicationContext.registerReceiver(c0862c, intentFilter);
            }
            this.f9935d = true;
        } catch (RuntimeException unused) {
            Log.w(AbstractC1387m.m2421h(new byte[]{-54, 21, 72, -48, 107, 115, 96, -10, -14, 31, 99, -36, 97, 72}, new byte[]{-100, 122, 33, -77, 14, 35, 8, -103}), AbstractC1387m.m2421h(new byte[]{-110, -14, -18, 90, -26, 33, -93, 2, -84, -12, -28, 87, -9, 104, -81, 3, -30, -11, -29, 71, -26, 115, -74, 12, -74, -13, -18, 90, -93, 116, -82, 12, -76, -5, -24, 88, -30, 99, -84, 8, -7, -70, -19, 91, -30, 101, -87, 3, -91, -70, -18, 90, -93, 101, -91, 0, -93, -12, -27}, new byte[]{-62, -102, -127, 52, -125, 1, -64, 109}));
        }
        scheduledThreadPoolExecutor.execute(new RunnableC1556j(22, this));
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        this.f9936e = true;
        if (this.f9935d) {
            this.f9935d = false;
            try {
                this.f9933b.unregisterReceiver(this.f9938g);
            } catch (RuntimeException unused) {
            }
        }
    }
}
