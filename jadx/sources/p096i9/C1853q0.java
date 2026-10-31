package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import p055e9.InterfaceC1506b;
import p076g9.C1632d;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1853q0 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1853q0 f4811a = new C1853q0();

    /* JADX INFO: renamed from: b */
    public static final C1833j1 f4812b = new C1833j1("kotlin.Long", C1632d.f4148j);

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4812b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        abstractC1729b.encodeLong(((Number) obj).longValue());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return Long.valueOf(routeDecoder.decodeLong());
    }
}
