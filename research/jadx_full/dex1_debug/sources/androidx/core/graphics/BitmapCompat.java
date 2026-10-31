package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class BitmapCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BitmapCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Bitmap createScaledBitmap(@NonNull Bitmap bitmap, int i9, int i10, @Nullable Rect rect, boolean z8) {
        Bitmap bitmapCreateBitmap;
        int i11;
        int i12;
        boolean z9;
        char c;
        if (i9 <= 0 || i10 <= 0) {
            i.k("dstW and dstH must be > 0!");
            return null;
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            i.k("srcRect must be contained by srcBm!");
            return null;
        }
        int i13 = Build$VERSION.SDK_INT;
        Bitmap bitmapCopyBitmapIfHardware = i13 >= 27 ? BitmapCompat$Api27Impl.copyBitmapIfHardware(bitmap) : bitmap;
        int iWidth = rect != null ? rect.width() : bitmap.getWidth();
        int iHeight = rect != null ? rect.height() : bitmap.getHeight();
        float f8 = i9 / iWidth;
        float f9 = i10 / iHeight;
        int i14 = rect != null ? rect.left : 0;
        int i15 = rect != null ? rect.top : 0;
        if (i14 == 0 && i15 == 0 && i9 == bitmap.getWidth() && i10 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == bitmapCopyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : bitmapCopyBitmapIfHardware;
        }
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        if (i13 >= 29) {
            BitmapCompat$Api29Impl.setPaintBlendMode(paint);
        } else {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff$Mode.SRC));
        }
        if (iWidth == i9 && iHeight == i10) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i9, i10, bitmapCopyBitmapIfHardware.getConfig());
            new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCopyBitmapIfHardware, -i14, -i15, paint);
            return bitmapCreateBitmap2;
        }
        double dLog = Math.log(2.0d);
        int iCeil = (int) (f8 > 1.0f ? Math.ceil(Math.log(f8) / dLog) : Math.floor(Math.log(f8) / dLog));
        int iCeil2 = (int) (f9 > 1065353216 ? Math.ceil(Math.log(f9) / dLog) : Math.floor(Math.log(f9) / dLog));
        if (!z8 || i13 < 27 || BitmapCompat$Api27Impl.isAlreadyF16AndLinear(bitmap)) {
            bitmapCreateBitmap = null;
            i11 = i14;
            i12 = 0;
        } else {
            Bitmap bitmapCreateBitmapWithSourceColorspace = BitmapCompat$Api27Impl.createBitmapWithSourceColorspace(iCeil > 0 ? sizeAtStep(iWidth, i9, 1, iCeil) : iWidth, iCeil2 > 0 ? sizeAtStep(iHeight, i10, 1, iCeil2) : iHeight, bitmap, true);
            new Canvas(bitmapCreateBitmapWithSourceColorspace).drawBitmap(bitmapCopyBitmapIfHardware, -i14, -i15, paint);
            Bitmap bitmap2 = bitmapCopyBitmapIfHardware;
            bitmapCopyBitmapIfHardware = bitmapCreateBitmapWithSourceColorspace;
            bitmapCreateBitmap = bitmap2;
            i12 = 1;
            i15 = 0;
            i11 = 0;
        }
        Rect rect2 = new Rect(i11, i15, iWidth, iHeight);
        Rect rect3 = new Rect();
        int i16 = iCeil;
        int i17 = iCeil2;
        while (true) {
            if (i16 == 0 && i17 == 0) {
                break;
            }
            if (i16 < 0) {
                i16++;
            } else if (i16 > 0) {
                i16--;
            }
            if (i17 < 0) {
                i17++;
            } else if (i17 > 0) {
                i17--;
            }
            int i18 = i17;
            int i19 = i12;
            int i20 = i16;
            rect3.set(0, 0, sizeAtStep(iWidth, i9, i16, iCeil), sizeAtStep(iHeight, i10, i18, iCeil2));
            boolean z10 = i20 == 0 && i18 == 0;
            boolean z11 = bitmapCreateBitmap != null && bitmapCreateBitmap.getWidth() == i9 && bitmapCreateBitmap.getHeight() == i10;
            if (bitmapCreateBitmap == null || bitmapCreateBitmap == bitmap) {
                z9 = z10;
            } else {
                if (z8) {
                    z9 = z10;
                    if (Build$VERSION.SDK_INT < 27 || BitmapCompat$Api27Impl.isAlreadyF16AndLinear(bitmapCreateBitmap)) {
                    }
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect2, rect3, paint);
                    rect2.set(rect3);
                    Bitmap bitmap3 = bitmapCopyBitmapIfHardware;
                    bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
                    bitmapCreateBitmap = bitmap3;
                    i17 = i18;
                    i12 = i19;
                    i16 = i20;
                } else {
                    z9 = z10;
                }
                if (!z9 || (z11 && i19 == 0)) {
                    c = 27;
                }
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect2, rect3, paint);
                rect2.set(rect3);
                Bitmap bitmap4 = bitmapCopyBitmapIfHardware;
                bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
                bitmapCreateBitmap = bitmap4;
                i17 = i18;
                i12 = i19;
                i16 = i20;
            }
            if (bitmapCreateBitmap != bitmap && bitmapCreateBitmap != null) {
                bitmapCreateBitmap.recycle();
            }
            int iSizeAtStep = sizeAtStep(iWidth, i9, i20 > 0 ? i19 : i20, iCeil);
            int iSizeAtStep2 = sizeAtStep(iHeight, i10, i18 > 0 ? i19 : i18, iCeil2);
            c = 27;
            if (Build$VERSION.SDK_INT >= 27) {
                bitmapCreateBitmap = BitmapCompat$Api27Impl.createBitmapWithSourceColorspace(iSizeAtStep, iSizeAtStep2, bitmap, z8 && !z9);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(iSizeAtStep, iSizeAtStep2, bitmapCopyBitmapIfHardware.getConfig());
            }
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect2, rect3, paint);
            rect2.set(rect3);
            Bitmap bitmap5 = bitmapCopyBitmapIfHardware;
            bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
            bitmapCreateBitmap = bitmap5;
            i17 = i18;
            i12 = i19;
            i16 = i20;
        }
        if (bitmapCreateBitmap != bitmap && bitmapCreateBitmap != null) {
            bitmapCreateBitmap.recycle();
        }
        return bitmapCopyBitmapIfHardware;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z8) {
        bitmap.setHasMipMap(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public static int sizeAtStep(int i9, int i10, int i11, int i12) {
        if (i11 == 0) {
            return i10;
        }
        return i11 > 0 ? i9 * (1 << (i12 - i11)) : i10 << ((-i11) - 1);
    }
}
