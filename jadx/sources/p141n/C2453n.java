package p141n;

import java.util.ArrayDeque;
import p025c0.C0943l;

/* JADX INFO: renamed from: n.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2453n extends C0943l {
    @Override // p025c0.C0943l
    /* JADX INFO: renamed from: c */
    public final void mo1079c(Object obj, Object obj2) {
        C2454o c2454o = (C2454o) obj;
        c2454o.getClass();
        ArrayDeque arrayDeque = C2454o.f6645b;
        synchronized (arrayDeque) {
            arrayDeque.offer(c2454o);
        }
    }
}
