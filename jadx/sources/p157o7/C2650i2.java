package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import p148n7.AbstractC2528m0;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2551x0;

/* JADX INFO: renamed from: o7.i2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2650i2 extends AbstractC2528m0 {

    /* JADX INFO: renamed from: b */
    public static final ReferenceQueue f7521b = new ReferenceQueue();

    /* JADX INFO: renamed from: c */
    public static final ConcurrentHashMap f7522c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d */
    public static final Logger f7523d = Logger.getLogger(C2650i2.class.getName());

    /* JADX INFO: renamed from: a */
    public final C2632f2 f7524a;

    public C2650i2(C2632f2 c2632f2) {
        this.f7524a = c2632f2;
        new C2644h2(this, c2632f2, f7521b, f7522c);
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: e */
    public final String mo3887e() {
        return this.f7524a.f7444t.mo3887e();
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: f */
    public final AbstractC2542t mo3888f(C2551x0 c2551x0, C2497c c2497c) {
        return this.f7524a.f7444t.mo3888f(c2551x0, c2497c);
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7524a, "delegate");
        return c1073sM1263t.toString();
    }
}
