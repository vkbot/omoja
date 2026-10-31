package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.Unit;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.e2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1818e2 implements InterfaceC1506b {

    /* JADX INFO: renamed from: b */
    public static final C1818e2 f4751b = new C1818e2();

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1805b1 f4752a = new C1805b1(Unit.INSTANCE);

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return this.f4752a.mo2581a();
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        Unit unit = (Unit) obj;
        unit.getClass();
        this.f4752a.mo2583b(abstractC1729b, unit);
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        this.f4752a.mo2582c(routeDecoder);
        return Unit.INSTANCE;
    }
}
