package n;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g0 implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f3748b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f3749a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g0(r rVar) {
        this.f3749a = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        return f3748b.contains(((Uri) obj).getScheme());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        return this.f3749a.b(new g(((Uri) obj).toString()), i9, i10, hVar);
    }
}
