package d0;

import androidx.core.util.Pools$SynchronizedPool;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w7.c f1650a = new w7.c(3);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d a(int i9, c cVar) {
        return new d(new Pools$SynchronizedPool(i9), cVar, f1650a);
    }
}
