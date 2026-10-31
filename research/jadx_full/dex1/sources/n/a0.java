package n;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 implements s, v.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3728b;
    public final Resources c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a0(Resources resources, int i9) {
        this.f3728b = i9;
        this.c = resources;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v.a
    public j.d0 a(j.d0 d0Var, h.h hVar) {
        if (d0Var == null) {
            return null;
        }
        return new q.e(this.c, d0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        switch (this.f3728b) {
            case 0:
                return new b(this.c, zVar.b(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new b(this.c, zVar.b(Uri.class, InputStream.class));
            default:
                return new b(this.c, d0.f3737b);
        }
    }
}
