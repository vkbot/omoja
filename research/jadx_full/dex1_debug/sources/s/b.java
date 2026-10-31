package s;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import c0.g;
import com.bumptech.glide.p;
import g.d;
import j.a0;
import j.d0;
import u.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements d0, a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Drawable f5038b;
    public final /* synthetic */ int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Drawable drawable, int i9) {
        this.c = i9;
        g.c(drawable, "Argument must not be null");
        this.f5038b = drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.a0
    public void a() {
        switch (this.c) {
            case 1:
                ((f) ((u.b) this.f5038b).f5423b.f4939b).f5444l.prepareToDraw();
                break;
            default:
                Drawable drawable = this.f5038b;
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                } else if (drawable instanceof u.b) {
                    ((f) ((u.b) drawable).f5423b.f4939b).f5444l.prepareToDraw();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final int b() {
        switch (this.c) {
            case 0:
                Drawable drawable = this.f5038b;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                f fVar = (f) ((u.b) this.f5038b).f5423b.f4939b;
                d dVar = fVar.f5436a;
                return (dVar.f2321j.length * 4) + dVar.d.limit() + dVar.f2320i.length + fVar.f5446n;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Class d() {
        switch (this.c) {
            case 0:
                return this.f5038b.getClass();
            default:
                return u.b.class;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Object get() {
        Drawable drawable = this.f5038b;
        Drawable$ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final void recycle() {
        k.g gVar;
        k.g gVar2;
        k.g gVar3;
        switch (this.c) {
            case 0:
                break;
            default:
                u.b bVar = (u.b) this.f5038b;
                bVar.stop();
                bVar.e = true;
                f fVar = (f) bVar.f5423b.f4939b;
                p pVar = fVar.d;
                fVar.c.clear();
                Bitmap bitmap = fVar.f5444l;
                if (bitmap != null) {
                    fVar.e.c(bitmap);
                    fVar.f5444l = null;
                }
                fVar.f5438f = false;
                u.d dVar = fVar.f5441i;
                if (dVar != null) {
                    pVar.k(dVar);
                    fVar.f5441i = null;
                }
                u.d dVar2 = fVar.f5443k;
                if (dVar2 != null) {
                    pVar.k(dVar2);
                    fVar.f5443k = null;
                }
                u.d dVar3 = fVar.f5445m;
                if (dVar3 != null) {
                    pVar.k(dVar3);
                    fVar.f5445m = null;
                }
                d dVar4 = fVar.f5436a;
                l.d dVar5 = dVar4.c;
                dVar4.f2323l = null;
                byte[] bArr = dVar4.f2320i;
                if (bArr != null && (gVar3 = (k.g) dVar5.d) != null) {
                    gVar3.g(bArr);
                }
                int[] iArr = dVar4.f2321j;
                if (iArr != null && (gVar2 = (k.g) dVar5.d) != null) {
                    gVar2.g(iArr);
                }
                Bitmap bitmap2 = dVar4.f2324m;
                if (bitmap2 != null) {
                    ((k.b) dVar5.c).c(bitmap2);
                }
                dVar4.f2324m = null;
                dVar4.d = null;
                dVar4.f2329s = null;
                byte[] bArr2 = dVar4.e;
                if (bArr2 != null && (gVar = (k.g) dVar5.d) != null) {
                    gVar.g(bArr2);
                }
                fVar.f5442j = true;
                break;
        }
    }

    private final void c() {
    }
}
