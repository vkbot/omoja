package p099j1;

import android.content.Context;
import p030c5.C0990e;
import p088i0.EnumC1737a;
import p165p2.C2962e;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1938r implements InterfaceC1942v {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5286a;

    /* JADX INFO: renamed from: b */
    public InterfaceC3692a f5287b;

    /* JADX INFO: renamed from: c */
    public InterfaceC1943w f5288c;

    public C1938r(int i10) {
        this.f5286a = i10;
        switch (i10) {
            case 1:
                int i11 = 14;
                this.f5287b = new C2962e(i11);
                this.f5288c = new C0990e(i11);
                break;
        }
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
        int i10 = this.f5286a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        switch (this.f5286a) {
            case 0:
                if (((C2962e) this.f5287b) == null) {
                    this.f5287b = new C2962e(20);
                }
                break;
        }
        return (C2962e) this.f5287b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        switch (this.f5286a) {
            case 0:
                if (((C0990e) this.f5288c) == null) {
                    this.f5288c = new C0990e(12);
                }
                break;
        }
        return (C0990e) this.f5288c;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: f */
    public final boolean mo3043f() {
        switch (this.f5286a) {
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    private final void m3041i(Context context, EnumC1737a enumC1737a) {
    }

    /* JADX INFO: renamed from: j */
    private final void m3042j(Context context, EnumC1737a enumC1737a) {
    }
}
