package p151o;

import com.bumptech.glide.load.data.C1051l;
import java.util.ArrayDeque;
import p077h.C1645g;
import p077h.C1646h;
import p141n.C2445g;
import p141n.C2453n;
import p141n.C2454o;
import p141n.C2455p;
import p141n.C2456q;
import p141n.InterfaceC2457r;

/* JADX INFO: renamed from: o.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2562a implements InterfaceC2457r {

    /* JADX INFO: renamed from: b */
    public static final C1645g f7086b = C1645g.m2728a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* JADX INFO: renamed from: a */
    public final C2455p f7087a;

    public C2562a(C2455p c2455p) {
        this.f7087a = c2455p;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo3790a(Object obj) {
        return true;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        C2445g c2445g = (C2445g) obj;
        C2455p c2455p = this.f7087a;
        if (c2455p != null) {
            C2453n c2453n = (C2453n) c2455p.f6648c;
            C2454o c2454oM3807a = C2454o.m3807a(c2445g);
            Object objM1077a = c2453n.m1077a(c2454oM3807a);
            ArrayDeque arrayDeque = C2454o.f6645b;
            synchronized (arrayDeque) {
                arrayDeque.offer(c2454oM3807a);
            }
            C2445g c2445g2 = (C2445g) objM1077a;
            if (c2445g2 == null) {
                c2453n.m1080d(C2454o.m3807a(c2445g), c2445g);
            } else {
                c2445g = c2445g2;
            }
        }
        return new C2456q(c2445g, new C1051l(c2445g, ((Integer) c1646h.m2729c(f7086b)).intValue()));
    }
}
