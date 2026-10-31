package p201t5;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.Iterator;
import p099j1.C1929i;

/* JADX INFO: renamed from: t5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3257a extends AbstractC3258b implements Iterable {

    /* JADX INFO: renamed from: b */
    public final ArrayList f9546b = new ArrayList();

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: a */
    public final double mo5190a() {
        return m5193h().mo5190a();
    }

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: d */
    public final int mo5191d() {
        return m5193h().mo5191d();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C3257a) && ((C3257a) obj).f9546b.equals(this.f9546b);
        }
        return true;
    }

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: g */
    public final String mo5192g() {
        return m5193h().mo5192g();
    }

    /* JADX INFO: renamed from: h */
    public final AbstractC3258b m5193h() {
        ArrayList arrayList = this.f9546b;
        int size = arrayList.size();
        if (size == 1) {
            return (AbstractC3258b) arrayList.get(0);
        }
        C1929i.m3030l(AbstractC0074a.m154e(size, "Array must have size 1, but has size "));
        return null;
    }

    public final int hashCode() {
        return this.f9546b.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f9546b.iterator();
    }
}
