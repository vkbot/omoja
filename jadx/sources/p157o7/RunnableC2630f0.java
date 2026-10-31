package p157o7;

import java.util.HashSet;
import java.util.LinkedHashSet;
import p016b1.C0872m;
import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2630f0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7386b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2608b2 f7387c;

    public /* synthetic */ RunnableC2630f0(C2608b2 c2608b2, int i10) {
        this.f7386b = i10;
        this.f7387c = c2608b2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7386b) {
            case 0:
                this.f7387c.f7316i.mo3971k();
                return;
            case 1:
                this.f7387c.f7316i.mo3970g();
                return;
            default:
                C2608b2 c2608b2 = this.f7387c;
                LinkedHashSet linkedHashSet = c2608b2.f7324q.f7334d.f7398B;
                if (linkedHashSet != null) {
                    linkedHashSet.remove(c2608b2);
                    if (this.f7387c.f7324q.f7334d.f7398B.isEmpty()) {
                        C2632f2 c2632f2 = this.f7387c.f7324q.f7334d;
                        c2632f2.f7421Y.m3098d(c2632f2.f7399C, false);
                        C2632f2 c2632f3 = this.f7387c.f7324q.f7334d;
                        c2632f3.f7398B = null;
                        if (c2632f3.f7403G.get()) {
                            C0872m c0872m = this.f7387c.f7324q.f7334d.f7402F;
                            C2508f1 c2508f1 = C2632f2.f7392e0;
                            synchronized (c0872m.f601c) {
                                try {
                                    if (((C2508f1) c0872m.f603e) == null) {
                                        c0872m.f603e = c2508f1;
                                        boolean zIsEmpty = ((HashSet) c0872m.f602d).isEmpty();
                                        if (zIsEmpty) {
                                            ((C2632f2) c0872m.f604f).f7401E.mo4170a(c2508f1);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
