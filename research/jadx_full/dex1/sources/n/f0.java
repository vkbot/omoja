package n;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f3742b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3743a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f0(e0 e0Var) {
        this.f3743a = e0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        return f3742b.contains(((Uri) obj).getScheme());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        com.bumptech.glide.load.data.e aVar;
        Uri uri = (Uri) obj;
        b0.b bVar = new b0.b(uri);
        e0 e0Var = (e0) this.f3743a;
        switch (e0Var.f3741b) {
            case 0:
                aVar = new com.bumptech.glide.load.data.a(e0Var.c, uri, 0);
                break;
            case 1:
                aVar = new com.bumptech.glide.load.data.a(e0Var.c, uri, 1);
                break;
            default:
                aVar = new com.bumptech.glide.load.data.n(1, uri, e0Var.c);
                break;
        }
        return new q(bVar, aVar);
    }
}
