package p242x7;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p023b8.InterfaceC0929c;
import p045d8.AbstractC1314b;
import p085h8.C1685a0;
import p085h8.C1709m0;
import p085h8.C1715p0;
import p149n8.C2559d;
import p150n9.InterfaceC2560a;

/* JADX INFO: renamed from: x7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3585b implements InterfaceC2560a {

    /* JADX INFO: renamed from: b */
    public static final int f10653b = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @Override // p150n9.InterfaceC2560a
    /* JADX INFO: renamed from: a */
    public final void mo2835a(InterfaceC3587d interfaceC3587d) {
        if (interfaceC3587d != null) {
            m5714d(interfaceC3587d);
        } else {
            AbstractC1314b.m2356a(interfaceC3587d, "s is null");
            m5714d(new C2559d(interfaceC3587d));
        }
    }

    /* JADX INFO: renamed from: b */
    public final C1685a0 m5712b(InterfaceC0929c interfaceC0929c) {
        AbstractC1314b.m2356a(interfaceC0929c, "mapper is null");
        AbstractC1314b.m2357b(Integer.MAX_VALUE, "maxConcurrency");
        return new C1685a0(this, interfaceC0929c);
    }

    /* JADX INFO: renamed from: c */
    public final C1715p0 m5713c() {
        int i10 = f10653b;
        AbstractC1314b.m2357b(i10, "bufferSize");
        AtomicReference atomicReference = new AtomicReference();
        return new C1715p0(new C1709m0(atomicReference, i10), this, atomicReference, i10);
    }

    /* JADX INFO: renamed from: d */
    public final void m5714d(InterfaceC3587d interfaceC3587d) {
        AbstractC1314b.m2356a(interfaceC3587d, "s is null");
        try {
            mo2803e(interfaceC3587d);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            AbstractC0000a.m18s(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* JADX INFO: renamed from: e */
    public abstract void mo2803e(InterfaceC3587d interfaceC3587d);
}
