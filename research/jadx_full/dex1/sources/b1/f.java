package b1;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f234s = e0.m.h(new byte[]{107, ByteCompanionObject.MAX_VALUE, -63, -123, -31, -89, 47, -81, 84, 119, -62, -119, -1, -87, 42, -101, 69, 115}, new byte[]{38, 22, -81, -20, -84, -58, 95, -23});
    public static final String t = e0.m.h(new byte[]{-85, -11, 43, 66, -117, -7, 35, 95, -95, -82, 124, 90, -124, -13, 34, 66, -73, -31, 115, 82}, new byte[]{-39, ByteCompanionObject.MIN_VALUE, 5, 59, -22, -105, 71, 58});

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f235u = e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -77, 67, Base64.padSymbol, -102, -49, -92, -111, 116, -78, 43, 2, -110, -52, -88, -113, 112, -80, 27, 25, -112, -60}, new byte[]{21, -62, 109, 112, -13, -95, -51, -36});

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f236v = e0.m.h(new byte[]{-2, 124, -54, -15, -101, 120, 48, -64, -12, 39, -99, -23, -108, 114, 49, -35, -31, 104, -108, -5, -44, 123, Base64.padSymbol, -53, -27, 100, -123, -8, -44, 95, 25, -52, -30, 96, -87, -23, -118, 80, 38, -60, -31, 108, -105}, new byte[]{-116, 9, -28, -120, -6, 22, 84, -91});
    public static final String w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile f f237x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f238a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile IBinder f241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile byte[] f242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile long f243i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f245k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f246l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f247m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f248n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f239b = new Handler(Looper.getMainLooper());
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final AtomicBoolean d = new AtomicBoolean();
    public final CopyOnWriteArraySet e = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f240f = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile int f244j = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final b f249o = new b(this, 0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final b f250p = new b(this, 1);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final c f251q = new c(0, this);
    public final d r = new d(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{-2, -41, -40, 85, 13, -99, -20, 75, -12, -116, -113, 77, 2, -105, -19, 86, -31, -61, -122, 95, 66, -66, -63, 96, -59, -17, -73, 124, 51, -93, -63, 96, -53}, new byte[]{-116, -94, -10, 44, 108, -13, -120, 46});
        w = e0.m.h(new byte[]{-107, 33, -19, 125, 114, -101, -32, 22, -97, 122, -70, 101, 125, -111, -31, 11, -118, 53, -77, 119, Base64.padSymbol, -72, -51, Base64.padSymbol, -82, 25, -126, 84, 76, -89, -63, 50, -93, 13}, new byte[]{-25, 84, -61, 4, 19, -11, -124, 115});
        e0.m.h(new byte[]{35, 58, -26, 122, -124}, new byte[]{77, 85, -120, 25, -31, -120, 86, -8});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Context context) {
        this.f238a = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f b(Context context) {
        if (f237x == null) {
            synchronized (f.class) {
                try {
                    if (f237x == null) {
                        f237x = new f(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f237x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        IBinder iBinder = this.f241g;
        int i9 = this.f244j;
        if (iBinder == null) {
            return;
        }
        this.c.execute(new a4.c(iBinder, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (this.f246l || this.f247m) {
            try {
                this.f238a.unbindService(this.r);
            } catch (IllegalArgumentException unused) {
            }
        }
        this.f241g = null;
        this.f246l = false;
        this.f247m = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        this.f239b.removeCallbacks(this.f249o);
        if (this.e.isEmpty() || this.f241g != null || this.f246l || this.f247m) {
            return;
        }
        this.f239b.post(this.f249o);
    }
}
