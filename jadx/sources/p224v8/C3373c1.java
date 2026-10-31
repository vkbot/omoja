package p224v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: renamed from: v8.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C3373c1 extends C3388h1 {

    /* JADX INFO: renamed from: d */
    public final boolean f9856d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3373c1() {
        C3388h1 c3388h1M5294i;
        super(true);
        boolean z9 = true;
        m5343z(null);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C3388h1.f9882c;
        InterfaceC3386h interfaceC3386h = (InterfaceC3386h) atomicReferenceFieldUpdater.get(this);
        C3389i c3389i = interfaceC3386h instanceof C3389i ? (C3389i) interfaceC3386h : null;
        if (c3389i == null || (c3388h1M5294i = c3389i.m5294i()) == null) {
            z9 = false;
            break;
        }
        while (!c3388h1M5294i.mo5290t()) {
            InterfaceC3386h interfaceC3386h2 = (InterfaceC3386h) atomicReferenceFieldUpdater.get(c3388h1M5294i);
            C3389i c3389i2 = interfaceC3386h2 instanceof C3389i ? (C3389i) interfaceC3386h2 : null;
            if (c3389i2 == null || (c3388h1M5294i = c3389i2.m5294i()) == null) {
                z9 = false;
                break;
            }
        }
        this.f9856d = z9;
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: t */
    public final boolean mo5290t() {
        return this.f9856d;
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: u */
    public final boolean mo5291u() {
        return true;
    }
}
