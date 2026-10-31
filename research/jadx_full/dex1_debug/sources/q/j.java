package q;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f4723b = "q.j".getBytes(h.e.f2409a);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f4723b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.f
    public final Bitmap c(k.b bVar, Bitmap bitmap, int i9, int i10) {
        Paint paint = z.f4751a;
        if (bitmap.getWidth() > i9 || bitmap.getHeight() > i10) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return z.b(bVar, bitmap, i9, i10);
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        return obj instanceof j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return -670243078;
    }
}
