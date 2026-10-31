package p135m4;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: m4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2389h {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m3750a(Unsafe unsafe, AbstractC2394m abstractC2394m, long j10, C2385d c2385d, C2385d c2385d2) {
        while (!unsafe.compareAndSwapObject(abstractC2394m, j10, c2385d, c2385d2)) {
            if (unsafe.getObject(abstractC2394m, j10) != c2385d) {
                return false;
            }
        }
        return true;
    }
}
