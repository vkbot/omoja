package androidx.core.content.pm;

import android.content.pm.ShortcutInfo$Builder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(33)
public class ShortcutInfoCompat$Api33Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ShortcutInfoCompat$Api33Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setExcludedFromSurfaces(@NonNull ShortcutInfo$Builder shortcutInfo$Builder, int i9) {
        shortcutInfo$Builder.setExcludedFromSurfaces(i9);
    }
}
