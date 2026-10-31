package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.jvm.internal.Intrinsics;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.a1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1801a1 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1506b f4721a;

    /* JADX INFO: renamed from: b */
    public final C1842m1 f4722b;

    public C1801a1(InterfaceC1506b interfaceC1506b) {
        this.f4721a = interfaceC1506b;
        this.f4722b = new C1842m1(interfaceC1506b.mo2581a());
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return this.f4722b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        if (obj == null) {
            abstractC1729b.encodeNull();
        } else {
            abstractC1729b.encodeNotNullMark();
            abstractC1729b.encodeSerializableValue(this.f4721a, obj);
        }
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return routeDecoder.decodeNotNullMark() ? routeDecoder.decodeSerializableValue(this.f4721a) : routeDecoder.decodeNull();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C1801a1.class == obj.getClass() && Intrinsics.areEqual(this.f4721a, ((C1801a1) obj).f4721a);
    }

    public final int hashCode() {
        return this.f4721a.hashCode();
    }
}
