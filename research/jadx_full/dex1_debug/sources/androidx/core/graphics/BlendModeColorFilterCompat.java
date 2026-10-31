package androidx.core.graphics;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BlendModeColorFilterCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BlendModeColorFilterCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static ColorFilter createBlendModeColorFilterCompat(int i9, @NonNull BlendModeCompat blendModeCompat) {
        if (Build$VERSION.SDK_INT >= 29) {
            Object objObtainBlendModeFromCompat = BlendModeUtils$Api29Impl.obtainBlendModeFromCompat(blendModeCompat);
            if (objObtainBlendModeFromCompat != null) {
                return BlendModeColorFilterCompat$Api29Impl.createBlendModeColorFilter(i9, objObtainBlendModeFromCompat);
            }
            return null;
        }
        PorterDuff$Mode porterDuff$ModeObtainPorterDuffFromCompat = BlendModeUtils.obtainPorterDuffFromCompat(blendModeCompat);
        if (porterDuff$ModeObtainPorterDuffFromCompat != null) {
            return new PorterDuffColorFilter(i9, porterDuff$ModeObtainPorterDuffFromCompat);
        }
        return null;
    }
}
