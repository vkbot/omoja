package o3;

import android.content.res.ColorStateList;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build$VERSION;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.transition.d;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Drawable a(Drawable drawable, Drawable drawable2, int i9, int i10) {
        if (drawable == null) {
            return drawable2;
        }
        if (drawable2 == null) {
            return drawable;
        }
        if (i9 == -1 && (i9 = drawable2.getIntrinsicWidth()) == -1) {
            i9 = drawable.getIntrinsicWidth();
        }
        if (i10 == -1 && (i10 = drawable2.getIntrinsicHeight()) == -1) {
            i10 = drawable.getIntrinsicHeight();
        }
        if (i9 > drawable.getIntrinsicWidth() || i10 > drawable.getIntrinsicHeight()) {
            float f8 = i9 / i10;
            if (f8 >= drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                i10 = (int) (intrinsicWidth / f8);
                i9 = intrinsicWidth;
            } else {
                i10 = drawable.getIntrinsicHeight();
                i9 = (int) (f8 * i10);
            }
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, drawable2});
        layerDrawable.setLayerSize(1, i9, i10);
        layerDrawable.setLayerGravity(1, 17);
        return layerDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Drawable b(Drawable drawable, ColorStateList colorStateList, PorterDuff$Mode porterDuff$Mode) {
        if (drawable == null) {
            return null;
        }
        if (colorStateList != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (porterDuff$Mode != null) {
                drawable.setTintMode(porterDuff$Mode);
            }
        }
        return drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] c(int[] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9++) {
            int i10 = iArr[i9];
            if (i10 == 16842912) {
                return iArr;
            }
            if (i10 == 0) {
                int[] iArr2 = (int[]) iArr.clone();
                iArr2[i9] = 16842912;
                return iArr2;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArr.length] = 16842912;
        return iArrCopyOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ColorStateList d(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build$VERSION.SDK_INT < 29 || !d.q(drawable)) {
            return null;
        }
        return d.c(d.d(drawable));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(Outline outline, Path path) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            b.a(outline, path);
            return;
        }
        if (i9 >= 29) {
            try {
                a.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            a.a(outline, path);
        }
    }
}
