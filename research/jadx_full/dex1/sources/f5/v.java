package f5;

import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2252a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map.put(d5.l.f1772b, d5.v.UNSPECIFIED_RENDER_ERROR);
        map.put(d5.l.c, d5.v.IMAGE_FETCH_ERROR);
        map.put(d5.l.d, d5.v.IMAGE_DISPLAY_ERROR);
        map.put(d5.l.e, d5.v.IMAGE_UNSUPPORTED_FORMAT);
        map2.put(d5.k.c, d5.g.AUTO);
        map2.put(d5.k.d, d5.g.CLICK);
        map2.put(d5.k.e, d5.g.SWIPE);
        map2.put(d5.k.f1770b, d5.g.UNKNOWN_DISMISS_TYPE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(Executor executor) {
        this.f2252a = executor;
    }
}
