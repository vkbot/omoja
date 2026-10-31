package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ImageViewCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ImageViewCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static ColorStateList getImageTintList(@NonNull ImageView imageView) {
        return ImageViewCompat$Api21Impl.getImageTintList(imageView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PorterDuff$Mode getImageTintMode(@NonNull ImageView imageView) {
        return ImageViewCompat$Api21Impl.getImageTintMode(imageView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setImageTintList(@NonNull ImageView imageView, @Nullable ColorStateList colorStateList) {
        ImageViewCompat$Api21Impl.setImageTintList(imageView, colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setImageTintMode(@NonNull ImageView imageView, @Nullable PorterDuff$Mode porterDuff$Mode) {
        ImageViewCompat$Api21Impl.setImageTintMode(imageView, porterDuff$Mode);
    }
}
