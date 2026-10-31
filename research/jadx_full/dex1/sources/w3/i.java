package w3;

import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Build$VERSION;
import androidx.core.math.MathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class i {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Typeface a(Configuration configuration, Typeface typeface) {
        if (Build$VERSION.SDK_INT < 31 || h.a(configuration) == Integer.MAX_VALUE || h.a(configuration) == 0 || typeface == null) {
            return null;
        }
        return q.c.f(typeface, MathUtils.clamp(h.a(configuration) + q.c.a(typeface), 1, 1000), typeface.isItalic());
    }
}
