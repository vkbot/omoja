package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.UShort;
import kotlin.jvm.internal.ShortCompanionObject;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.d2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1814d2 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1814d2 f4743a = new C1814d2();

    /* JADX INFO: renamed from: b */
    public static final C1826h0 f4744b;

    static {
        ShortCompanionObject.INSTANCE.getClass();
        f4744b = AbstractC1813d1.m2915a("kotlin.UShort", C1851p1.f4809a);
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4744b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        abstractC1729b.encodeInline(f4744b).encodeShort(((UShort) obj).getData());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return UShort.m6363boximpl(UShort.m6369constructorimpl(routeDecoder.decodeInline(f4744b).decodeShort()));
    }
}
