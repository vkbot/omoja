package p033c8;

import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0033e;
import p242x7.InterfaceC3584a;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: c8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1014d extends AtomicReference implements InterfaceC3762a, InterfaceC3584a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1020b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1014d(Object obj) {
        super(obj);
        this.f1020b = 2;
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public void mo237a() {
        lazySet(EnumC1011a.f1013b);
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public void mo238b(InterfaceC3762a interfaceC3762a) {
        EnumC1011a.m1218d(this, interfaceC3762a);
    }

    /* JADX INFO: renamed from: c */
    public boolean m1224c() {
        switch (this.f1020b) {
            case 0:
                return EnumC1011a.m1216b((InterfaceC3762a) get());
            default:
                return get() == null;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1225d(InterfaceC3762a interfaceC3762a) {
        while (true) {
            InterfaceC3762a interfaceC3762a2 = (InterfaceC3762a) get();
            if (interfaceC3762a2 == EnumC1011a.f1013b) {
                interfaceC3762a.dispose();
                return;
            }
            do {
                if (compareAndSet(interfaceC3762a2, interfaceC3762a)) {
                    if (interfaceC3762a2 != null) {
                        interfaceC3762a2.dispose();
                        return;
                    }
                    return;
                }
            } while (get() == interfaceC3762a2);
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        Object andSet;
        switch (this.f1020b) {
            case 0:
                EnumC1011a.m1215a(this);
                break;
            case 1:
                EnumC1011a.m1215a(this);
                break;
            default:
                if (get() != null && (andSet = getAndSet(null)) != null) {
                    ((Runnable) andSet).run();
                    break;
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    public void onError(Throwable th) {
        lazySet(EnumC1011a.f1013b);
        AbstractC0000a.m18s(new C0033e(th));
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        switch (this.f1020b) {
            case 2:
                return "RunnableDisposable(disposed=" + m1224c() + ", " + get() + ")";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C1014d(int i10) {
        this.f1020b = i10;
    }
}
