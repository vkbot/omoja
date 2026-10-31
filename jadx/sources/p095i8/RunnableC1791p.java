package p095i8;

import java.util.concurrent.atomic.AtomicReference;
import p033c8.EnumC1011a;
import p242x7.AbstractC3594k;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1791p extends AtomicReference implements InterfaceC3589f, InterfaceC3762a, Runnable {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3589f f4698b;

    /* JADX INFO: renamed from: c */
    public final AbstractC3594k f4699c;

    /* JADX INFO: renamed from: d */
    public Object f4700d;

    /* JADX INFO: renamed from: e */
    public Throwable f4701e;

    public RunnableC1791p(InterfaceC3589f interfaceC3589f, AbstractC3594k abstractC3594k) {
        this.f4698b = interfaceC3589f;
        this.f4699c = abstractC3594k;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        EnumC1011a.m1217c(this, this.f4699c.m5720b(this));
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1218d(this, interfaceC3762a)) {
            this.f4698b.mo238b(this);
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        this.f4700d = obj;
        EnumC1011a.m1217c(this, this.f4699c.m5720b(this));
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        EnumC1011a.m1215a(this);
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        this.f4701e = th;
        EnumC1011a.m1217c(this, this.f4699c.m5720b(this));
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th = this.f4701e;
        InterfaceC3589f interfaceC3589f = this.f4698b;
        if (th != null) {
            this.f4701e = null;
            interfaceC3589f.onError(th);
            return;
        }
        Object obj = this.f4700d;
        if (obj == null) {
            interfaceC3589f.mo237a();
        } else {
            this.f4700d = null;
            interfaceC3589f.mo239c(obj);
        }
    }
}
