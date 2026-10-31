package p082h5;

import android.support.v4.media.C0090h;
import p000a.AbstractC0000a;
import p020b5.InterfaceC0903b;
import p052e5.InterfaceC1495b;
import p062f5.C1541b0;

/* JADX INFO: renamed from: h5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1667b implements InterfaceC1495b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4267b;

    /* JADX INFO: renamed from: c */
    public final C0090h f4268c;

    public /* synthetic */ C1667b(C0090h c0090h, int i10) {
        this.f4267b = i10;
        this.f4268c = c0090h;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        switch (this.f4267b) {
            case 0:
                C1541b0 c1541b0 = (C1541b0) this.f4268c.f191c;
                AbstractC0000a.m5e(c1541b0);
                return c1541b0;
            default:
                InterfaceC0903b interfaceC0903b = (InterfaceC0903b) this.f4268c.f192d;
                AbstractC0000a.m5e(interfaceC0903b);
                return interfaceC0903b;
        }
    }
}
