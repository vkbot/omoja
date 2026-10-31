package m4;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class h {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(Unsafe unsafe, m mVar, long j9, d dVar, d dVar2) {
        while (!unsafe.compareAndSwapObject(mVar, j9, dVar, dVar2)) {
            if (unsafe.getObject(mVar, j9) != dVar) {
                return false;
            }
        }
        return true;
    }
}
