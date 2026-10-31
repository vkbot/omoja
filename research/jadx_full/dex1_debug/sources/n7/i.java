package n7;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f3940b = new i(new h(2), h.c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f3941a = new ConcurrentHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(h... hVarArr) {
        for (h hVar : hVarArr) {
            this.f3941a.put(hVar.a(), hVar);
        }
    }
}
