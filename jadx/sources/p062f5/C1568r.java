package p062f5;

import p033c8.EnumC1011a;
import p095i8.C1777b;
import p242x7.InterfaceC3589f;
import p257z2.InterfaceC3705a;
import p257z2.InterfaceC3706b;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: f5.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1568r implements InterfaceC3706b, InterfaceC3705a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1777b f3855b;

    @Override // p257z2.InterfaceC3705a
    /* JADX INFO: renamed from: a */
    public void mo2646a(Exception exc) {
        C1777b c1777b = this.f3855b;
        c1777b.onError(exc);
        c1777b.mo237a();
    }

    @Override // p257z2.InterfaceC3706b
    /* JADX INFO: renamed from: c */
    public void mo860c(Object obj) {
        InterfaceC3762a interfaceC3762a;
        C1777b c1777b = this.f3855b;
        Object obj2 = c1777b.get();
        EnumC1011a enumC1011a = EnumC1011a.f1013b;
        if (obj2 != enumC1011a && (interfaceC3762a = (InterfaceC3762a) c1777b.getAndSet(enumC1011a)) != enumC1011a) {
            InterfaceC3589f interfaceC3589f = (InterfaceC3589f) c1777b.f4671c;
            try {
                if (obj == null) {
                    interfaceC3589f.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    interfaceC3589f.mo239c(obj);
                }
                if (interfaceC3762a != null) {
                    interfaceC3762a.dispose();
                }
            } catch (Throwable th) {
                if (interfaceC3762a != null) {
                    interfaceC3762a.dispose();
                }
                throw th;
            }
        }
        c1777b.mo237a();
    }
}
