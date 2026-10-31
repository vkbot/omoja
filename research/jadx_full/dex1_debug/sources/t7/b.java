package t7;

import com.google.protobuf.x0;
import com.google.protobuf.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {
    public static final ThreadLocal d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x0 f5416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.protobuf.a f5417b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(com.google.protobuf.a aVar) {
        o4.b.i(aVar, "defaultInstance cannot be null");
        this.f5417b = aVar;
        this.f5416a = (x0) ((y) aVar).e(7);
        this.c = -1;
    }
}
