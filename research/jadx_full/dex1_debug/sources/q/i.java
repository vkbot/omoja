package q;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f4722b = "q.i".getBytes(h.e.f2409a);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f4722b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.f
    public final Bitmap c(k.b bVar, Bitmap bitmap, int i9, int i10) {
        float width;
        float height;
        Paint paint = z.f4751a;
        if (bitmap.getWidth() == i9 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i10 > bitmap.getHeight() * i9) {
            width = i10 / bitmap.getHeight();
            width2 = (i9 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i9 / bitmap.getWidth();
            height = (i10 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapJ = bVar.j(i9, i10, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap$Config.ARGB_8888);
        bitmapJ.setHasAlpha(bitmap.hasAlpha());
        z.a(bitmap, bitmapJ, matrix);
        return bitmapJ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return -599754482;
    }
}
