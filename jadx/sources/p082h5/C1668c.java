package p082h5;

import java.util.concurrent.Executor;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p052e5.InterfaceC1495b;

/* JADX INFO: renamed from: h5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1668c implements InterfaceC1495b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4269b;

    /* JADX INFO: renamed from: c */
    public final C0023h f4270c;

    public /* synthetic */ C1668c(C0023h c0023h, int i10) {
        this.f4269b = i10;
        this.f4270c = c0023h;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        switch (this.f4269b) {
            case 0:
                Executor executor = (Executor) this.f4270c.f81c;
                AbstractC0000a.m5e(executor);
                return executor;
            case 1:
                Executor executor2 = (Executor) this.f4270c.f82d;
                AbstractC0000a.m5e(executor2);
                return executor2;
            default:
                Executor executor3 = (Executor) this.f4270c.f83e;
                AbstractC0000a.m5e(executor3);
                return executor3;
        }
    }
}
