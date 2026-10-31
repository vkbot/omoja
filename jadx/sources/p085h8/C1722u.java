package p085h8;

import p023b8.InterfaceC0929c;
import p023b8.InterfaceC0930d;
import p045d8.AbstractC1314b;
import p054e8.InterfaceC1498a;
import p054e8.InterfaceC1501d;
import p149n8.AbstractC2556a;

/* JADX INFO: renamed from: h8.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1722u extends AbstractC2556a {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ int f4471g;

    /* JADX INFO: renamed from: h */
    public final Object f4472h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1722u(InterfaceC1498a interfaceC1498a, Object obj, int i10) {
        super(interfaceC1498a);
        this.f4471g = i10;
        this.f4472h = obj;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        switch (this.f4471g) {
            case 0:
                if (!mo2580g(obj)) {
                    this.f7067c.mo2811d(1L);
                }
                break;
            default:
                if (!this.f7069e) {
                    int i10 = this.f7070f;
                    InterfaceC1498a interfaceC1498a = this.f7066b;
                    if (i10 != 0) {
                        interfaceC1498a.mo2807e(null);
                    } else {
                        try {
                            Object objApply = ((InterfaceC0929c) this.f4472h).apply(obj);
                            AbstractC1314b.m2356a(objApply, "The mapper function returned a null value.");
                            interfaceC1498a.mo2807e(objApply);
                        } catch (Throwable th) {
                            m3996b(th);
                        }
                    }
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
    
        if (r1.mo2580g(r4) != false) goto L23;
     */
    @Override // p054e8.InterfaceC1498a
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean mo2580g(java.lang.Object r4) {
        /*
            r3 = this;
            int r0 = r3.f4471g
            switch(r0) {
                case 0: goto L25;
                default: goto L5;
            }
        L5:
            boolean r0 = r3.f7069e
            if (r0 == 0) goto Lb
            r4 = 0
            goto L24
        Lb:
            java.lang.Object r0 = r3.f4472h     // Catch: java.lang.Throwable -> L1f
            b8.c r0 = (p023b8.InterfaceC0929c) r0     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r4 = r0.apply(r4)     // Catch: java.lang.Throwable -> L1f
            java.lang.String r0 = "The mapper function returned a null value."
            p045d8.AbstractC1314b.m2356a(r4, r0)     // Catch: java.lang.Throwable -> L1f
            e8.a r0 = r3.f7066b
            boolean r4 = r0.mo2580g(r4)
            goto L24
        L1f:
            r4 = move-exception
            r3.m3996b(r4)
            r4 = 1
        L24:
            return r4
        L25:
            boolean r0 = r3.f7069e
            if (r0 == 0) goto L2a
            goto L49
        L2a:
            int r0 = r3.f7070f
            e8.a r1 = r3.f7066b
            if (r0 == 0) goto L36
            r4 = 0
            boolean r4 = r1.mo2580g(r4)
            goto L50
        L36:
            r0 = 1
            java.lang.Object r2 = r3.f4472h     // Catch: java.lang.Throwable -> L4b
            b8.d r2 = (p023b8.InterfaceC0930d) r2     // Catch: java.lang.Throwable -> L4b
            boolean r2 = r2.test(r4)     // Catch: java.lang.Throwable -> L4b
            if (r2 == 0) goto L49
            boolean r4 = r1.mo2580g(r4)
            if (r4 == 0) goto L49
        L47:
            r4 = r0
            goto L50
        L49:
            r4 = 0
            goto L50
        L4b:
            r4 = move-exception
            r3.m3996b(r4)
            goto L47
        L50:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p085h8.C1722u.mo2580g(java.lang.Object):boolean");
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        switch (this.f4471g) {
            case 0:
                InterfaceC1501d interfaceC1501d = this.f7068d;
                InterfaceC0930d interfaceC0930d = (InterfaceC0930d) this.f4472h;
                while (true) {
                    Object objPoll = interfaceC1501d.poll();
                    if (objPoll == null) {
                        return null;
                    }
                    if (interfaceC0930d.test(objPoll)) {
                        return objPoll;
                    }
                    if (this.f7070f == 2) {
                        interfaceC1501d.mo2811d(1L);
                    }
                }
                break;
            default:
                Object objPoll2 = this.f7068d.poll();
                if (objPoll2 == null) {
                    return null;
                }
                Object objApply = ((InterfaceC0929c) this.f4472h).apply(objPoll2);
                AbstractC1314b.m2356a(objApply, "The mapper function returned a null value.");
                return objApply;
        }
    }
}
