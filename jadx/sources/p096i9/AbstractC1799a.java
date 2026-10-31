package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Iterator;
import p055e9.InterfaceC1506b;
import p086h9.InterfaceC1730c;

/* JADX INFO: renamed from: i9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1799a implements InterfaceC1506b {
    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public Object mo2582c(RouteDecoder routeDecoder) {
        return m2904i(routeDecoder);
    }

    /* JADX INFO: renamed from: d */
    public abstract Object mo2899d();

    /* JADX INFO: renamed from: e */
    public abstract int mo2900e(Object obj);

    /* JADX INFO: renamed from: f */
    public abstract void mo2901f(int i10, Object obj);

    /* JADX INFO: renamed from: g */
    public abstract Iterator mo2902g(Object obj);

    /* JADX INFO: renamed from: h */
    public abstract int mo2903h(Object obj);

    /* JADX INFO: renamed from: i */
    public final Object m2904i(RouteDecoder routeDecoder) {
        Object objMo2899d = mo2899d();
        int iMo2900e = mo2900e(objMo2899d);
        InterfaceC1730c interfaceC1730cBeginStructure = routeDecoder.beginStructure(mo2581a());
        if (!interfaceC1730cBeginStructure.decodeSequentially()) {
            while (true) {
                int iDecodeElementIndex = interfaceC1730cBeginStructure.decodeElementIndex(mo2581a());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                mo2906k(interfaceC1730cBeginStructure, iDecodeElementIndex + iMo2900e, objMo2899d);
            }
        } else {
            int iDecodeCollectionSize = interfaceC1730cBeginStructure.decodeCollectionSize(mo2581a());
            mo2901f(iDecodeCollectionSize, objMo2899d);
            mo2905j(interfaceC1730cBeginStructure, objMo2899d, iMo2900e, iDecodeCollectionSize);
        }
        interfaceC1730cBeginStructure.endStructure(mo2581a());
        return mo2908m(objMo2899d);
    }

    /* JADX INFO: renamed from: j */
    public abstract void mo2905j(InterfaceC1730c interfaceC1730c, Object obj, int i10, int i11);

    /* JADX INFO: renamed from: k */
    public abstract void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj);

    /* JADX INFO: renamed from: l */
    public abstract Object mo2907l(Object obj);

    /* JADX INFO: renamed from: m */
    public abstract Object mo2908m(Object obj);
}
