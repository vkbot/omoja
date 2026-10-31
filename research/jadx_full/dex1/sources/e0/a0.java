package e0;

import com.example.navistart.cores.HUDMassageObj;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static ScheduledFuture f1799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile Boolean f1800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile Boolean f1801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static HUDMassageObj f1802k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f1803l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f1804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f1805b;
    public final ConcurrentLinkedQueue c;
    public boolean d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1807g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Boolean bool = Boolean.TRUE;
        f1800i = bool;
        f1801j = bool;
        f1803l = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a0() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = w.c(-1, m.h(new byte[]{-8, 21, 35, 48, -67, 30, -52, -118, -61, 51, 14, 14, -88}, new byte[]{-80, 64, 103, 96, -49, 113, -81, -17}));
        this.f1804a = scheduledThreadPoolExecutorC;
        this.c = new ConcurrentLinkedQueue();
        scheduledThreadPoolExecutorC.execute(new y(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean a() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-8}, new byte[]{-56, -87, 17, 27, 34, -104, -7, 21}, h0.b.o(), com.google.protobuf.q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void b(HUDMassageObj hUDMassageObj, Boolean bool, Boolean bool2) {
        try {
            if (hUDMassageObj.AradarOn.booleanValue()) {
                f1801j = Boolean.FALSE;
                if (bool.booleanValue() && (f1800i.booleanValue() || bool2.booleanValue())) {
                    f(hUDMassageObj);
                }
            } else if (this.f1805b.booleanValue() && f1800i.booleanValue()) {
                f1801j = Boolean.TRUE;
                g();
            } else {
                f1801j = Boolean.TRUE;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void c(HUDMassageObj hUDMassageObj, Boolean bool) {
        try {
            if (hUDMassageObj.NaviOn.booleanValue()) {
                f1800i = Boolean.FALSE;
                if (!bool.booleanValue() || f1801j.booleanValue()) {
                    f(hUDMassageObj);
                }
            } else if (this.f1805b.booleanValue() && f1801j.booleanValue()) {
                f1800i = Boolean.TRUE;
                g();
            } else {
                f1800i = Boolean.TRUE;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        this.d = h0.b.o().loadBoolean(m.h(new byte[]{-34, -40, 60, -97, 126, 50, -41}, new byte[]{-83, -84, 78, -6, 18, 89, -74, 104}), true);
        this.e = h0.b.o().loadBoolean(m.h(new byte[]{-97, -45, -118, 84, 64, -56, -75, 83, -127, -58, -106, 110, 65, -47, -96, 126}, new byte[]{-20, -89, -8, 11, 52, -89, -59, 12}), true);
        this.f1807g = h0.b.o().loadString(m.h(new byte[]{-54, 38, 115, 123, -106, 46, -112, -46, -40, 36, 123, 113, -103, 57, -67, -3, -53, 57}, new byte[]{-71, 86, 26, 21, -8, 75, -30, -115}), m.h(new byte[]{-114, -71, -106, 69, -28, 27, 89, 60, -127, -122, -78}, new byte[]{-64, -42, -30, 26, -74, 110, 55, 99}));
        this.f1806f = h0.b.o().loadBoolean(m.h(new byte[]{125, 121, 87, 6, -47, -34, -110, 41, 91, 99, 117, 46}, new byte[]{53, 44, 19, 72, -80, -88, -5, 102}), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(HUDMassageObj hUDMassageObj) {
        this.c.offer(hUDMassageObj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void f(HUDMassageObj hUDMassageObj) {
        h0.b.a();
        if (a().booleanValue()) {
            h0.b.a();
            h0.b.r().StartHUD();
            h0.b.a();
            h0.b.r().SendInfoHUD(hUDMassageObj);
            h0.b.v(m.h(new byte[]{-66, -25, 42, -65, -55, -88, 72, 120, -105, -43, 11, -38, -92}, new byte[]{-10, -78, 110, -32, -124, -51, 59, 11}) + hUDMassageObj.v_mTurnType + m.h(new byte[]{17, -70, 46}, new byte[]{49, -105, 14, -52, -86, 118, 88, 24}) + hUDMassageObj.v_mTurnDis + m.h(new byte[]{13, -76, 83}, new byte[]{45, -103, 115, 62, -92, 105, -84, 105}) + hUDMassageObj.v_mRemainDis + m.h(new byte[]{-60, -106, 93}, new byte[]{-28, -69, 125, 9, -10, -9, 44, 105}) + hUDMassageObj.v_mNextRoad);
            h0.b.o().saveBoolean(m.h(new byte[]{-125, -74, 70, -13, 22}, new byte[]{-45, -60, 41, -96, 65, 83, -106, -19}), true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g() {
        HUDMassageObj hUDMassageObj = new HUDMassageObj();
        hUDMassageObj.v_mTurnType = -1;
        hUDMassageObj.v_mTurnDis = 0;
        hUDMassageObj.v_mNextRoad = " ";
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f1804a;
        z zVar = new z(hUDMassageObj, 0);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        scheduledThreadPoolExecutor.schedule(zVar, 50L, timeUnit);
        this.f1804a.schedule(new y(this, 1), 20000L, timeUnit);
        h0.b.v(m.h(new byte[]{-23, -13, -13, 50, 63, ByteCompanionObject.MAX_VALUE, 56, -59, -50, -42}, new byte[]{-95, -90, -73, 18, 18, 95, 107, -79}));
    }
}
