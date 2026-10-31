package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.z0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1880z0 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1880z0 f4860a = new C1880z0();

    /* JADX INFO: renamed from: b */
    public static final C1877y0 f4861b = C1877y0.f4854a;

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4861b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        ((Void) obj).getClass();
        throw new C1511g("'kotlin.Nothing' cannot be serialized");
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        throw new C1511g("'kotlin.Nothing' does not have instances");
    }
}
