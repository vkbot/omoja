package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import p055e9.InterfaceC1506b;
import p076g9.C1632d;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.p1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1851p1 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1851p1 f4809a = new C1851p1();

    /* JADX INFO: renamed from: b */
    public static final C1833j1 f4810b = new C1833j1("kotlin.Short", C1632d.f4149k);

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4810b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        abstractC1729b.encodeShort(((Number) obj).shortValue());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return Short.valueOf(routeDecoder.decodeShort());
    }
}
