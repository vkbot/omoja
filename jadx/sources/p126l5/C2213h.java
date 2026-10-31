package p126l5;

import com.bumptech.glide.manager.C1074t;
import p136m5.C2399b;
import p141n.C2455p;
import p157o7.C2599a;

/* JADX INFO: renamed from: l5.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2213h implements InterfaceC2215j {

    /* JADX INFO: renamed from: a */
    public final C2455p f5818a;

    public C2213h(C2455p c2455p) {
        this.f5818a = c2455p;
    }

    @Override // p126l5.InterfaceC2215j
    /* JADX INFO: renamed from: a */
    public final boolean mo3546a(C2399b c2399b) {
        int i10 = c2399b.f6492b;
        if (i10 != 3 && i10 != 4 && i10 != 5) {
            return false;
        }
        C2455p c2455p = this.f5818a;
        String str = c2399b.f6491a;
        C2599a c2599a = (C2599a) c2455p.f6648c;
        synchronized (c2599a.f7252b) {
            try {
                if (c2599a.f7251a) {
                    return true;
                }
                c2599a.f7251a = true;
                c2599a.f7254d = str;
                ((C1074t) c2599a.f7253c).m1368n(c2599a);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p126l5.InterfaceC2215j
    /* JADX INFO: renamed from: b */
    public final boolean mo3547b(Exception exc) {
        return false;
    }
}
