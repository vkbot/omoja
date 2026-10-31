package p062f5;

import java.util.HashSet;
import p165p2.C2962e;
import p200t4.C3253n;

/* JADX INFO: renamed from: f5.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1541b0 {

    /* JADX INFO: renamed from: a */
    public volatile Object f3794a;

    /* JADX INFO: renamed from: a */
    public final C1539a0 m2634a(C2962e c2962e) {
        Object obj = this.f3794a;
        if (obj instanceof C1541b0) {
            return ((C1541b0) obj).m2634a(c2962e);
        }
        C1539a0 c1539a0 = new C1539a0();
        c1539a0.f3789a = new HashSet();
        ((C3253n) obj).m5188a(new C1548f(7, c1539a0, c2962e));
        return c1539a0;
    }
}
