package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources$Theme;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ResourcesCompat$ColorStateListCacheEntry {
    final Configuration mConfiguration;
    final int mThemeHash;
    final ColorStateList mValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ResourcesCompat$ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration, @Nullable Resources$Theme resources$Theme) {
        this.mValue = colorStateList;
        this.mConfiguration = configuration;
        this.mThemeHash = resources$Theme == null ? 0 : resources$Theme.hashCode();
    }
}
