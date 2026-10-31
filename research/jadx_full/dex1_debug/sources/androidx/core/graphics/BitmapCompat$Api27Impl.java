package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.ColorSpace;
import android.graphics.ColorSpace$Named;
import android.os.Build$VERSION;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(27)
public class BitmapCompat$Api27Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BitmapCompat$Api27Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap$Config.HARDWARE) {
            return bitmap;
        }
        Bitmap$Config hardwareBitmapConfig = Bitmap$Config.ARGB_8888;
        if (Build$VERSION.SDK_INT >= 31) {
            hardwareBitmapConfig = BitmapCompat$Api31Impl.getHardwareBitmapConfig(bitmap);
        }
        return bitmap.copy(hardwareBitmapConfig, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Bitmap createBitmapWithSourceColorspace(int i9, int i10, Bitmap bitmap, boolean z8) {
        Bitmap$Config config = bitmap.getConfig();
        ColorSpace colorSpace = bitmap.getColorSpace();
        ColorSpace colorSpace2 = ColorSpace.get(ColorSpace$Named.LINEAR_EXTENDED_SRGB);
        if (z8 && !bitmap.getColorSpace().equals(colorSpace2)) {
            config = Bitmap$Config.RGBA_F16;
            colorSpace = colorSpace2;
        } else if (bitmap.getConfig() == Bitmap$Config.HARDWARE) {
            config = Bitmap$Config.ARGB_8888;
            if (Build$VERSION.SDK_INT >= 31) {
                config = BitmapCompat$Api31Impl.getHardwareBitmapConfig(bitmap);
            }
        }
        return Bitmap.createBitmap(i9, i10, config, bitmap.hasAlpha(), colorSpace);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
        return bitmap.getConfig() == Bitmap$Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace$Named.LINEAR_EXTENDED_SRGB));
    }
}
