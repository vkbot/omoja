package i7;

import com.example.navistart.LocServ;
import e0.h1;
import e0.p3;
import e0.x1;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static ArrayList f2697k = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocServ f2698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2699b;
    public final g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i f2700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final j f2701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public h1 f2702h;
    public final WeakHashMap c = new WeakHashMap();
    public double d = 0.0d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f2703i = Boolean.TRUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2704j = e0.w.c(-1, e0.m.h(new byte[]{41, 107, 50, 54, -123, 87, -122, -60, 7, 126, 51}, new byte[]{110, 27, 65, 120, -22, 35, -17, -94}));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(LocServ locServ) {
        this.f2698a = locServ;
        this.f2701g = new j(locServ);
        this.e = new g(locServ);
        i iVar = new i(0);
        iVar.f2690b = new ArrayList();
        this.f2700f = iVar;
        this.f2702h = new h1(this);
        this.f2699b = h0.b.o().loadInt(e0.m.h(new byte[]{-45, -18, 81, 94, 44, 66}, new byte[]{-127, -81, 21, 23, 121, 17, 0, -119}), 1500);
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
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-36}, new byte[]{-20, -1, -2, -28, 12, 70, -18, 76}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }
}
