package q;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements j.d0, j.a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4713b = 1;
    public final Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Bitmap bitmap, k.b bVar) {
        c0.g.c(bitmap, "Bitmap must not be null");
        this.c = bitmap;
        c0.g.c(bVar, "BitmapPool must not be null");
        this.d = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e c(Bitmap bitmap, k.b bVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.a0
    public final void a() {
        switch (this.f4713b) {
            case 0:
                ((Bitmap) this.c).prepareToDraw();
                break;
            default:
                j.d0 d0Var = (j.d0) this.d;
                if (d0Var instanceof j.a0) {
                    ((j.a0) d0Var).a();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final int b() {
        switch (this.f4713b) {
            case 0:
                return c0.p.c((Bitmap) this.c);
            default:
                return ((j.d0) this.d).b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Class d() {
        switch (this.f4713b) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Object get() {
        switch (this.f4713b) {
            case 0:
                return (Bitmap) this.c;
            default:
                return new BitmapDrawable((Resources) this.c, (Bitmap) ((j.d0) this.d).get());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final void recycle() {
        switch (this.f4713b) {
            case 0:
                ((k.b) this.d).c((Bitmap) this.c);
                break;
            default:
                ((j.d0) this.d).recycle();
                break;
        }
    }

    public e(Resources resources, j.d0 d0Var) {
        c0.g.c(resources, "Argument must not be null");
        this.c = resources;
        c0.g.c(d0Var, "Argument must not be null");
        this.d = d0Var;
    }
}
