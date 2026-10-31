package p047e0;

import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: e0.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1328a0 {

    /* JADX INFO: renamed from: h */
    public static ScheduledFuture f3164h;

    /* JADX INFO: renamed from: i */
    public static volatile Boolean f3165i;

    /* JADX INFO: renamed from: j */
    public static volatile Boolean f3166j;

    /* JADX INFO: renamed from: k */
    public static HUDMassageObj f3167k;

    /* JADX INFO: renamed from: l */
    public static int f3168l;

    /* JADX INFO: renamed from: a */
    public final ScheduledThreadPoolExecutor f3169a;

    /* JADX INFO: renamed from: b */
    public Boolean f3170b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentLinkedQueue f3171c;

    /* JADX INFO: renamed from: d */
    public boolean f3172d;

    /* JADX INFO: renamed from: e */
    public boolean f3173e;

    /* JADX INFO: renamed from: f */
    public boolean f3174f;

    /* JADX INFO: renamed from: g */
    public String f3175g;

    static {
        Boolean bool = Boolean.TRUE;
        f3165i = bool;
        f3166j = bool;
        f3168l = 0;
    }

    public C1328a0() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorM2482c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-8, 21, 35, 48, -67, 30, -52, -118, -61, 51, 14, 14, -88}, new byte[]{-80, 64, 103, 96, -49, 113, -81, -17}));
        this.f3169a = scheduledThreadPoolExecutorM2482c;
        this.f3171c = new ConcurrentLinkedQueue();
        scheduledThreadPoolExecutorM2482c.execute(new RunnableC1442y(this, 0));
    }

    /* JADX INFO: renamed from: a */
    public static Boolean m2365a() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-8}, new byte[]{-56, -87, 17, 27, 34, -104, -7, 21}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized void m2366b(HUDMassageObj hUDMassageObj, Boolean bool, Boolean bool2) {
        try {
            if (hUDMassageObj.AradarOn.booleanValue()) {
                f3166j = Boolean.FALSE;
                if (bool.booleanValue() && (f3165i.booleanValue() || bool2.booleanValue())) {
                    m2370f(hUDMassageObj);
                }
            } else if (this.f3170b.booleanValue() && f3165i.booleanValue()) {
                f3166j = Boolean.TRUE;
                m2371g();
            } else {
                f3166j = Boolean.TRUE;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized void m2367c(HUDMassageObj hUDMassageObj, Boolean bool) {
        try {
            if (hUDMassageObj.NaviOn.booleanValue()) {
                f3165i = Boolean.FALSE;
                if (!bool.booleanValue() || f3166j.booleanValue()) {
                    m2370f(hUDMassageObj);
                }
            } else if (this.f3170b.booleanValue() && f3166j.booleanValue()) {
                f3165i = Boolean.TRUE;
                m2371g();
            } else {
                f3165i = Boolean.TRUE;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2368d() {
        this.f3172d = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-34, -40, 60, -97, 126, 50, -41}, new byte[]{-83, -84, 78, -6, 18, 89, -74, 104}), true);
        this.f3173e = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-97, -45, -118, 84, 64, -56, -75, 83, -127, -58, -106, 110, 65, -47, -96, 126}, new byte[]{-20, -89, -8, 11, 52, -89, -59, 12}), true);
        this.f3175g = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-54, 38, 115, 123, -106, 46, -112, -46, -40, 36, 123, 113, -103, 57, -67, -3, -53, 57}, new byte[]{-71, 86, 26, 21, -8, 75, -30, -115}), AbstractC1387m.m2421h(new byte[]{-114, -71, -106, 69, -28, 27, 89, 60, -127, -122, -78}, new byte[]{-64, -42, -30, 26, -74, 110, 55, 99}));
        this.f3174f = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{125, 121, 87, 6, -47, -34, -110, 41, 91, 99, 117, 46}, new byte[]{53, 44, 19, 72, -80, -88, -5, 102}), true);
    }

    /* JADX INFO: renamed from: e */
    public final void m2369e(HUDMassageObj hUDMassageObj) {
        this.f3171c.offer(hUDMassageObj);
    }

    /* JADX INFO: renamed from: f */
    public final synchronized void m2370f(HUDMassageObj hUDMassageObj) {
        C1652b.m2734a();
        if (m2365a().booleanValue()) {
            C1652b.m2734a();
            C1652b.m2748r().StartHUD();
            C1652b.m2734a();
            C1652b.m2748r().SendInfoHUD(hUDMassageObj);
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-66, -25, 42, -65, -55, -88, 72, 120, -105, -43, 11, -38, -92}, new byte[]{-10, -78, 110, -32, -124, -51, 59, 11}) + hUDMassageObj.v_mTurnType + AbstractC1387m.m2421h(new byte[]{17, -70, 46}, new byte[]{49, -105, 14, -52, -86, 118, 88, 24}) + hUDMassageObj.v_mTurnDis + AbstractC1387m.m2421h(new byte[]{13, -76, 83}, new byte[]{45, -103, 115, 62, -92, 105, -84, 105}) + hUDMassageObj.v_mRemainDis + AbstractC1387m.m2421h(new byte[]{-60, -106, 93}, new byte[]{-28, -69, 125, 9, -10, -9, 44, 105}) + hUDMassageObj.v_mNextRoad);
            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-125, -74, 70, -13, 22}, new byte[]{-45, -60, 41, -96, 65, 83, -106, -19}), true);
        }
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m2371g() {
        HUDMassageObj hUDMassageObj = new HUDMassageObj();
        hUDMassageObj.v_mTurnType = -1;
        hUDMassageObj.v_mTurnDis = 0;
        hUDMassageObj.v_mNextRoad = " ";
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f3169a;
        RunnableC1446z runnableC1446z = new RunnableC1446z(hUDMassageObj, 0);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        scheduledThreadPoolExecutor.schedule(runnableC1446z, 50L, timeUnit);
        this.f3169a.schedule(new RunnableC1442y(this, 1), 20000L, timeUnit);
        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-23, -13, -13, 50, 63, ByteCompanionObject.MAX_VALUE, 56, -59, -50, -42}, new byte[]{-95, -90, -73, 18, 18, 95, 107, -79}));
    }
}
