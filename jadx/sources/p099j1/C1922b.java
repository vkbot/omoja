package p099j1;

import android.content.Context;
import android.content.Intent;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.cores.ColorText;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p138m7.AbstractC2412k;
import p165p2.C2962e;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1922b implements InterfaceC1942v {

    /* JADX INFO: renamed from: a */
    public C0990e f5076a;

    /* JADX INFO: renamed from: b */
    public C2962e f5077b;

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
        if (enumC1737a == null || !enumC1737a.equals(EnumC1737a.f4525c)) {
            return;
        }
        new MyCarReceiver().onReceive(context, new Intent(AbstractC1387m.m2421h(new byte[]{20, 40, -110, -89, 30, 25, 94, 17, 28, 40, -126, -80, 31, 4, 20, 94, 22, 50, -97, -70, 31, 94, 105, 124, 39, 3, -77, -101, 46, 63, 116}, new byte[]{117, 70, -10, -43, 113, 112, 58, 63})));
        AbstractC2412k.m3776c(context, true);
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-61, 96, 11, 81, -127, 22, 36, -87, -44, 124, 19, 123, -49, 105, 97, -99, -40, 115, 12, 91, -127, 37, 35, -90, -44}, new byte[]{-79, 21, 101, 30, -17, 68, 65, -54}), ColorText.RED);
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        if (this.f5076a == null) {
            this.f5076a = new C0990e(20);
        }
        return this.f5076a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: c */
    public final boolean mo3015c() {
        return true;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        if (this.f5077b == null) {
            this.f5077b = new C2962e(12);
        }
        return this.f5077b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: h */
    public final boolean mo3016h() {
        return true;
    }
}
