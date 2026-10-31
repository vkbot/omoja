package c0;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f405a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f406b;
    public long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(long j9) {
        this.f406b = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Object a(Object obj) {
        k kVar;
        kVar = (k) this.f405a.get(obj);
        return kVar != null ? kVar.f403a : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int b(Object obj) {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j9 = iB;
        if (j9 >= this.f406b) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.c += j9;
        }
        k kVar = (k) this.f405a.put(obj, obj2 == null ? null : new k(iB, obj2));
        if (kVar != null) {
            this.c -= (long) kVar.f404b;
            if (!kVar.f403a.equals(obj2)) {
                c(obj, kVar.f403a);
            }
        }
        e(this.f406b);
        return kVar != null ? kVar.f403a : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void e(long j9) {
        while (this.c > j9) {
            Iterator it = this.f405a.entrySet().iterator();
            Map$Entry map$Entry = (Map$Entry) it.next();
            k kVar = (k) map$Entry.getValue();
            this.c -= (long) kVar.f404b;
            Object key = map$Entry.getKey();
            it.remove();
            c(key, kVar.f403a);
        }
    }

    public void c(Object obj, Object obj2) {
    }
}
