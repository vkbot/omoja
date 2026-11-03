package com.android.launcher3.graphics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import java.nio.ByteBuffer;
import kotlin.UByte;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DragPreviewProvider {
    private static final String TAG = "DragPreviewProvider";
    public final int blurSizeOutline;
    public Bitmap generatedDragOutline;
    private OutlineGeneratorCallback mOutlineGeneratorCallback;
    private final Rect mTempRect;
    protected final View mView;
    public final int previewPadding;

    public DragPreviewProvider(View view) {
        this(view, view.getContext());
    }

    public DragPreviewProvider(View view, Context context) {
        this.mTempRect = new Rect();
        this.mView = view;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.blurSizeOutline = dimensionPixelSize;
        this.previewPadding = dimensionPixelSize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: drawDragView, reason: merged with bridge method [inline-methods] */
    public void m99x34887543(Canvas destCanvas, float scale) {
        int iSave = destCanvas.save();
        destCanvas.scale(scale, scale);
        KeyEvent.Callback callback = this.mView;
        if (callback instanceof DraggableView) {
            DraggableView draggableView = (DraggableView) callback;
            SafeCloseable safeCloseablePrepareDrawDragView = draggableView.prepareDrawDragView();
            try {
                draggableView.getSourceVisualDragBounds(this.mTempRect);
                destCanvas.translate((this.blurSizeOutline / 2) - this.mTempRect.left, (this.blurSizeOutline / 2) - this.mTempRect.top);
                this.mView.draw(destCanvas);
                if (safeCloseablePrepareDrawDragView != null) {
                    safeCloseablePrepareDrawDragView.close();
                }
            } catch (Throwable th) {
                if (safeCloseablePrepareDrawDragView != null) {
                    try {
                        safeCloseablePrepareDrawDragView.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        destCanvas.restoreToCount(iSave);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap createDragBitmap() {
        int width;
        int height;
        final float scaleX = this.mView.getScaleX();
        View view = this.mView;
        if (view instanceof DraggableView) {
            ((DraggableView) view).getSourceVisualDragBounds(this.mTempRect);
            width = this.mTempRect.width();
            height = this.mTempRect.height();
        } else {
            width = view.getWidth();
            height = this.mView.getHeight();
        }
        int i = this.blurSizeOutline;
        Bitmap bitmapCreateHardwareBitmap = BitmapRenderer.createHardwareBitmap(width + i, height + i, new BitmapRenderer() { // from class: com.android.launcher3.graphics.DragPreviewProvider$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                this.f$0.m99x34887543(scaleX, canvas);
            }
        });
        MLog.d(TAG, "createDragBitmap() called hardwareBitmap=" + bitmapCreateHardwareBitmap);
        return bitmapCreateHardwareBitmap;
    }

    public final void generateDragOutline(Bitmap preview) {
        if (this.mOutlineGeneratorCallback != null) {
            throw new RuntimeException("Drag outline generated twice");
        }
        this.mOutlineGeneratorCallback = new OutlineGeneratorCallback(preview);
        Executors.UI_HELPER_EXECUTOR.post(this.mOutlineGeneratorCallback);
    }

    protected static Rect getDrawableBounds(Drawable d) {
        Rect rect = new Rect();
        d.copyBounds(rect);
        if (rect.width() == 0 || rect.height() == 0) {
            rect.set(0, 0, d.getIntrinsicWidth(), d.getIntrinsicHeight());
        } else {
            rect.offsetTo(0, 0);
        }
        return rect;
    }

    public float getScaleAndPosition(Bitmap preview, int[] outPos) {
        float locationInDragLayer = Launcher.getLauncher(this.mView.getContext()).getDragLayer().getLocationInDragLayer(this.mView, outPos);
        View view = this.mView;
        if (view instanceof LauncherAppWidgetHostView) {
            locationInDragLayer /= ((LauncherAppWidgetHostView) view).getScaleToFit();
        }
        outPos[0] = Math.round(outPos[0] - ((preview.getWidth() - ((this.mView.getWidth() * locationInDragLayer) * this.mView.getScaleX())) / 2.0f));
        outPos[1] = Math.round((outPos[1] - (((1.0f - locationInDragLayer) * preview.getHeight()) / 2.0f)) - (this.previewPadding / 2));
        return locationInDragLayer;
    }

    protected Bitmap convertPreviewToAlphaBitmap(Bitmap preview) {
        return preview.copy(Bitmap.Config.ALPHA_8, true);
    }

    private class OutlineGeneratorCallback implements Runnable {
        private final Context mContext;
        private final boolean mIsIcon;
        private final Bitmap mPreviewSnapshot;

        OutlineGeneratorCallback(Bitmap preview) {
            this.mPreviewSnapshot = preview;
            this.mContext = DragPreviewProvider.this.mView.getContext();
            this.mIsIcon = DragPreviewProvider.this.mView instanceof BubbleTextView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmapConvertPreviewToAlphaBitmap = DragPreviewProvider.this.convertPreviewToAlphaBitmap(this.mPreviewSnapshot);
            if (this.mIsIcon) {
                int i = Launcher.getLauncher(this.mContext).getDeviceProfile().iconSizePx;
                bitmapConvertPreviewToAlphaBitmap = Bitmap.createScaledBitmap(bitmapConvertPreviewToAlphaBitmap, i, i, false);
            }
            int width = bitmapConvertPreviewToAlphaBitmap.getWidth() * bitmapConvertPreviewToAlphaBitmap.getHeight();
            byte[] bArr = new byte[width];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.rewind();
            bitmapConvertPreviewToAlphaBitmap.copyPixelsToBuffer(byteBufferWrap);
            for (int i2 = 0; i2 < width; i2++) {
                if ((bArr[i2] & UByte.MAX_VALUE) < 188) {
                    bArr[i2] = 0;
                }
            }
            byteBufferWrap.rewind();
            bitmapConvertPreviewToAlphaBitmap.copyPixelsFromBuffer(byteBufferWrap);
            Paint paint = new Paint(3);
            Canvas canvas = new Canvas();
            paint.setMaskFilter(new BlurMaskFilter(DragPreviewProvider.this.blurSizeOutline, BlurMaskFilter.Blur.OUTER));
            int[] iArr = new int[2];
            Bitmap bitmapExtractAlpha = bitmapConvertPreviewToAlphaBitmap.extractAlpha(paint, iArr);
            paint.setMaskFilter(new BlurMaskFilter(this.mContext.getResources().getDimension(R.dimen.blur_size_thin_outline), BlurMaskFilter.Blur.OUTER));
            int[] iArr2 = new int[2];
            Bitmap bitmapExtractAlpha2 = bitmapConvertPreviewToAlphaBitmap.extractAlpha(paint, iArr2);
            canvas.setBitmap(bitmapConvertPreviewToAlphaBitmap);
            canvas.drawColor(-16777216, PorterDuff.Mode.SRC_OUT);
            paint.setMaskFilter(new BlurMaskFilter(DragPreviewProvider.this.blurSizeOutline, BlurMaskFilter.Blur.NORMAL));
            int[] iArr3 = new int[2];
            Bitmap bitmapExtractAlpha3 = bitmapConvertPreviewToAlphaBitmap.extractAlpha(paint, iArr3);
            paint.setMaskFilter(null);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            canvas.setBitmap(bitmapExtractAlpha3);
            canvas.drawBitmap(bitmapConvertPreviewToAlphaBitmap, -iArr3[0], -iArr3[1], paint);
            canvas.drawRect(0.0f, 0.0f, -iArr3[0], bitmapExtractAlpha3.getHeight(), paint);
            canvas.drawRect(0.0f, 0.0f, bitmapExtractAlpha3.getWidth(), -iArr3[1], paint);
            paint.setXfermode(null);
            canvas.setBitmap(bitmapConvertPreviewToAlphaBitmap);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            canvas.drawBitmap(bitmapExtractAlpha3, iArr3[0], iArr3[1], paint);
            canvas.drawBitmap(bitmapExtractAlpha, iArr[0], iArr[1], paint);
            canvas.drawBitmap(bitmapExtractAlpha2, iArr2[0], iArr2[1], paint);
            canvas.setBitmap(null);
            bitmapExtractAlpha2.recycle();
            bitmapExtractAlpha.recycle();
            bitmapExtractAlpha3.recycle();
            DragPreviewProvider.this.generatedDragOutline = bitmapConvertPreviewToAlphaBitmap;
        }
    }

    public String toString() {
        return "DragPreviewProvider{mTempRect=" + this.mTempRect + ", mView=" + this.mView + ", previewPadding=" + this.previewPadding + ", blurSizeOutline=" + this.blurSizeOutline + ", mOutlineGeneratorCallback=" + this.mOutlineGeneratorCallback + ", generatedDragOutline=" + this.generatedDragOutline + '}';
    }
}
