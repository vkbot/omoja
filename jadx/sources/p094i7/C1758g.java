package p094i7;

import android.location.Location;
import android.media.SoundPool;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.example.navistart.LocServ;
import com.example.navistart.R;
import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import com.woha.atir.CameraInfoView;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1428u1;
import p047e0.C1440x1;
import p078h0.C1652b;
import p189s0.C3131c;
import p206u0.C3277a;

/* JADX INFO: renamed from: i7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1758g {

    /* JADX INFO: renamed from: o */
    public static double f4582o;

    /* JADX INFO: renamed from: a */
    public boolean f4583a = true;

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f4584b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{113, 84, 5, 10, -57, -63, -121, 80, 99, 80, 11, 15}, new byte[]{48, 56, 100, 120, -86, -88, -23, 55}));

    /* JADX INFO: renamed from: c */
    public ScheduledFuture f4585c;

    /* JADX INFO: renamed from: d */
    public final LocServ f4586d;

    /* JADX INFO: renamed from: e */
    public final Object f4587e;

    /* JADX INFO: renamed from: f */
    public final LinkedList f4588f;

    /* JADX INFO: renamed from: g */
    public final Handler f4589g;

    /* JADX INFO: renamed from: h */
    public WindowManager f4590h;

    /* JADX INFO: renamed from: i */
    public final Boolean f4591i;

    /* JADX INFO: renamed from: j */
    public CameraInfoView f4592j;

    /* JADX INFO: renamed from: k */
    public C1774w f4593k;

    /* JADX INFO: renamed from: l */
    public boolean f4594l;

    /* JADX INFO: renamed from: m */
    public C3131c f4595m;

    /* JADX INFO: renamed from: n */
    public long f4596n;

    public C1758g(LocServ locServ) {
        new Handler(Looper.getMainLooper());
        this.f4587e = new Object();
        this.f4588f = new LinkedList();
        this.f4589g = new Handler(Looper.getMainLooper());
        this.f4591i = Boolean.TRUE;
        new LinkedList();
        this.f4594l = true;
        this.f4596n = System.currentTimeMillis();
        this.f4586d = locServ;
        m2878d();
    }

    /* JADX INFO: renamed from: a */
    public static Boolean m2874a() {
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
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-107}, new byte[]{-91, -86, -123, -59, 95, 15, 0, 124}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ad A[RETURN] */
    /* JADX INFO: renamed from: f */
    public static boolean m2875f(C1752a c1752a, double d, double d10, ArrayList arrayList) {
        double dLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{51, -92, 122, 120, 13, -16, 14, 12, 33, -92, 100, 115, 12, -21, 2, 8, 63, -74, 113}, new byte[]{126, -27, 34, 39, 73, -71, 93, 88}), 50);
        f4582o = dLoadInt;
        double d11 = c1752a.f4568b;
        C1775x c1775x = c1752a.f4567a;
        if (d <= d11 || (d <= dLoadInt && (d10 >= C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-106, -97, 40, -88, 40, 24, -63, -72, -97, -119, 39, -69, 58, 26, -55}, new byte[]{-37, -42, 102, -9, 123, 72, -124, -3}), 30) || d10 >= c1775x.f4664e))) {
            double d12 = c1775x.f4661b;
            double d13 = c1775x.f4662c;
            if (arrayList.size() >= 2) {
                Location location = (Location) arrayList.get(arrayList.size() - 1);
                Location location2 = (Location) arrayList.get(arrayList.size() - 2);
                double latitude = location.getLatitude() - location2.getLatitude();
                if (((location.getLongitude() - location2.getLongitude()) * (d13 - location.getLongitude())) + (latitude * (d12 - location.getLatitude())) >= 0.0d || d <= f4582o) {
                    if (d > 1000.0d) {
                        return false;
                    }
                }
            } else if (d > 1000.0d) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public final void m2876b(C1752a c1752a) {
        synchronized (this.f4587e) {
            try {
                if (!this.f4588f.stream().anyMatch(new C1754c(0, this, c1752a))) {
                    this.f4588f.add(c1752a);
                    ScheduledFuture scheduledFuture = this.f4585c;
                    if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                        this.f4585c.cancel(true);
                    }
                    this.f4585c = this.f4584b.scheduleWithFixedDelay(new RunnableC1756e(this, 2), 10L, 1000L, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2877c() {
        this.f4589g.post(new RunnableC1756e(this, 1));
        HUDMassageObj hUDMassageObj = new HUDMassageObj();
        hUDMassageObj.AradarOn = Boolean.FALSE;
        hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
        hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.GENARADAR;
        hUDMassageObj.v_mTurnType = -1;
        hUDMassageObj.v_mTurnDis = 0;
        hUDMassageObj.v_mNextRoad = " ";
        C1652b.m2734a();
        C1652b.m2740i().m2369e(hUDMassageObj);
        this.f4583a = true;
    }

    /* JADX INFO: renamed from: d */
    public final void m2878d() {
        LocServ locServ = this.f4586d;
        C3131c c3131c = new C3131c(locServ);
        this.f4595m = c3131c;
        c3131c.f8958d = false;
        c3131c.f8956b = c3131c.f8955a.load(locServ, R.raw.sky_call_connecting, 1);
        C1428u1 c1428u1 = new C1428u1(locServ, AbstractC1387m.m2421h(new byte[]{-101, -30, 32, -116, -20, 53, -74, -26, -116, -25, 36, -119}, new byte[]{-38, -114, 65, -2, -127, 98, -33, -120}));
        C1428u1 c1428u2 = new C1428u1(locServ, AbstractC1387m.m2421h(new byte[]{-64, -109, -69, -68, 25, -82, 18, -36, -14, -106, -75, -90, 1, -108, 42, -52, -28}, new byte[]{-109, -6, -36, -46, 120, -62, 67, -87}));
        CameraInfoView cameraInfoView = new CameraInfoView(locServ);
        cameraInfoView.m2201a(locServ);
        this.f4592j = cameraInfoView;
        C1774w c1774w = new C1774w(locServ);
        c1774w.f4652c = 8;
        c1774w.f4653d = 2.5f;
        c1774w.f4654e = 0.5f;
        c1774w.f4655f = 0.5f;
        c1774w.f4656g = 20.0f;
        c1774w.f4657h = 14.0f;
        c1774w.f4658i = false;
        c1774w.f4659j = 0L;
        this.f4593k = c1774w;
        C1652b.m2734a();
        this.f4590h = C1652b.m2738g().mo3013b().mo1144f(this.f4592j, c1428u1.f3431c);
        C1652b.m2734a();
        C1652b.m2738g().mo3013b().mo1144f(this.f4593k, c1428u2.f3431c);
        c1428u1.m2476a(this.f4592j, this.f4590h, new RunnableC1756e(this, 0));
        c1428u1.m2479d();
        c1428u2.m2476a(this.f4593k, this.f4590h, null);
        c1428u2.m2479d();
    }

    /* JADX INFO: renamed from: e */
    public final void m2879e() {
        SoundPool soundPool;
        WindowManager windowManager = this.f4590h;
        if (windowManager != null) {
            AbstractC0000a.m21v(windowManager, this.f4592j);
            AbstractC0000a.m21v(this.f4590h, this.f4593k);
        }
        C3131c c3131c = this.f4595m;
        if (c3131c == null || (soundPool = c3131c.f8955a) == null) {
            return;
        }
        soundPool.release();
        c3131c.f8955a = null;
    }

    /* JADX INFO: renamed from: g */
    public final void m2880g() {
        ScheduledFuture scheduledFuture = this.f4585c;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f4585c.cancel(true);
    }
}
