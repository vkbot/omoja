package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;

/* JADX INFO: loaded from: classes.dex */
public class BlendModeColorFilterCompat {
    public static ColorFilter createBlendModeColorFilterCompat(int i, BlendModeCompat blendModeCompat) {
        BlendMode blendModeObtainBlendModeFromCompat = BlendModeUtils.obtainBlendModeFromCompat(blendModeCompat);
        if (blendModeObtainBlendModeFromCompat != null) {
            return new BlendModeColorFilter(i, blendModeObtainBlendModeFromCompat);
        }
        return null;
    }

    private BlendModeColorFilterCompat() {
    }
}
