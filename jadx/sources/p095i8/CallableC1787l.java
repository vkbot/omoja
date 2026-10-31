package p095i8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p000a.AbstractC0000a;
import p033c8.C1014d;
import p045d8.AbstractC1314b;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;

/* JADX INFO: renamed from: i8.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC1787l extends AbstractC3588e implements Callable {

    /* JADX INFO: renamed from: b */
    public final Callable f4693b;

    public CallableC1787l(Callable callable) {
        this.f4693b = callable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f4693b.call();
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        C1014d c1014d = new C1014d(AbstractC1314b.f3134b);
        interfaceC3589f.mo238b(c1014d);
        if (c1014d.m1224c()) {
            return;
        }
        try {
            Object objCall = this.f4693b.call();
            if (c1014d.m1224c()) {
                return;
            }
            if (objCall == null) {
                interfaceC3589f.mo237a();
            } else {
                interfaceC3589f.mo239c(objCall);
            }
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            if (c1014d.m1224c()) {
                AbstractC0000a.m18s(th);
            } else {
                interfaceC3589f.onError(th);
            }
        }
    }
}
