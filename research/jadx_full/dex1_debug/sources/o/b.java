package o;

import a5.h;
import android.content.Context;
import android.net.Uri;
import java.io.File;
import n.r;
import n.s;
import n.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4002b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(f6.a aVar) {
        this.f4002b = aVar;
        this.c = new h(aVar);
    }

    public abstract String a();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        Context context = (Context) this.f4002b;
        Class cls = (Class) this.c;
        return new e(context, zVar.b(File.class, cls), zVar.b(Uri.class, cls), cls);
    }

    public b(Context context, Class cls) {
        this.f4002b = context;
        this.c = cls;
    }
}
