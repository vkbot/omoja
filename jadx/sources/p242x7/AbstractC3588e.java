package p242x7;

import com.bumptech.glide.AbstractC1031d;
import p045d8.AbstractC1314b;
import p045d8.CallableC1313a;
import p095i8.C1781f;
import p095i8.C1790o;

/* JADX INFO: renamed from: x7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3588e {
    /* JADX INFO: renamed from: a */
    public static C1790o m5715a(Object obj) {
        AbstractC1314b.m2356a(obj, "item is null");
        return new C1790o(obj);
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC3588e m5716b(AbstractC3588e abstractC3588e) {
        AbstractC1314b.m2356a(abstractC3588e, "next is null");
        return new C1781f(this, new CallableC1313a(0, abstractC3588e), 2);
    }

    /* JADX INFO: renamed from: c */
    public final void m5717c(InterfaceC3589f interfaceC3589f) {
        AbstractC1314b.m2356a(interfaceC3589f, "observer is null");
        try {
            mo2841d(interfaceC3589f);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* JADX INFO: renamed from: d */
    public abstract void mo2841d(InterfaceC3589f interfaceC3589f);

    /* JADX INFO: renamed from: e */
    public final AbstractC3588e m5718e(AbstractC3588e abstractC3588e) {
        AbstractC1314b.m2356a(abstractC3588e, "other is null");
        return new C1781f(this, abstractC3588e, 3);
    }
}
