package p095i8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p023b8.InterfaceC0929c;
import p033c8.EnumC1011a;
import p045d8.AbstractC1314b;
import p184r5.C3105c;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1785j extends AtomicReference implements InterfaceC3589f, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3589f f4688b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC0929c f4689c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3762a f4690d;

    public C1785j(InterfaceC3589f interfaceC3589f, InterfaceC0929c interfaceC0929c) {
        this.f4688b = interfaceC3589f;
        this.f4689c = interfaceC0929c;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        this.f4688b.mo237a();
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f4690d, interfaceC3762a)) {
            this.f4690d = interfaceC3762a;
            this.f4688b.mo238b(this);
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        try {
            Object objApply = this.f4689c.apply(obj);
            AbstractC1314b.m2356a(objApply, "The mapper returned a null MaybeSource");
            AbstractC3588e abstractC3588e = (AbstractC3588e) objApply;
            if (EnumC1011a.m1216b((InterfaceC3762a) get())) {
                return;
            }
            abstractC3588e.m5717c(new C3105c(20, this));
        } catch (Exception e) {
            AbstractC1031d.m1292v(e);
            this.f4688b.onError(e);
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        EnumC1011a.m1215a(this);
        this.f4690d.dispose();
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        this.f4688b.onError(th);
    }
}
