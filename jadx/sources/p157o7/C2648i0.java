package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.ArrayList;
import java.util.List;
import p028c3.RunnableC0979e;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: o7.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2648i0 extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final AbstractC2503e f7516b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f7517c;

    /* JADX INFO: renamed from: d */
    public List f7518d = new ArrayList();

    public C2648i0(AbstractC2503e abstractC2503e) {
        this.f7516b = abstractC2503e;
    }

    /* JADX INFO: renamed from: E */
    public final void m4166E(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.f7517c) {
                    runnable.run();
                } else {
                    this.f7518d.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: o */
    public final void mo3907o(C2508f1 c2508f1, C2547v0 c2547v0) {
        m4166E(new RunnableC0979e(this, c2508f1, c2547v0, 3));
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: p */
    public final void mo3908p(C2547v0 c2547v0) {
        if (this.f7517c) {
            this.f7516b.mo3908p(c2547v0);
        } else {
            m4166E(new RunnableC2624e0(3, this, c2547v0));
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: q */
    public final void mo3909q(Object obj) {
        if (this.f7517c) {
            this.f7516b.mo3909q(obj);
        } else {
            m4166E(new RunnableC2624e0(4, this, obj));
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: r */
    public final void mo3910r() {
        if (this.f7517c) {
            this.f7516b.mo3910r();
        } else {
            m4166E(new RunnableC1054m(10, this));
        }
    }
}
