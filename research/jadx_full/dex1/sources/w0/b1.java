package w0;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build$VERSION;
import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b1 implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f5600b;
    public final l0 c;
    public boolean d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5601f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b1.c f5602g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b1(Context context, l0 l0Var, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        b1.c cVar = new b1.c(7, this);
        this.f5602g = cVar;
        Context applicationContext = context.getApplicationContext();
        this.f5600b = applicationContext;
        this.c = l0Var;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(e0.m.h(new byte[]{108, -13, -77, 65, -39, -117, -27, -7, 111, -15, -94, 86, -62, -115, -18, -93, 101, -77, -77, 86, -64, -117, -30, -78, 35, -4, -76, 71, -33, -115, -17, -7, 76, -34, -101, 108, -11, -83, -49, -103, 72, -34, -125, 118, -14}, new byte[]{13, -99, -41, 51, -74, -30, -127, -41}));
        intentFilter.addAction(e0.m.h(new byte[]{-79, -89, -83, 103, -110, -95, 106, -22, -78, -91, -68, 112, -119, -89, 97, -80, -72, -25, -83, 112, -117, -95, 109, -95, -2, -88, -86, 97, -108, -89, 96, -22, -111, -118, -123, 74, -71, -127, 93, -121, -97, -121, -121, 80, -66, -100, 75, ByteCompanionObject.MIN_VALUE}, new byte[]{-48, -55, -55, 21, -3, -56, 14, -60}));
        intentFilter.addAction(e0.m.h(new byte[]{-25, -61, -71, 42, -116, 105, 43, -15, -28, -63, -88, Base64.padSymbol, -105, 111, 32, -85, -18, -125, -68, 60, -126, 112, 59, -70, -12, -125, -68, 59, -105, 105, 32, -79, -88, -2, -119, 25, -73, 69, 16, -100, -50, -20, -109, 31, -90, 68}, new byte[]{-122, -83, -35, 88, -29, 0, 79, -33}));
        try {
            if (Build$VERSION.SDK_INT >= 33) {
                d.i(applicationContext, cVar, intentFilter);
            } else {
                applicationContext.registerReceiver(cVar, intentFilter);
            }
            this.d = true;
        } catch (RuntimeException unused) {
            Log.w(e0.m.h(new byte[]{-54, 21, 72, -48, 107, 115, 96, -10, -14, 31, 99, -36, 97, 72}, new byte[]{-100, 122, 33, -77, 14, 35, 8, -103}), e0.m.h(new byte[]{-110, -14, -18, 90, -26, 33, -93, 2, -84, -12, -28, 87, -9, 104, -81, 3, -30, -11, -29, 71, -26, 115, -74, 12, -74, -13, -18, 90, -93, 116, -82, 12, -76, -5, -24, 88, -30, 99, -84, 8, -7, -70, -19, 91, -30, 101, -87, 3, -91, -70, -18, 90, -93, 101, -91, 0, -93, -12, -27}, new byte[]{-62, -102, -127, 52, -125, 1, -64, 109}));
        }
        scheduledThreadPoolExecutor.execute(new f5.j(22, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        this.e = true;
        if (this.d) {
            this.d = false;
            try {
                this.f5600b.unregisterReceiver(this.f5602g);
            } catch (RuntimeException unused) {
            }
        }
    }
}
