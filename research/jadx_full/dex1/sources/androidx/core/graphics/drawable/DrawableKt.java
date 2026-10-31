package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.Px;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a,\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\t\u001a\u00020\n*\u00020\u00022\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u00042\b\b\u0003\u0010\u000e\u001a\u00020\u0004¨\u0006\u000f"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "toBitmapOrNull", "updateBounds", "", "left", "top", "right", "bottom", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,118:1\n38#2:119\n49#2:120\n60#2:121\n71#2:122\n*S KotlinDebug\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n*L\n66#1:119\n66#1:120\n66#1:121\n66#1:122\n*E\n"})
public final class DrawableKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Bitmap toBitmap(Drawable drawable, @Px int i9, @Px int i10, Bitmap$Config bitmap$Config) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null) {
                i.k("bitmap is null");
                return null;
            }
            if (bitmap$Config == null || bitmapDrawable.getBitmap().getConfig() == bitmap$Config) {
                return (i9 == bitmapDrawable.getBitmap().getWidth() && i10 == bitmapDrawable.getBitmap().getHeight()) ? bitmapDrawable.getBitmap() : Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i9, i10, true);
            }
        }
        Rect bounds = drawable.getBounds();
        int i11 = bounds.left;
        int i12 = bounds.top;
        int i13 = bounds.right;
        int i14 = bounds.bottom;
        if (bitmap$Config == null) {
            bitmap$Config = Bitmap$Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i9, i10, bitmap$Config);
        drawable.setBounds(0, 0, i9, i10);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        drawable.setBounds(i11, i12, i13, i14);
        return bitmapCreateBitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i9, int i10, Bitmap$Config bitmap$Config, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = drawable.getIntrinsicWidth();
        }
        if ((i11 & 2) != 0) {
            i10 = drawable.getIntrinsicHeight();
        }
        if ((i11 & 4) != 0) {
            bitmap$Config = null;
        }
        return toBitmap(drawable, i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Bitmap toBitmapOrNull(Drawable drawable, @Px int i9, @Px int i10, Bitmap$Config bitmap$Config) {
        if ((drawable instanceof BitmapDrawable) && ((BitmapDrawable) drawable).getBitmap() == null) {
            return null;
        }
        return toBitmap(drawable, i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bitmap toBitmapOrNull$default(Drawable drawable, int i9, int i10, Bitmap$Config bitmap$Config, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = drawable.getIntrinsicWidth();
        }
        if ((i11 & 2) != 0) {
            i10 = drawable.getIntrinsicHeight();
        }
        if ((i11 & 4) != 0) {
            bitmap$Config = null;
        }
        return toBitmapOrNull(drawable, i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void updateBounds(Drawable drawable, @Px int i9, @Px int i10, @Px int i11, @Px int i12) {
        drawable.setBounds(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i9, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = drawable.getBounds().left;
        }
        if ((i13 & 2) != 0) {
            i10 = drawable.getBounds().top;
        }
        if ((i13 & 4) != 0) {
            i11 = drawable.getBounds().right;
        }
        if ((i13 & 8) != 0) {
            i12 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i9, i10, i11, i12);
    }
}
