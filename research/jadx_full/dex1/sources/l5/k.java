package l5;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f3307b = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static k c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w7.c f3308a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(w7.c cVar) {
        this.f3308a = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(m5.b bVar) {
        if (TextUtils.isEmpty(bVar.c)) {
            return true;
        }
        long j9 = bVar.f3672f + bVar.e;
        this.f3308a.getClass();
        return j9 < (System.currentTimeMillis() / 1000) + 3600;
    }
}
