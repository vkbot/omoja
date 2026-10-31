package j;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends WeakReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h.e f2749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2750b;
    public d0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(h.e eVar, x xVar, ReferenceQueue referenceQueue) {
        super(xVar, referenceQueue);
        c0.g.c(eVar, "Argument must not be null");
        this.f2749a = eVar;
        boolean z8 = xVar.f2858b;
        this.c = null;
        this.f2750b = z8;
    }
}
