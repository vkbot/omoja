package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ResourcesCompat$ColorStateListCacheKey {
    final Resources mResources;
    final Resources$Theme mTheme;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ResourcesCompat$ColorStateListCacheKey(@NonNull Resources resources, @Nullable Resources$Theme resources$Theme) {
        this.mResources = resources;
        this.mTheme = resources$Theme;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ResourcesCompat$ColorStateListCacheKey.class == obj.getClass()) {
            ResourcesCompat$ColorStateListCacheKey resourcesCompat$ColorStateListCacheKey = (ResourcesCompat$ColorStateListCacheKey) obj;
            if (this.mResources.equals(resourcesCompat$ColorStateListCacheKey.mResources) && ObjectsCompat.equals(this.mTheme, resourcesCompat$ColorStateListCacheKey.mTheme)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return ObjectsCompat.hash(this.mResources, this.mTheme);
    }
}
