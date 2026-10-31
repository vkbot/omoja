package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.ULong;
import kotlin.jvm.internal.LongCompanionObject;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.a2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1802a2 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1802a2 f4723a = new C1802a2();

    /* JADX INFO: renamed from: b */
    public static final C1826h0 f4724b;

    static {
        LongCompanionObject.INSTANCE.getClass();
        f4724b = AbstractC1813d1.m2915a("kotlin.ULong", C1853q0.f4811a);
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4724b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        abstractC1729b.encodeInline(f4724b).encodeLong(((ULong) obj).getData());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return ULong.m6256boximpl(ULong.m6262constructorimpl(routeDecoder.decodeInline(f4724b).decodeLong()));
    }
}
