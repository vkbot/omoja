package p139m8;

import java.util.concurrent.TimeUnit;
import p033c8.C1013c;
import p033c8.EnumC1012b;
import p085h8.AbstractRunnableC1699h0;
import p242x7.AbstractC3593j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2413a extends AbstractC3593j {

    /* JADX INFO: renamed from: b */
    public final C1013c f6541b;

    /* JADX INFO: renamed from: c */
    public final C1013c f6542c;

    /* JADX INFO: renamed from: d */
    public final C1013c f6543d;

    /* JADX INFO: renamed from: e */
    public final C2415c f6544e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f6545f;

    public C2413a(C2415c c2415c) {
        this.f6544e = c2415c;
        C1013c c1013c = new C1013c(0);
        this.f6541b = c1013c;
        C1013c c1013c2 = new C1013c(1);
        this.f6542c = c1013c2;
        C1013c c1013c3 = new C1013c(0);
        this.f6543d = c1013c3;
        c1013c3.m1221a(c1013c);
        c1013c3.m1221a(c1013c2);
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: a */
    public final InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit) {
        if (this.f6545f) {
            return EnumC1012b.f1015b;
        }
        return this.f6544e.m3782c(runnable, TimeUnit.NANOSECONDS, this.f6542c);
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: b */
    public final void mo3779b(AbstractRunnableC1699h0 abstractRunnableC1699h0) {
        if (this.f6545f) {
            return;
        }
        this.f6544e.m3782c(abstractRunnableC1699h0, TimeUnit.MILLISECONDS, this.f6541b);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f6545f) {
            return;
        }
        this.f6545f = true;
        this.f6543d.dispose();
    }
}
