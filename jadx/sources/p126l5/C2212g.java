package p126l5;

import com.bumptech.glide.manager.C1074t;
import p136m5.C2399b;
import p141n.C2455p;
import p142n0.C2467b;
import p157o7.C2599a;

/* JADX INFO: renamed from: l5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2212g implements InterfaceC2215j {

    /* JADX INFO: renamed from: a */
    public final C2216k f5816a;

    /* JADX INFO: renamed from: b */
    public final C2455p f5817b;

    public C2212g(C2216k c2216k, C2455p c2455p) {
        this.f5816a = c2216k;
        this.f5817b = c2455p;
    }

    @Override // p126l5.InterfaceC2215j
    /* JADX INFO: renamed from: a */
    public final boolean mo3546a(C2399b c2399b) {
        if (c2399b.f6492b != 4 || this.f5816a.m3549a(c2399b)) {
            return false;
        }
        String str = c2399b.f6493c;
        if (str == null) {
            C2467b.m3828n("Null token");
            return false;
        }
        ((C2599a) this.f5817b.f6648c).m4082g(new C2206a(str, c2399b.f6495e, c2399b.f6496f));
        return true;
    }

    @Override // p126l5.InterfaceC2215j
    /* JADX INFO: renamed from: b */
    public final boolean mo3547b(Exception exc) {
        C2599a c2599a = (C2599a) this.f5817b.f6648c;
        c2599a.getClass();
        synchronized (c2599a.f7252b) {
            try {
                if (c2599a.f7251a) {
                    return true;
                }
                c2599a.f7251a = true;
                c2599a.f7255e = exc;
                ((C1074t) c2599a.f7253c).m1368n(c2599a);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
