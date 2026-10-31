package j;

import androidx.core.util.Pools$Pool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools$Pool f2751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2752b;
    public final String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0(Class cls, Class cls2, Class cls3, List list, Pools$Pool pools$Pool) {
        this.f2751a = pools$Pool;
        if (list.isEmpty()) {
            j1.i.k("Must not be empty.");
            throw null;
        }
        this.f2752b = list;
        this.c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 a(int i9, int i10, com.bumptech.glide.load.data.g gVar, h.h hVar, i iVar) {
        Pools$Pool pools$Pool = this.f2751a;
        Object objAcquire = pools$Pool.acquire();
        c0.g.c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            List list2 = this.f2752b;
            int size = list2.size();
            d0 d0VarA = null;
            for (int i11 = 0; i11 < size; i11++) {
                try {
                    d0VarA = ((l) list2.get(i11)).a(i9, i10, gVar, hVar, iVar);
                } catch (z e) {
                    list.add(e);
                }
                if (d0VarA != null) {
                    break;
                }
            }
            if (d0VarA == null) {
                throw new z(this.c, new ArrayList(list));
            }
            pools$Pool.release(list);
            return d0VarA;
        } catch (Throwable th) {
            pools$Pool.release(list);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f2752b.toArray()) + '}';
    }
}
