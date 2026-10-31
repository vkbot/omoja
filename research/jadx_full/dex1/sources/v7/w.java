package v7;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;
import n7.f0;
import n7.h0;
import o7.g3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w extends h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f5583b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(ArrayList arrayList, AtomicInteger atomicInteger) {
        o4.b.d("empty list", !arrayList.isEmpty());
        this.f5582a = arrayList;
        o4.b.i(atomicInteger, "index");
        this.f5583b = atomicInteger;
        int size = arrayList.size();
        int iHashCode = 0;
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            iHashCode += ((h0) obj).hashCode();
        }
        this.c = iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.h0
    public final f0 a(g3 g3Var) {
        int andIncrement = this.f5583b.getAndIncrement() & Integer.MAX_VALUE;
        ArrayList arrayList = this.f5582a;
        return ((h0) arrayList.get(andIncrement % arrayList.size())).a(g3Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        ArrayList arrayList = wVar.f5582a;
        if (wVar == this) {
            return true;
        }
        if (this.c != wVar.c || this.f5583b != wVar.f5583b) {
            return false;
        }
        ArrayList arrayList2 = this.f5582a;
        return arrayList2.size() == arrayList.size() && new HashSet(arrayList2).containsAll(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(w.class.getSimpleName());
        sVar.c(this.f5582a, "subchannelPickers");
        return sVar.toString();
    }
}
