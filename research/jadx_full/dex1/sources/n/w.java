package n;

import androidx.core.util.Pools$Pool;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pools$Pool f3770b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(ArrayList arrayList, d0.d dVar) {
        this.f3769a = arrayList;
        this.f3770b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        ArrayList arrayList = this.f3769a;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj2 = arrayList.get(i9);
            i9++;
            if (((r) obj2).a(obj)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        q qVarB;
        ArrayList arrayList = this.f3769a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        h.e eVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            r rVar = (r) arrayList.get(i11);
            if (rVar.a(obj) && (qVarB = rVar.b(obj, i9, i10, hVar)) != null) {
                eVar = qVarB.f3760a;
                arrayList2.add(qVarB.c);
            }
        }
        if (arrayList2.isEmpty() || eVar == null) {
            return null;
        }
        return new q(eVar, new v(arrayList2, this.f3770b));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f3769a.toArray()) + '}';
    }
}
