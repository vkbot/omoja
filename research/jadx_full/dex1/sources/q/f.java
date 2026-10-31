package q;

import android.content.Context;
import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class f implements h.l {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.l
    public final j.d0 a(Context context, j.d0 d0Var, int i9, int i10) {
        if (!c0.p.i(i9, i10)) {
            ai.onnxruntime.b.s("Cannot apply transformation on width: ", i9, " or height: ", i10, " less than or equal to zero and not Target.SIZE_ORIGINAL");
            return null;
        }
        k.b bVar = com.bumptech.glide.b.a(context).f549b;
        Bitmap bitmap = (Bitmap) d0Var.get();
        if (i9 == Integer.MIN_VALUE) {
            i9 = bitmap.getWidth();
        }
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(bVar, bitmap, i9, i10);
        return bitmap.equals(bitmapC) ? d0Var : e.c(bitmapC, bVar);
    }

    public abstract Bitmap c(k.b bVar, Bitmap bitmap, int i9, int i10);
}
