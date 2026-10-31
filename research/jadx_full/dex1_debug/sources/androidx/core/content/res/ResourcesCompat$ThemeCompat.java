package androidx.core.content.res;

import android.content.res.Resources$Theme;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ResourcesCompat$ThemeCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ResourcesCompat$ThemeCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void rebase(@NonNull Resources$Theme resources$Theme) {
        if (Build$VERSION.SDK_INT >= 29) {
            ResourcesCompat$ThemeCompat$Api29Impl.rebase(resources$Theme);
        } else {
            ResourcesCompat$ThemeCompat$Api23Impl.rebase(resources$Theme);
        }
    }
}
