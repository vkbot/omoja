package i7;

import android.location.Location;
import android.media.SoundPool;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.example.navistart.LocServ;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$AradarSenderType;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.woha.atir.CameraInfoView;
import e0.p3;
import e0.u1;
import e0.x1;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static double f2675o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2676a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2677b = e0.w.c(-1, e0.m.h(new byte[]{113, 84, 5, 10, -57, -63, -121, 80, 99, 80, 11, 15}, new byte[]{48, 56, 100, 120, -86, -88, -23, 55}));
    public ScheduledFuture c;
    public final LocServ d;
    public final Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedList f2678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f2679g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowManager f2680h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f2681i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CameraInfoView f2682j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public w f2683k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2684l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public s0.c f2685m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f2686n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(LocServ locServ) {
        new Handler(Looper.getMainLooper());
        this.e = new Object();
        this.f2678f = new LinkedList();
        this.f2679g = new Handler(Looper.getMainLooper());
        this.f2681i = Boolean.TRUE;
        new LinkedList();
        this.f2684l = true;
        this.f2686n = System.currentTimeMillis();
        this.d = locServ;
        d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean a() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-107}, new byte[]{-91, -86, -123, -59, 95, 15, 0, 124}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ad A[RETURN] */
    public static boolean f(a aVar, double d, double d9, ArrayList arrayList) {
        double dLoadInt = h0.b.o().loadInt(e0.m.h(new byte[]{51, -92, 122, 120, 13, -16, 14, 12, 33, -92, 100, 115, 12, -21, 2, 8, 63, -74, 113}, new byte[]{126, -27, 34, 39, 73, -71, 93, 88}), 50);
        f2675o = dLoadInt;
        double d10 = aVar.f2667b;
        x xVar = aVar.f2666a;
        if (d <= d10 || (d <= dLoadInt && (d9 >= h0.b.o().loadInt(e0.m.h(new byte[]{-106, -97, 40, -88, 40, 24, -63, -72, -97, -119, 39, -69, 58, 26, -55}, new byte[]{-37, -42, 102, -9, 123, 72, -124, -3}), 30) || d9 >= xVar.e))) {
            double d11 = xVar.f2725b;
            double d12 = xVar.c;
            if (arrayList.size() >= 2) {
                Location location = (Location) arrayList.get(arrayList.size() - 1);
                Location location2 = (Location) arrayList.get(arrayList.size() - 2);
                double latitude = location.getLatitude() - location2.getLatitude();
                if (((location.getLongitude() - location2.getLongitude()) * (d12 - location.getLongitude())) + (latitude * (d11 - location.getLatitude())) >= 0.0d || d <= f2675o) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(a aVar) {
        synchronized (this.e) {
            try {
                if (!this.f2678f.stream().anyMatch(new c(0, this, aVar))) {
                    this.f2678f.add(aVar);
                    ScheduledFuture scheduledFuture = this.c;
                    if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                        this.c.cancel(true);
                    }
                    this.c = this.f2677b.scheduleWithFixedDelay(new e(this, 2), 10L, 1000L, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        this.f2679g.post(new e(this, 1));
        HUDMassageObj hUDMassageObj = new HUDMassageObj();
        hUDMassageObj.AradarOn = Boolean.FALSE;
        hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
        hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.GENARADAR;
        hUDMassageObj.v_mTurnType = -1;
        hUDMassageObj.v_mTurnDis = 0;
        hUDMassageObj.v_mNextRoad = " ";
        h0.b.a();
        h0.b.i().e(hUDMassageObj);
        this.f2676a = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        LocServ locServ = this.d;
        s0.c cVar = new s0.c(locServ);
        this.f2685m = cVar;
        cVar.d = false;
        cVar.f5047b = cVar.f5046a.load(locServ, 2131886090, 1);
        u1 u1Var = new u1(locServ, e0.m.h(new byte[]{-101, -30, 32, -116, -20, 53, -74, -26, -116, -25, 36, -119}, new byte[]{-38, -114, 65, -2, -127, 98, -33, -120}));
        u1 u1Var2 = new u1(locServ, e0.m.h(new byte[]{-64, -109, -69, -68, 25, -82, 18, -36, -14, -106, -75, -90, 1, -108, 42, -52, -28}, new byte[]{-109, -6, -36, -46, 120, -62, 67, -87}));
        CameraInfoView cameraInfoView = new CameraInfoView(locServ);
        cameraInfoView.a(locServ);
        this.f2682j = cameraInfoView;
        w wVar = new w(locServ);
        wVar.c = 8;
        wVar.d = 2.5f;
        wVar.e = 0.5f;
        wVar.f2719f = 0.5f;
        wVar.f2720g = 20.0f;
        wVar.f2721h = 14.0f;
        wVar.f2722i = false;
        wVar.f2723j = 0L;
        this.f2683k = wVar;
        h0.b.a();
        this.f2680h = h0.b.g().b().f(this.f2682j, u1Var.c);
        h0.b.a();
        h0.b.g().b().f(this.f2683k, u1Var2.c);
        u1Var.a(this.f2682j, this.f2680h, new e(this, 0));
        u1Var.d();
        u1Var2.a(this.f2683k, this.f2680h, null);
        u1Var2.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        SoundPool soundPool;
        WindowManager windowManager = this.f2680h;
        if (windowManager != null) {
            a.a.v(windowManager, this.f2682j);
            a.a.v(this.f2680h, this.f2683k);
        }
        s0.c cVar = this.f2685m;
        if (cVar == null || (soundPool = cVar.f5046a) == null) {
            return;
        }
        soundPool.release();
        cVar.f5046a = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.c.cancel(true);
    }
}
