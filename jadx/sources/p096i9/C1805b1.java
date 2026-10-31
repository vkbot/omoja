package p096i9;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.serialization.RouteDecoder;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import p055e9.C1508d;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;

/* JADX INFO: renamed from: i9.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1805b1 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public final Object f4727a;

    /* JADX INFO: renamed from: b */
    public final List f4728b;

    /* JADX INFO: renamed from: c */
    public final Lazy f4729c;

    public C1805b1(Unit unit) {
        unit.getClass();
        this.f4727a = unit;
        this.f4728b = CollectionsKt.emptyList();
        this.f4729c = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new C1508d(3, this));
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return (InterfaceC1633e) this.f4729c.getValue();
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        obj.getClass();
        abstractC1729b.beginStructure(mo2581a()).endStructure(mo2581a());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        int iDecodeElementIndex;
        InterfaceC1633e interfaceC1633eMo2581a = mo2581a();
        InterfaceC1730c interfaceC1730cBeginStructure = routeDecoder.beginStructure(interfaceC1633eMo2581a);
        if (!interfaceC1730cBeginStructure.decodeSequentially() && (iDecodeElementIndex = interfaceC1730cBeginStructure.decodeElementIndex(mo2581a())) != -1) {
            throw new C1511g(AbstractC0074a.m154e(iDecodeElementIndex, "Unexpected index "));
        }
        Unit unit = Unit.INSTANCE;
        interfaceC1730cBeginStructure.endStructure(interfaceC1633eMo2581a);
        return this.f4727a;
    }
}
