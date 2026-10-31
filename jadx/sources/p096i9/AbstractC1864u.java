package p096i9;

import java.util.Iterator;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;
import p099j1.C1929i;

/* JADX INFO: renamed from: i9.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1864u extends AbstractC1799a {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1506b f4834a;

    public AbstractC1864u(InterfaceC1506b interfaceC1506b) {
        this.f4834a = interfaceC1506b;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        int iMo2903h = mo2903h(obj);
        InterfaceC1633e interfaceC1633eMo2581a = mo2581a();
        InterfaceC1731d interfaceC1731dBeginCollection = abstractC1729b.beginCollection(interfaceC1633eMo2581a, iMo2903h);
        Iterator itMo2902g = mo2902g(obj);
        for (int i10 = 0; i10 < iMo2903h; i10++) {
            interfaceC1731dBeginCollection.encodeSerializableElement(mo2581a(), i10, this.f4834a, itMo2902g.next());
        }
        interfaceC1731dBeginCollection.endStructure(interfaceC1633eMo2581a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: j */
    public final void mo2905j(InterfaceC1730c interfaceC1730c, Object obj, int i10, int i11) {
        if (i11 < 0) {
            C1929i.m3029k("Size must be known in advance when using READ_ALL");
            return;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            mo2906k(interfaceC1730c, i10 + i12, obj);
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        mo2914n(i10, obj, interfaceC1730c.decodeSerializableElement(mo2581a(), i10, this.f4834a, null));
    }

    /* JADX INFO: renamed from: n */
    public abstract void mo2914n(int i10, Object obj, Object obj2);
}
