package p135m4;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: m4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2390i {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m3751a(Unsafe unsafe, AbstractC2394m abstractC2394m, long j10, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(abstractC2394m, j10, obj, obj2)) {
            if (unsafe.getObject(abstractC2394m, j10) != obj) {
                return false;
            }
        }
        return true;
    }
}
