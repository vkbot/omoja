package androidx.core.graphics;

import android.graphics.PorterDuff$Mode;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class BlendModeUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BlendModeUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PorterDuff$Mode obtainPorterDuffFromCompat(@Nullable BlendModeCompat blendModeCompat) {
        if (blendModeCompat == null) {
            return null;
        }
        switch (BlendModeUtils$1.$SwitchMap$androidx$core$graphics$BlendModeCompat[blendModeCompat.ordinal()]) {
            case 1:
                return PorterDuff$Mode.CLEAR;
            case 2:
                return PorterDuff$Mode.SRC;
            case 3:
                return PorterDuff$Mode.DST;
            case 4:
                return PorterDuff$Mode.SRC_OVER;
            case 5:
                return PorterDuff$Mode.DST_OVER;
            case 6:
                return PorterDuff$Mode.SRC_IN;
            case 7:
                return PorterDuff$Mode.DST_IN;
            case 8:
                return PorterDuff$Mode.SRC_OUT;
            case 9:
                return PorterDuff$Mode.DST_OUT;
            case 10:
                return PorterDuff$Mode.SRC_ATOP;
            case 11:
                return PorterDuff$Mode.DST_ATOP;
            case 12:
                return PorterDuff$Mode.XOR;
            case 13:
                return PorterDuff$Mode.ADD;
            case 14:
                return PorterDuff$Mode.MULTIPLY;
            case 15:
                return PorterDuff$Mode.SCREEN;
            case 16:
                return PorterDuff$Mode.OVERLAY;
            case 17:
                return PorterDuff$Mode.DARKEN;
            case 18:
                return PorterDuff$Mode.LIGHTEN;
            default:
                return null;
        }
    }
}
