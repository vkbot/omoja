package o;

import android.content.Context;
import android.net.Uri;
import android.os.Build$VERSION;
import h.h;
import n.q;
import n.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f4012b;
    public final r c;
    public final Class d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, r rVar, r rVar2, Class cls) {
        this.f4011a = context.getApplicationContext();
        this.f4012b = rVar;
        this.c = rVar2;
        this.d = cls;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        return Build$VERSION.SDK_INT >= 29 && a.a.n((Uri) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h hVar) {
        Uri uri = (Uri) obj;
        return new q(new b0.b(uri), new d(this.f4011a, this.f4012b, this.c, uri, i9, i10, hVar, this.d));
    }
}
