package p157o7;

import androidx.core.app.NotificationCompat;
import java.util.concurrent.atomic.AtomicInteger;
import p148n7.AbstractC2503e;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2659k extends AbstractC2720u0 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2612c0 f7552a;

    /* JADX INFO: renamed from: b */
    public final AtomicInteger f7553b = new AtomicInteger(-2147483647);

    /* JADX INFO: renamed from: c */
    public volatile C2508f1 f7554c;

    public C2659k(C2665l c2665l, InterfaceC2612c0 interfaceC2612c0, String str) {
        new C2722u2(this);
        AbstractC2587b.m4042i(interfaceC2612c0, "delegate");
        this.f7552a = interfaceC2612c0;
    }

    @Override // p157o7.AbstractC2720u0, p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: a */
    public final void mo4170a(C2508f1 c2508f1) {
        AbstractC2587b.m4042i(c2508f1, NotificationCompat.CATEGORY_STATUS);
        synchronized (this) {
            try {
                if (this.f7553b.get() < 0) {
                    this.f7554c = c2508f1;
                    this.f7553b.addAndGet(Integer.MAX_VALUE);
                    if (this.f7553b.get() != 0) {
                        return;
                    }
                    super.mo4170a(c2508f1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2737x
    /* JADX INFO: renamed from: d */
    public final InterfaceC2719u mo4156d(C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c, AbstractC2503e[] abstractC2503eArr) {
        c2497c.getClass();
        return this.f7553b.get() >= 0 ? new C2708s0(this.f7554c, EnumC2725v.f7801b, abstractC2503eArr) : this.f7552a.mo4156d(c2551x0, c2547v0, c2497c, abstractC2503eArr);
    }

    @Override // p157o7.AbstractC2720u0
    /* JADX INFO: renamed from: e */
    public final InterfaceC2612c0 mo4157e() {
        return this.f7552a;
    }
}
