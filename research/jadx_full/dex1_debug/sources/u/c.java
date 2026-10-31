package u;

import android.content.Context;
import android.graphics.Bitmap;
import h.l;
import j.d0;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f5431b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(l lVar) {
        c0.g.c(lVar, "Argument must not be null");
        this.f5431b = lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.l
    public final d0 a(Context context, d0 d0Var, int i9, int i10) {
        b bVar = (b) d0Var.get();
        d0 eVar = new q.e(((f) bVar.f5423b.f4939b).f5444l, com.bumptech.glide.b.a(context).f549b);
        l lVar = this.f5431b;
        d0 d0VarA = lVar.a(context, eVar, i9, i10);
        if (!eVar.equals(d0VarA)) {
            eVar.recycle();
        }
        ((f) bVar.f5423b.f4939b).c(lVar, (Bitmap) d0VarA.get());
        return d0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        this.f5431b.b(messageDigest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f5431b.equals(((c) obj).f5431b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return this.f5431b.hashCode();
    }
}
