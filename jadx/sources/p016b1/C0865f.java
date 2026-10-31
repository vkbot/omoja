package p016b1;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: b1.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0865f {

    /* JADX INFO: renamed from: s */
    public static final String f547s = AbstractC1387m.m2421h(new byte[]{107, ByteCompanionObject.MAX_VALUE, -63, -123, -31, -89, 47, -81, 84, 119, -62, -119, -1, -87, 42, -101, 69, 115}, new byte[]{38, 22, -81, -20, -84, -58, 95, -23});

    /* JADX INFO: renamed from: t */
    public static final String f548t = AbstractC1387m.m2421h(new byte[]{-85, -11, 43, 66, -117, -7, 35, 95, -95, -82, 124, 90, -124, -13, 34, 66, -73, -31, 115, 82}, new byte[]{-39, ByteCompanionObject.MIN_VALUE, 5, 59, -22, -105, 71, 58});

    /* JADX INFO: renamed from: u */
    public static final String f549u = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -77, 67, Base64.padSymbol, -102, -49, -92, -111, 116, -78, 43, 2, -110, -52, -88, -113, 112, -80, 27, 25, -112, -60}, new byte[]{21, -62, 109, 112, -13, -95, -51, -36});

    /* JADX INFO: renamed from: v */
    public static final String f550v = AbstractC1387m.m2421h(new byte[]{-2, 124, -54, -15, -101, 120, 48, -64, -12, 39, -99, -23, -108, 114, 49, -35, -31, 104, -108, -5, -44, 123, Base64.padSymbol, -53, -27, 100, -123, -8, -44, 95, 25, -52, -30, 96, -87, -23, -118, 80, 38, -60, -31, 108, -105}, new byte[]{-116, 9, -28, -120, -6, 22, 84, -91});

    /* JADX INFO: renamed from: w */
    public static final String f551w;

    /* JADX INFO: renamed from: x */
    public static volatile C0865f f552x;

    /* JADX INFO: renamed from: a */
    public final Context f553a;

    /* JADX INFO: renamed from: g */
    public volatile IBinder f559g;

    /* JADX INFO: renamed from: h */
    public volatile byte[] f560h;

    /* JADX INFO: renamed from: i */
    public volatile long f561i;

    /* JADX INFO: renamed from: k */
    public long f563k;

    /* JADX INFO: renamed from: l */
    public boolean f564l;

    /* JADX INFO: renamed from: m */
    public boolean f565m;

    /* JADX INFO: renamed from: n */
    public boolean f566n;

    /* JADX INFO: renamed from: b */
    public final Handler f554b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public final ExecutorService f555c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f556d = new AtomicBoolean();

    /* JADX INFO: renamed from: e */
    public final CopyOnWriteArraySet f557e = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: f */
    public final String f558f = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: j */
    public volatile int f562j = 0;

    /* JADX INFO: renamed from: o */
    public final RunnableC0861b f567o = new RunnableC0861b(this, 0);

    /* JADX INFO: renamed from: p */
    public final RunnableC0861b f568p = new RunnableC0861b(this, 1);

    /* JADX INFO: renamed from: q */
    public final C0862c f569q = new C0862c(0, this);

    /* JADX INFO: renamed from: r */
    public final ServiceConnectionC0863d f570r = new ServiceConnectionC0863d(this);

    static {
        AbstractC1387m.m2421h(new byte[]{-2, -41, -40, 85, 13, -99, -20, 75, -12, -116, -113, 77, 2, -105, -19, 86, -31, -61, -122, 95, 66, -66, -63, 96, -59, -17, -73, 124, 51, -93, -63, 96, -53}, new byte[]{-116, -94, -10, 44, 108, -13, -120, 46});
        f551w = AbstractC1387m.m2421h(new byte[]{-107, 33, -19, 125, 114, -101, -32, 22, -97, 122, -70, 101, 125, -111, -31, 11, -118, 53, -77, 119, Base64.padSymbol, -72, -51, Base64.padSymbol, -82, 25, -126, 84, 76, -89, -63, 50, -93, 13}, new byte[]{-25, 84, -61, 4, 19, -11, -124, 115});
        AbstractC1387m.m2421h(new byte[]{35, 58, -26, 122, -124}, new byte[]{77, 85, -120, 25, -31, -120, 86, -8});
    }

    public C0865f(Context context) {
        this.f553a = context;
    }

    /* JADX INFO: renamed from: b */
    public static C0865f m918b(Context context) {
        if (f552x == null) {
            synchronized (C0865f.class) {
                try {
                    if (f552x == null) {
                        f552x = new C0865f(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f552x;
    }

    /* JADX INFO: renamed from: a */
    public final void m919a() {
        IBinder iBinder = this.f559g;
        int i10 = this.f562j;
        if (iBinder == null) {
            return;
        }
        this.f555c.execute(new RunnableC0010c(iBinder, i10));
    }

    /* JADX INFO: renamed from: c */
    public final void m920c() {
        if (this.f564l || this.f565m) {
            try {
                this.f553a.unbindService(this.f570r);
            } catch (IllegalArgumentException unused) {
            }
        }
        this.f559g = null;
        this.f564l = false;
        this.f565m = false;
    }

    /* JADX INFO: renamed from: d */
    public final void m921d() {
        this.f554b.removeCallbacks(this.f567o);
        if (this.f557e.isEmpty() || this.f559g != null || this.f564l || this.f565m) {
            return;
        }
        this.f554b.post(this.f567o);
    }
}
