package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public interface BitmapRenderer {
    public static final boolean USE_HARDWARE_BITMAP = true;

    void draw(Canvas canvas);

    static Bitmap createSoftwareBitmap(int i, int i2, BitmapRenderer bitmapRenderer) {
        GraphicsUtils.noteNewBitmapCreated();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        bitmapRenderer.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    static Bitmap createHardwareBitmap(int i, int i2, BitmapRenderer bitmapRenderer) {
        if (!USE_HARDWARE_BITMAP) {
            return createSoftwareBitmap(i, i2, bitmapRenderer);
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        bitmapRenderer.draw(picture.beginRecording(i, i2));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    static Bitmap createHardwareBitmap(int i, int i2, BitmapRenderer bitmapRenderer, int i3, int i4) {
        if (!USE_HARDWARE_BITMAP) {
            return createSoftwareBitmap(i, i2, bitmapRenderer);
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording(i, i2);
        canvasBeginRecording.translate(i3, i4);
        bitmapRenderer.draw(canvasBeginRecording);
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    static Bitmap createBitmap(final Bitmap bitmap, final int i, final int i2, final int i3, final int i4) {
        if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
            return createHardwareBitmap(i3, i4, new BitmapRenderer() { // from class: com.android.launcher3.icons.BitmapRenderer$$ExternalSyntheticLambda0
                @Override // com.android.launcher3.icons.BitmapRenderer
                public final void draw(Canvas canvas) {
                    Bitmap bitmap2 = bitmap;
                    int i5 = i;
                    int i6 = i2;
                    int i7 = i3;
                    int i8 = i4;
                    canvas.drawBitmap(bitmap2, new Rect(i5, i6, i5 + i7, i6 + i8), new RectF(0.0f, 0.0f, i7, i8), (Paint) null);
                }
            });
        }
        GraphicsUtils.noteNewBitmapCreated();
        return Bitmap.createBitmap(bitmap, i, i2, i3, i4);
    }
}
