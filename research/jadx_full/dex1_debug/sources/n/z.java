package n;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z {
    public static final y e = new y();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d0 f3773f = new d0(2);
    public final d0.d d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3774a = new ArrayList();
    public final HashSet c = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y f3775b = e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z(d0.d dVar) {
        this.d = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized ArrayList a(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            ArrayList arrayList2 = this.f3774a;
            int size = arrayList2.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList2.get(i9);
                i9++;
                x xVar = (x) obj;
                if (!this.c.contains(xVar) && xVar.f3771a.isAssignableFrom(cls)) {
                    this.c.add(xVar);
                    arrayList.add(xVar.c.j(this));
                    this.c.remove(xVar);
                }
            }
        } catch (Throwable th) {
            this.c.clear();
            throw th;
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized r b(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.f3774a;
            int size = arrayList2.size();
            boolean z8 = false;
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList2.get(i9);
                i9++;
                x xVar = (x) obj;
                if (this.c.contains(xVar)) {
                    z8 = true;
                } else if (xVar.f3771a.isAssignableFrom(cls) && xVar.f3772b.isAssignableFrom(cls2)) {
                    this.c.add(xVar);
                    arrayList.add(xVar.c.j(this));
                    this.c.remove(xVar);
                }
            }
            if (arrayList.size() > 1) {
                y yVar = this.f3775b;
                d0.d dVar = this.d;
                yVar.getClass();
                return new w(arrayList, dVar);
            }
            if (arrayList.size() == 1) {
                return (r) arrayList.get(0);
            }
            if (z8) {
                return f3773f;
            }
            throw new com.bumptech.glide.i("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.c.clear();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f3774a;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            x xVar = (x) obj;
            if (!arrayList.contains(xVar.f3772b) && xVar.f3771a.isAssignableFrom(cls)) {
                arrayList.add(xVar.f3772b);
            }
        }
        return arrayList;
    }
}
