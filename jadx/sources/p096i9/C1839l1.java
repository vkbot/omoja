package p096i9;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.reflect.KClass;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.l1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1839l1 extends AbstractC1864u {

    /* JADX INFO: renamed from: b */
    public final KClass f4790b;

    /* JADX INFO: renamed from: c */
    public final C1807c f4791c;

    public C1839l1(KClass kClass, InterfaceC1506b interfaceC1506b) {
        super(interfaceC1506b);
        this.f4790b = kClass;
        InterfaceC1633e interfaceC1633eMo2581a = interfaceC1506b.mo2581a();
        interfaceC1633eMo2581a.getClass();
        this.f4791c = new C1807c(interfaceC1633eMo2581a, 0);
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return this.f4791c;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: d */
    public final Object mo2899d() {
        return new ArrayList();
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: e */
    public final int mo2900e(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList.size();
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: f */
    public final void mo2901f(int i10, Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.ensureCapacity(i10);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: g */
    public final Iterator mo2902g(Object obj) {
        Object[] objArr = (Object[]) obj;
        objArr.getClass();
        return ArrayIteratorKt.iterator(objArr);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        Object[] objArr = (Object[]) obj;
        objArr.getClass();
        return objArr.length;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        throw null;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: m */
    public final Object mo2908m(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        Object objNewInstance = Array.newInstance((Class<?>) JvmClassMappingKt.getJavaClass(this.f4790b), arrayList.size());
        objNewInstance.getClass();
        Object[] array = arrayList.toArray((Object[]) objNewInstance);
        array.getClass();
        return array;
    }

    @Override // p096i9.AbstractC1864u
    /* JADX INFO: renamed from: n */
    public final void mo2914n(int i10, Object obj, Object obj2) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.add(i10, obj2);
    }
}
