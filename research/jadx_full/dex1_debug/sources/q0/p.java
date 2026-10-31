package q0;

import android.content.Context;
import android.util.Log;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Transport.TransportService;
import e0.d2;
import e0.p3;
import e0.x1;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p implements h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f4811o = e0.m.h(new byte[]{55, 50, -75, -74, -127, 26, 70, 100, 55}, new byte[]{71, 90, -38, -40, -28, 69, 39, 20});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f4812p = e0.m.h(new byte[]{119, -17, -1, -94, 40, -120, 97, 107, 96, -9, -29, -97, 34, -68, 99, 120, 66}, new byte[]{39, -121, -112, -52, 77, -55, 17, 27});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MockGpsService f4814b;
    public volatile boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f4815f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f4816g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile long f4817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f4818i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public y0.d f4820k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public y0.d f4821l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public y0.d f4822m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public y0.h f4823n;
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f4819j = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        this.f4813a = mockGpsService.getApplicationContext();
        this.f4814b = mockGpsService2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
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
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{107}, new byte[]{91, 73, -28, 22, 64, 24, 37, -19}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String a() {
        CopyOnWriteArrayList copyOnWriteArrayList = y0.g.f6090a;
        String str = TransportService.f858y;
        return (str == null || str.trim().isEmpty()) ? this.f4813a.getString(2131952647) : str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(boolean z8) {
        y0.h hVar = this.f4823n;
        if (hVar == null || !this.f4815f) {
            return;
        }
        try {
            hVar.c(e0.m.h(new byte[]{100, -29, -120, 52, -60, 117, -37, 33, 100, -65, -103, 40, -46, 118, -47, Base64.padSymbol, 115, -12, -57, Base64.padSymbol, -57, 118}, new byte[]{16, -111, -23, 90, -73, 5, -76, 83}), com.bumptech.glide.d.e(e0.m.h(new byte[]{75, -33, 78}, new byte[]{44, -81, Base64.padSymbol, -61, -2, 103, 112, 119}), z8));
        } catch (RuntimeException | JSONException e) {
            Log.w(f4812p, e0.m.h(new byte[]{-112, -119, -90, -54, -111, 29, -81, -81, -86, -57, -73, -35, -97, 20, -26, -88, -83, -57, ByteCompanionObject.MIN_VALUE, -8, -82, 88, -1, -87, -96, -108, -94, -58, -98, 29}, new byte[]{-59, -25, -57, -88, -3, 120, -113, -37}), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        y0.h hVar = this.f4823n;
        if (hVar == null || !this.f4815f) {
            return;
        }
        try {
            hVar.c(e0.m.h(new byte[]{55, 6, -118, 50, 69, 11, -5, -6, 62, 18}, new byte[]{80, 118, -7, 28, 33, 110, -106, -101}), com.bumptech.glide.d.e(e0.m.h(new byte[]{88, 124, -83}, new byte[]{63, 12, -34, -112, 67, 78, -13, 87}), this.f4819j));
        } catch (RuntimeException | JSONException e) {
            Log.w(f4812p, e0.m.h(new byte[]{27, -102, -41, -18, 37, 54, 22, -47, 33, -44, -58, -7, 43, 63, 95, -42, 38, -44, -15, -36, 26, 115, 82, -64, 35, -107, -40, -24}, new byte[]{78, -12, -74, -116, 73, 83, 54, -91}), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getTitle() {
        return this.f4813a.getString(2131952261);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getType() {
        return f4811o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void start() {
        if (this.d.compareAndSet(false, true)) {
            if (!this.e) {
                try {
                    if (c().booleanValue()) {
                        this.e = true;
                    }
                } catch (Exception unused) {
                }
            }
            this.f4823n = y0.g.a(this.f4813a, e0.m.h(new byte[]{-29, 70, -11, -109, -30, 97, -31, 99, -25, 83}, new byte[]{-124, 54, -122, -66, -111, 14, -108, 17}));
            this.f4820k = y0.g.e(e0.m.h(new byte[]{-126, 80, 36, 97, 37, 46, 126, 44, -111, 73, 56, 33}, new byte[]{-27, 32, 87, 79, 73, 65, 29, 77}), new o(this, 0));
            this.f4822m = y0.g.e(e0.m.h(new byte[]{-58, -34, -70, -106, 90, -68, -119, -91, -58, -126, -85, -118, 76, -65, -125, -71, -47, -55, -11, -97, 89, -65}, new byte[]{-78, -84, -37, -8, 41, -52, -26, -41}), new o(this, 1));
            d2 d2Var = new d2(1, this);
            y0.g.f6091b.add(d2Var);
            d2Var.a(TransportService.f857x.get());
            this.f4821l = new y0.d(1, d2Var);
            this.c.execute(new f5.j(12, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void stop() {
        this.d.set(false);
        y0.d dVar = this.f4820k;
        if (dVar != null) {
            try {
                ai.onnxruntime.a.A(dVar);
            } catch (Exception unused) {
            }
        }
        this.f4820k = null;
        y0.d dVar2 = this.f4821l;
        if (dVar2 != null) {
            try {
                ai.onnxruntime.a.A(dVar2);
            } catch (Exception unused2) {
            }
        }
        this.f4821l = null;
        d(false);
        y0.d dVar3 = this.f4822m;
        if (dVar3 != null) {
            try {
                ai.onnxruntime.a.A(dVar3);
            } catch (Exception unused3) {
            }
        }
        this.f4822m = null;
        y0.h hVar = this.f4823n;
        if (hVar != null) {
            hVar.close();
            this.f4823n = null;
        }
        this.c.shutdownNow();
    }

    @Override // q0.h
    public final void b(j.i iVar) {
    }
}
