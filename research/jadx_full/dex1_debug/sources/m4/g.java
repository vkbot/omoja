package m4;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class g {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(Unsafe unsafe, m mVar, long j9, l lVar, l lVar2) {
        while (!unsafe.compareAndSwapObject(mVar, j9, lVar, lVar2)) {
            if (unsafe.getObject(mVar, j9) != lVar) {
                return false;
            }
        }
        return true;
    }
}
