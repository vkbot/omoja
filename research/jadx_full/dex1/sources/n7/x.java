package n7;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x {
    public static final Logger d = Logger.getLogger(x.class.getName());
    public static final x e = new x();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentSkipListMap f3982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f3983b;
    public final ConcurrentHashMap c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x() {
        new ConcurrentSkipListMap();
        this.f3982a = new ConcurrentSkipListMap();
        this.f3983b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
