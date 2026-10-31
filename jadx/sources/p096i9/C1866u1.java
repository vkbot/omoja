package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.u1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1866u1 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public static final C1866u1 f4837a = new C1866u1();

    /* JADX INFO: renamed from: b */
    public static final C1826h0 f4838b;

    static {
        ByteCompanionObject.INSTANCE.getClass();
        f4838b = AbstractC1813d1.m2915a("kotlin.UByte", C1831j.f4779a);
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return f4838b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        abstractC1729b.encodeInline(f4838b).encodeByte(((UByte) obj).getData());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return UByte.m6100boximpl(UByte.m6106constructorimpl(routeDecoder.decodeInline(f4838b).decodeByte()));
    }
}
