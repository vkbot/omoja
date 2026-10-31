package p242x7;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;

/* JADX INFO: renamed from: x7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3590g {
    /* JADX INFO: renamed from: c */
    public final void m5719c(InterfaceC3591h interfaceC3591h) {
        try {
            mo2897d(interfaceC3591h);
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

    /* JADX INFO: renamed from: d */
    public abstract void mo2897d(InterfaceC3591h interfaceC3591h);
}
