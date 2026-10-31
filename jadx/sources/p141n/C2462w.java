package p141n;

import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import p037d0.C1236d;
import p077h.C1646h;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: n.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2462w implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final ArrayList f6662a;

    /* JADX INFO: renamed from: b */
    public final Pools.Pool f6663b;

    public C2462w(ArrayList arrayList, C1236d c1236d) {
        this.f6662a = arrayList;
        this.f6663b = c1236d;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        ArrayList arrayList = this.f6662a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj2 = arrayList.get(i10);
            i10++;
            if (((InterfaceC2457r) obj2).mo3790a(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        C2456q c2456qMo3791b;
        ArrayList arrayList = this.f6662a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        InterfaceC1643e interfaceC1643e = null;
        for (int i12 = 0; i12 < size; i12++) {
            InterfaceC2457r interfaceC2457r = (InterfaceC2457r) arrayList.get(i12);
            if (interfaceC2457r.mo3790a(obj) && (c2456qMo3791b = interfaceC2457r.mo3791b(obj, i10, i11, c1646h)) != null) {
                interfaceC1643e = c2456qMo3791b.f6649a;
                arrayList2.add(c2456qMo3791b.f6651c);
            }
        }
        if (arrayList2.isEmpty() || interfaceC1643e == null) {
            return null;
        }
        return new C2456q(interfaceC1643e, new C2461v(arrayList2, this.f6663b));
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f6662a.toArray()) + '}';
    }
}
