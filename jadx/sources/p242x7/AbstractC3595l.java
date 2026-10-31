package p242x7;

import com.bumptech.glide.AbstractC1031d;

/* JADX INFO: renamed from: x7.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3595l {
    /* JADX INFO: renamed from: a */
    public final void m5721a(InterfaceC3596m interfaceC3596m) {
        try {
            mo2896b(interfaceC3596m);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo2896b(InterfaceC3596m interfaceC3596m);
}
