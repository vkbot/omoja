package p136m5;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p099j1.C1929i;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;
import p157o7.C2645h3;
import p157o7.C2652i4;
import p157o7.C2671m;
import p157o7.ExecutorC2739x1;
import p157o7.ScheduledExecutorServiceC2620d2;

/* JADX INFO: renamed from: m5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2398a {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6483a = 0;

    /* JADX INFO: renamed from: b */
    public int f6484b;

    /* JADX INFO: renamed from: c */
    public Object f6485c;

    /* JADX INFO: renamed from: d */
    public Object f6486d;

    /* JADX INFO: renamed from: e */
    public Object f6487e;

    /* JADX INFO: renamed from: f */
    public Object f6488f;

    /* JADX INFO: renamed from: g */
    public Object f6489g;

    /* JADX INFO: renamed from: h */
    public Object f6490h;

    public C2398a(Integer num, C2645h3 c2645h3, ExecutorC2523k1 executorC2523k1, C2652i4 c2652i4, ScheduledExecutorServiceC2620d2 scheduledExecutorServiceC2620d2, C2671m c2671m, ExecutorC2739x1 executorC2739x1) {
        this.f6484b = num.intValue();
        AbstractC2587b.m4042i(c2645h3, "proxyDetector not set");
        this.f6485c = c2645h3;
        this.f6486d = executorC2523k1;
        this.f6487e = c2652i4;
        this.f6488f = scheduledExecutorServiceC2620d2;
        this.f6489g = c2671m;
        this.f6490h = executorC2739x1;
    }

    /* JADX INFO: renamed from: a */
    public C2399b m3762a() {
        String strConcat = this.f6484b == 0 ? " registrationStatus" : "";
        if (((Long) this.f6489g) == null) {
            strConcat = strConcat.concat(" expiresInSecs");
        }
        if (((Long) this.f6490h) == null) {
            strConcat = strConcat.concat(" tokenCreationEpochInSecs");
        }
        if (strConcat.isEmpty()) {
            return new C2399b((String) this.f6485c, this.f6484b, (String) this.f6486d, (String) this.f6487e, ((Long) this.f6489g).longValue(), ((Long) this.f6490h).longValue(), (String) this.f6488f);
        }
        C1929i.m3030l("Missing required properties:".concat(strConcat));
        return null;
    }

    public String toString() {
        switch (this.f6483a) {
            case 1:
                C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
                c1073sM1263t.m1349e("defaultPort", String.valueOf(this.f6484b));
                c1073sM1263t.m1347c((C2645h3) this.f6485c, "proxyDetector");
                c1073sM1263t.m1347c((ExecutorC2523k1) this.f6486d, "syncContext");
                c1073sM1263t.m1347c((C2652i4) this.f6487e, "serviceConfigParser");
                c1073sM1263t.m1347c((ScheduledExecutorServiceC2620d2) this.f6488f, "scheduledExecutorService");
                c1073sM1263t.m1347c((C2671m) this.f6489g, "channelLogger");
                c1073sM1263t.m1347c((ExecutorC2739x1) this.f6490h, "executor");
                c1073sM1263t.m1347c(null, "overrideAuthority");
                return c1073sM1263t.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C2398a() {
    }
}
