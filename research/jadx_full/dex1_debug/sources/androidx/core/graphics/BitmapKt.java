package androidx.core.graphics;

import ai.onnxruntime.c;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\b\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0087\b\u001a&\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\b\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0086\b\u001a'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n¨\u0006\u001c"}, d2 = {"createBitmap", "Landroid/graphics/Bitmap;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "contains", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "get", "x", "y", "scale", "filter", "set", TypedValues$Custom.S_COLOR, "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class BitmapKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Bitmap applyCanvas(Bitmap bitmap, Function1<? super Canvas, Unit> function1) {
        function1.invoke(new Canvas(bitmap));
        return bitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean contains(Bitmap bitmap, PointF pointF) {
        float f8 = pointF.x;
        if (f8 < 0.0f || f8 >= bitmap.getWidth()) {
            return false;
        }
        float f9 = pointF.y;
        return f9 >= 0.0f && f9 < ((float) bitmap.getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Bitmap createBitmap(int i9, int i10, Bitmap$Config bitmap$Config) {
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bitmap createBitmap$default(int i9, int i10, Bitmap$Config bitmap$Config, boolean z8, ColorSpace colorSpace, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bitmap$Config = Bitmap$Config.ARGB_8888;
        }
        if ((i11 & 8) != 0) {
            z8 = true;
        }
        if ((i11 & 16) != 0) {
            c.o();
            colorSpace = c.p();
        }
        return c.m(i9, i10, bitmap$Config, z8, colorSpace);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final int get(Bitmap bitmap, int i9, int i10) {
        return bitmap.getPixel(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Bitmap scale(Bitmap bitmap, int i9, int i10, boolean z8) {
        return Bitmap.createScaledBitmap(bitmap, i9, i10, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i9, int i10, boolean z8, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z8 = true;
        }
        return Bitmap.createScaledBitmap(bitmap, i9, i10, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void set(Bitmap bitmap, int i9, int i10, @ColorInt int i11) {
        bitmap.setPixel(i9, i10, i11);
    }

    @RequiresApi(26)
    public static final Bitmap createBitmap(int i9, int i10, Bitmap$Config bitmap$Config, boolean z8, ColorSpace colorSpace) {
        return c.m(i9, i10, bitmap$Config, z8, colorSpace);
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i9, int i10, Bitmap$Config bitmap$Config, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bitmap$Config = Bitmap$Config.ARGB_8888;
        }
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    public static final boolean contains(Bitmap bitmap, Point point) {
        int i9;
        int width = bitmap.getWidth();
        int i10 = point.x;
        return i10 >= 0 && i10 < width && (i9 = point.y) >= 0 && i9 < bitmap.getHeight();
    }
}
