package p097j;

import androidx.core.util.Pools;
import com.bumptech.glide.load.data.InterfaceC1046g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p025c0.AbstractC0938g;
import p077h.C1646h;
import p099j1.C1929i;

/* JADX INFO: renamed from: j.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1885b0 {

    /* JADX INFO: renamed from: a */
    public final Pools.Pool f4866a;

    /* JADX INFO: renamed from: b */
    public final List f4867b;

    /* JADX INFO: renamed from: c */
    public final String f4868c;

    public C1885b0(Class cls, Class cls2, Class cls3, List list, Pools.Pool pool) {
        this.f4866a = pool;
        if (list.isEmpty()) {
            C1929i.m3029k("Must not be empty.");
            throw null;
        }
        this.f4867b = list;
        this.f4868c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 m2930a(int i10, int i11, InterfaceC1046g interfaceC1046g, C1646h c1646h, C1897i c1897i) {
        Pools.Pool pool = this.f4866a;
        Object objAcquire = pool.acquire();
        AbstractC0938g.m1072c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            List list2 = this.f4867b;
            int size = list2.size();
            InterfaceC1889d0 interfaceC1889d0M2958a = null;
            for (int i12 = 0; i12 < size; i12++) {
                try {
                    interfaceC1889d0M2958a = ((C1900l) list2.get(i12)).m2958a(i10, i11, interfaceC1046g, c1646h, c1897i);
                } catch (C1914z e) {
                    list.add(e);
                }
                if (interfaceC1889d0M2958a != null) {
                    break;
                }
            }
            if (interfaceC1889d0M2958a == null) {
                throw new C1914z(this.f4868c, new ArrayList(list));
            }
            pool.release(list);
            return interfaceC1889d0M2958a;
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f4867b.toArray()) + '}';
    }
}
