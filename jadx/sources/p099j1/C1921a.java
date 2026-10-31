package p099j1;

import android.content.Context;
import p030c5.C0990e;
import p088i0.EnumC1737a;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1921a implements InterfaceC1942v {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5073a;

    /* JADX INFO: renamed from: b */
    public C0990e f5074b;

    /* JADX INFO: renamed from: c */
    public InterfaceC1943w f5075c;

    public /* synthetic */ C1921a(int i10) {
        this.f5073a = i10;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
        int i10 = this.f5073a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        switch (this.f5073a) {
            case 0:
                if (this.f5074b == null) {
                    this.f5074b = new C0990e(20);
                }
                break;
            default:
                if (this.f5074b == null) {
                    this.f5074b = new C0990e(20);
                }
                break;
        }
        return this.f5074b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        switch (this.f5073a) {
            case 0:
                if (((C0990e) this.f5075c) == null) {
                    this.f5075c = new C0990e(12);
                }
                return (C0990e) this.f5075c;
            default:
                if (((C1944x) this.f5075c) == null) {
                    C1944x c1944x = new C1944x();
                    c1944x.f5297b = true;
                    c1944x.f5298c = false;
                    this.f5075c = c1944x;
                }
                return (C1944x) this.f5075c;
        }
    }

    /* JADX INFO: renamed from: i */
    private final void m3010i(Context context, EnumC1737a enumC1737a) {
    }

    /* JADX INFO: renamed from: j */
    private final void m3011j(Context context, EnumC1737a enumC1737a) {
    }
}
