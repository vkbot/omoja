package n2;

import a2.b;
import android.util.SparseArray;
import j1.i;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseArray f3849a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f3850b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        f3850b = map;
        map.put(b.f6b, 0);
        map.put(b.c, 1);
        map.put(b.d, 2);
        for (b bVar : map.keySet()) {
            f3849a.append(((Integer) f3850b.get(bVar)).intValue(), bVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(b bVar) {
        Integer num = (Integer) f3850b.get(bVar);
        if (num != null) {
            return num.intValue();
        }
        ai.onnxruntime.b.q(bVar, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b b(int i9) {
        b bVar = (b) f3849a.get(i9);
        if (bVar != null) {
            return bVar;
        }
        i.k(ai.onnxruntime.a.e(i9, "Unknown Priority for value "));
        return null;
    }
}
