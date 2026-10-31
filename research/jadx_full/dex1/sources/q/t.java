package q;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t implements h.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h.l f4741b;
    public final boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(h.l lVar, boolean z8) {
        this.f4741b = lVar;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.l
    public final j.d0 a(Context context, j.d0 d0Var, int i9, int i10) {
        k.b bVar = com.bumptech.glide.b.a(context).f549b;
        Drawable drawable = (Drawable) d0Var.get();
        e eVarA = s.a(bVar, drawable, i9, i10);
        if (eVarA == null) {
            if (!this.c) {
                return d0Var;
            }
            androidx.navigation.b.p(drawable, "Unable to convert ", " to a Bitmap");
            return null;
        }
        j.d0 d0VarA = this.f4741b.a(context, eVarA, i9, i10);
        if (!d0VarA.equals(eVarA)) {
            return new e(context.getResources(), d0VarA);
        }
        d0VarA.recycle();
        return d0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        this.f4741b.b(messageDigest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            return this.f4741b.equals(((t) obj).f4741b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return this.f4741b.hashCode();
    }
}
