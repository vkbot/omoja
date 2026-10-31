package p135m4;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: m4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2388g {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m3749a(Unsafe unsafe, AbstractC2394m abstractC2394m, long j10, C2393l c2393l, C2393l c2393l2) {
        while (!unsafe.compareAndSwapObject(abstractC2394m, j10, c2393l, c2393l2)) {
            if (unsafe.getObject(abstractC2394m, j10) != c2393l) {
                return false;
            }
        }
        return true;
    }
}
