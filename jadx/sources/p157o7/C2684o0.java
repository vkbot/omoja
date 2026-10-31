package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.ArrayList;
import java.util.List;
import p132m0.RunnableC2345r0;
import p148n7.C2508f1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: o7.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2684o0 implements InterfaceC2731w {

    /* JADX INFO: renamed from: b */
    public final InterfaceC2731w f7649b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f7650c;

    /* JADX INFO: renamed from: d */
    public List f7651d = new ArrayList();

    public C2684o0(InterfaceC2731w interfaceC2731w) {
        this.f7649b = interfaceC2731w;
    }

    /* JADX INFO: renamed from: a */
    public final void m4193a(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.f7650c) {
                    runnable.run();
                } else {
                    this.f7651d.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: b */
    public final void mo68b(C2508f1 c2508f1, EnumC2725v enumC2725v, C2547v0 c2547v0) {
        m4193a(new RunnableC2345r0(2, this, c2508f1, enumC2725v, c2547v0));
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: j */
    public final void mo75j() {
        if (this.f7650c) {
            this.f7649b.mo75j();
        } else {
            m4193a(new RunnableC1054m(11, this));
        }
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: k */
    public final void mo76k(C2686o2 c2686o2) {
        if (this.f7650c) {
            this.f7649b.mo76k(c2686o2);
        } else {
            m4193a(new RunnableC2624e0(11, this, c2686o2));
        }
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: l */
    public final void mo77l(C2547v0 c2547v0) {
        m4193a(new RunnableC2624e0(12, this, c2547v0));
    }
}
