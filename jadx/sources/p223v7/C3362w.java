package p223v7;

import com.bumptech.glide.manager.C1073s;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;
import p148n7.AbstractC2513h0;
import p148n7.C2507f0;
import p155o4.AbstractC2587b;
import p157o7.C2639g3;

/* JADX INFO: renamed from: v7.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3362w extends AbstractC2513h0 {

    /* JADX INFO: renamed from: a */
    public final ArrayList f9828a;

    /* JADX INFO: renamed from: b */
    public final AtomicInteger f9829b;

    /* JADX INFO: renamed from: c */
    public final int f9830c;

    public C3362w(ArrayList arrayList, AtomicInteger atomicInteger) {
        AbstractC2587b.m4037d("empty list", !arrayList.isEmpty());
        this.f9828a = arrayList;
        AbstractC2587b.m4042i(atomicInteger, "index");
        this.f9829b = atomicInteger;
        int size = arrayList.size();
        int iHashCode = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            iHashCode += ((AbstractC2513h0) obj).hashCode();
        }
        this.f9830c = iHashCode;
    }

    @Override // p148n7.AbstractC2513h0
    /* JADX INFO: renamed from: a */
    public final C2507f0 mo3942a(C2639g3 c2639g3) {
        int andIncrement = this.f9829b.getAndIncrement() & Integer.MAX_VALUE;
        ArrayList arrayList = this.f9828a;
        return ((AbstractC2513h0) arrayList.get(andIncrement % arrayList.size())).mo3942a(c2639g3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3362w)) {
            return false;
        }
        C3362w c3362w = (C3362w) obj;
        ArrayList arrayList = c3362w.f9828a;
        if (c3362w == this) {
            return true;
        }
        if (this.f9830c != c3362w.f9830c || this.f9829b != c3362w.f9829b) {
            return false;
        }
        ArrayList arrayList2 = this.f9828a;
        return arrayList2.size() == arrayList.size() && new HashSet(arrayList2).containsAll(arrayList);
    }

    public final int hashCode() {
        return this.f9830c;
    }

    public final String toString() {
        C1073s c1073s = new C1073s(C3362w.class.getSimpleName());
        c1073s.m1347c(this.f9828a, "subchannelPickers");
        return c1073s.toString();
    }
}
