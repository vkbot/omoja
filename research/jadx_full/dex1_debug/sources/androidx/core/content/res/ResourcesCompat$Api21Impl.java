package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class ResourcesCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ResourcesCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Drawable getDrawable(Resources resources, int i9, Resources$Theme resources$Theme) {
        return resources.getDrawable(i9, resources$Theme);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Drawable getDrawableForDensity(Resources resources, int i9, int i10, Resources$Theme resources$Theme) {
        return resources.getDrawableForDensity(i9, i10, resources$Theme);
    }
}
