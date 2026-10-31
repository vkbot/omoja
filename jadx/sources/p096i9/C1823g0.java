package p096i9;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1823g0 extends AbstractC1865u0 {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4770c;

    /* JADX INFO: renamed from: d */
    public final C1820f0 f4771d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1823g0(InterfaceC1506b interfaceC1506b, InterfaceC1506b interfaceC1506b2, int i10) {
        super(interfaceC1506b, interfaceC1506b2);
        this.f4770c = i10;
        interfaceC1506b.getClass();
        interfaceC1506b2.getClass();
        switch (i10) {
            case 1:
                super(interfaceC1506b, interfaceC1506b2);
                InterfaceC1633e interfaceC1633eMo2581a = interfaceC1506b.mo2581a();
                InterfaceC1633e interfaceC1633eMo2581a2 = interfaceC1506b2.mo2581a();
                interfaceC1633eMo2581a.getClass();
                interfaceC1633eMo2581a2.getClass();
                this.f4771d = new C1820f0("kotlin.collections.LinkedHashMap", interfaceC1633eMo2581a, interfaceC1633eMo2581a2);
                break;
            default:
                InterfaceC1633e interfaceC1633eMo2581a3 = interfaceC1506b.mo2581a();
                InterfaceC1633e interfaceC1633eMo2581a4 = interfaceC1506b2.mo2581a();
                interfaceC1633eMo2581a3.getClass();
                interfaceC1633eMo2581a4.getClass();
                this.f4771d = new C1820f0("kotlin.collections.HashMap", interfaceC1633eMo2581a3, interfaceC1633eMo2581a4);
                break;
        }
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        switch (this.f4770c) {
            case 0:
                break;
        }
        return this.f4771d;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: d */
    public final Object mo2899d() {
        switch (this.f4770c) {
            case 0:
                return new HashMap();
            default:
                return new LinkedHashMap();
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: e */
    public final int mo2900e(Object obj) {
        int size;
        switch (this.f4770c) {
            case 0:
                HashMap map = (HashMap) obj;
                map.getClass();
                size = map.size();
                break;
            default:
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
                linkedHashMap.getClass();
                size = linkedHashMap.size();
                break;
        }
        return size * 2;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: f */
    public final void mo2901f(int i10, Object obj) {
        switch (this.f4770c) {
            case 0:
                ((HashMap) obj).getClass();
                break;
            default:
                ((LinkedHashMap) obj).getClass();
                break;
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: g */
    public final Iterator mo2902g(Object obj) {
        switch (this.f4770c) {
            case 0:
                Map map = (Map) obj;
                map.getClass();
                return map.entrySet().iterator();
            default:
                Map map2 = (Map) obj;
                map2.getClass();
                return map2.entrySet().iterator();
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        switch (this.f4770c) {
            case 0:
                Map map = (Map) obj;
                map.getClass();
                return map.size();
            default:
                Map map2 = (Map) obj;
                map2.getClass();
                return map2.size();
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        switch (this.f4770c) {
            case 0:
                throw null;
            default:
                throw null;
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: m */
    public final Object mo2908m(Object obj) {
        switch (this.f4770c) {
            case 0:
                HashMap map = (HashMap) obj;
                map.getClass();
                return map;
            default:
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
                linkedHashMap.getClass();
                return linkedHashMap;
        }
    }
}
