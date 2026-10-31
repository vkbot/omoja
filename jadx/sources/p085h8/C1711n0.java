package p085h8;

import java.util.concurrent.atomic.AtomicLong;
import p050e3.C1461d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1711n0 extends AtomicLong implements InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4438b;

    /* JADX INFO: renamed from: c */
    public volatile C1713o0 f4439c;

    /* JADX INFO: renamed from: d */
    public long f4440d;

    public C1711n0(InterfaceC3587d interfaceC3587d) {
        this.f4438b = interfaceC3587d;
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        C1713o0 c1713o0;
        if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (c1713o0 = this.f4439c) == null) {
            return;
        }
        c1713o0.m2839h(this);
        c1713o0.m2837c();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        long j11;
        if (EnumC2757f.m4278c(j10)) {
            do {
                j11 = get();
                if (j11 == Long.MIN_VALUE || j11 == Long.MAX_VALUE) {
                    break;
                }
            } while (!compareAndSet(j11, C1461d.m2503b(j11, j10)));
            C1713o0 c1713o0 = this.f4439c;
            if (c1713o0 != null) {
                c1713o0.m2837c();
            }
        }
    }
}
