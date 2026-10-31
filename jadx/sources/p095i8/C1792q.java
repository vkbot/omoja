package p095i8;

import android.support.v4.media.C0090h;
import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicReference;
import p009a8.C0031c;
import p033c8.EnumC1011a;
import p045d8.AbstractC1314b;
import p045d8.CallableC1313a;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1792q extends AtomicReference implements InterfaceC3589f, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3589f f4702b;

    /* JADX INFO: renamed from: c */
    public final CallableC1313a f4703c;

    /* JADX INFO: renamed from: d */
    public final boolean f4704d = true;

    public C1792q(InterfaceC3589f interfaceC3589f, CallableC1313a callableC1313a) {
        this.f4702b = interfaceC3589f;
        this.f4703c = callableC1313a;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        this.f4702b.mo237a();
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1218d(this, interfaceC3762a)) {
            this.f4702b.mo238b(this);
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        this.f4702b.mo239c(obj);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        EnumC1011a.m1215a(this);
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        boolean z9 = this.f4704d;
        InterfaceC3589f interfaceC3589f = this.f4702b;
        if (!z9 && !(th instanceof Exception)) {
            interfaceC3589f.onError(th);
            return;
        }
        try {
            Object obj = this.f4703c.f3132c;
            AbstractC1314b.m2356a(obj, "The resumeFunction returned a null MaybeSource");
            AbstractC3588e abstractC3588e = (AbstractC3588e) obj;
            EnumC1011a.m1217c(this, null);
            abstractC3588e.m5717c(new C0090h((Object) interfaceC3589f, (Object) this, false, 16));
        } catch (Throwable th2) {
            AbstractC1031d.m1292v(th2);
            interfaceC3589f.onError(new C0031c(th, th2));
        }
    }
}
