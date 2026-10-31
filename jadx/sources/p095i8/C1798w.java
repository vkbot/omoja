package p095i8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.EnumC1011a;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1798w extends AtomicReference implements InterfaceC3589f {

    /* JADX INFO: renamed from: b */
    public final C1797v f4717b;

    /* JADX INFO: renamed from: c */
    public final int f4718c;

    public C1798w(C1797v c1797v, int i10) {
        this.f4717b = c1797v;
        this.f4718c = i10;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        C1797v c1797v = this.f4717b;
        if (c1797v.getAndSet(0) > 0) {
            c1797v.m2898a(this.f4718c);
            c1797v.f4713b.mo237a();
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        EnumC1011a.m1218d(this, interfaceC3762a);
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        C1797v c1797v = this.f4717b;
        InterfaceC3589f interfaceC3589f = c1797v.f4713b;
        Object[] objArr = c1797v.f4716e;
        objArr[this.f4718c] = obj;
        if (c1797v.decrementAndGet() == 0) {
            try {
                interfaceC3589f.mo239c(c1797v.f4714c.apply(objArr));
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                interfaceC3589f.onError(th);
            }
        }
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        C1797v c1797v = this.f4717b;
        if (c1797v.getAndSet(0) <= 0) {
            AbstractC0000a.m18s(th);
        } else {
            c1797v.m2898a(this.f4718c);
            c1797v.f4713b.onError(th);
        }
    }
}
