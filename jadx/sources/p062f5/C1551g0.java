package p062f5;

import p023b8.InterfaceC0929c;
import p023b8.InterfaceC0930d;
import p103j5.C1980b;

/* JADX INFO: renamed from: f5.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1551g0 implements InterfaceC0929c, InterfaceC0930d {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1555i0 f3811b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1980b f3812c;

    public /* synthetic */ C1551g0(C1555i0 c1555i0, C1980b c1980b) {
        this.f3811b = c1555i0;
        this.f3812c = c1980b;
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        C1555i0 c1555i0 = this.f3811b;
        c1555i0.getClass();
        this.f3812c.getClass();
        C1543c0 c1543c0M2638s = C1545d0.m2638s();
        c1543c0M2638s.m2167c();
        C1545d0.m2635n((C1545d0) c1543c0M2638s.f2790c);
        c1555i0.f3825b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        c1543c0M2638s.m2167c();
        C1545d0.m2636o((C1545d0) c1543c0M2638s.f2790c, jCurrentTimeMillis);
        return ((C1549f0) obj).m2643o((C1545d0) c1543c0M2638s.m2165a());
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        C1545d0 c1545d0 = (C1545d0) obj;
        this.f3811b.f3825b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() - c1545d0.m2639q();
        C1980b c1980b = this.f3812c;
        return jCurrentTimeMillis > c1980b.f5392b || c1545d0.m2640r() < c1980b.f5391a;
    }
}
