package p096i9;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1811d extends AbstractC1864u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4737b;

    /* JADX INFO: renamed from: c */
    public final AbstractC1844n0 f4738c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1811d(InterfaceC1506b interfaceC1506b, int i10) {
        super(interfaceC1506b);
        this.f4737b = i10;
        interfaceC1506b.getClass();
        switch (i10) {
            case 1:
                super(interfaceC1506b);
                InterfaceC1633e interfaceC1633eMo2581a = interfaceC1506b.mo2581a();
                interfaceC1633eMo2581a.getClass();
                this.f4738c = new C1807c(interfaceC1633eMo2581a, 2);
                break;
            case 2:
                super(interfaceC1506b);
                InterfaceC1633e interfaceC1633eMo2581a2 = interfaceC1506b.mo2581a();
                interfaceC1633eMo2581a2.getClass();
                this.f4738c = new C1807c(interfaceC1633eMo2581a2, 3);
                break;
            default:
                InterfaceC1633e interfaceC1633eMo2581a3 = interfaceC1506b.mo2581a();
                interfaceC1633eMo2581a3.getClass();
                this.f4738c = new C1807c(interfaceC1633eMo2581a3, 1);
                break;
        }
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        switch (this.f4737b) {
            case 0:
                break;
            case 1:
                break;
        }
        return (C1807c) this.f4738c;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: d */
    public final Object mo2899d() {
        switch (this.f4737b) {
            case 0:
                return new ArrayList();
            case 1:
                return new HashSet();
            default:
                return new LinkedHashSet();
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: e */
    public final int mo2900e(Object obj) {
        switch (this.f4737b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                arrayList.getClass();
                return arrayList.size();
            case 1:
                HashSet hashSet = (HashSet) obj;
                hashSet.getClass();
                return hashSet.size();
            default:
                LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
                linkedHashSet.getClass();
                return linkedHashSet.size();
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: f */
    public final void mo2901f(int i10, Object obj) {
        switch (this.f4737b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                arrayList.getClass();
                arrayList.ensureCapacity(i10);
                break;
            case 1:
                ((HashSet) obj).getClass();
                break;
            default:
                ((LinkedHashSet) obj).getClass();
                break;
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: g */
    public final Iterator mo2902g(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.iterator();
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.size();
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        switch (this.f4737b) {
            case 0:
                throw null;
            case 1:
                throw null;
            default:
                throw null;
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: m */
    public final Object mo2908m(Object obj) {
        switch (this.f4737b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                arrayList.getClass();
                return arrayList;
            case 1:
                HashSet hashSet = (HashSet) obj;
                hashSet.getClass();
                return hashSet;
            default:
                LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
                linkedHashSet.getClass();
                return linkedHashSet;
        }
    }

    @Override // p096i9.AbstractC1864u
    /* JADX INFO: renamed from: n */
    public final void mo2914n(int i10, Object obj, Object obj2) {
        switch (this.f4737b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                arrayList.getClass();
                arrayList.add(i10, obj2);
                break;
            case 1:
                HashSet hashSet = (HashSet) obj;
                hashSet.getClass();
                hashSet.add(obj2);
                break;
            default:
                LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
                linkedHashSet.getClass();
                linkedHashSet.add(obj2);
                break;
        }
    }
}
