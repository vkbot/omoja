package com.android.launcher3.views.blur;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: loaded from: classes.dex */
public class RenderScriptBlur {
    private final ScriptIntrinsicBlur mBlurScript;
    private Allocation mOutAllocation;
    private final RenderScript mRenderScript;
    private int mLastBitmapWidth = -1;
    private int mLastBitmapHeight = -1;

    public RenderScriptBlur(Context context) {
        RenderScript renderScriptCreate = RenderScript.create(context);
        this.mRenderScript = renderScriptCreate;
        this.mBlurScript = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

    private boolean canReuseAllocation(Bitmap bitmap) {
        return bitmap.getHeight() == this.mLastBitmapHeight && bitmap.getWidth() == this.mLastBitmapWidth;
    }

    public Bitmap newBlurBitmap(Bitmap src, Bitmap reuse, float blurRadius) {
        if (reuse == null || src.getWidth() != reuse.getWidth() || src.getHeight() != reuse.getHeight() || src.getConfig() != reuse.getConfig()) {
            reuse = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        }
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.mRenderScript, src);
        if (!canReuseAllocation(src)) {
            Allocation allocation = this.mOutAllocation;
            if (allocation != null) {
                allocation.destroy();
            }
            this.mOutAllocation = Allocation.createTyped(this.mRenderScript, allocationCreateFromBitmap.getType());
            this.mLastBitmapWidth = src.getWidth();
            this.mLastBitmapHeight = src.getHeight();
        }
        this.mBlurScript.setRadius(blurRadius);
        this.mBlurScript.setInput(allocationCreateFromBitmap);
        this.mBlurScript.forEach(this.mOutAllocation);
        this.mOutAllocation.copyTo(reuse);
        allocationCreateFromBitmap.destroy();
        return reuse;
    }

    public Bitmap newBlurBitmap(Bitmap src, float blurRadius) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), src.getConfig());
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.mRenderScript, src);
        if (!canReuseAllocation(src)) {
            Allocation allocation = this.mOutAllocation;
            if (allocation != null) {
                allocation.destroy();
            }
            this.mOutAllocation = Allocation.createTyped(this.mRenderScript, allocationCreateFromBitmap.getType());
            this.mLastBitmapWidth = src.getWidth();
            this.mLastBitmapHeight = src.getHeight();
        }
        this.mBlurScript.setRadius(blurRadius);
        this.mBlurScript.setInput(allocationCreateFromBitmap);
        this.mBlurScript.forEach(this.mOutAllocation);
        this.mOutAllocation.copyTo(bitmapCreateBitmap);
        allocationCreateFromBitmap.destroy();
        return bitmapCreateBitmap;
    }

    public Bitmap blur(Bitmap bitmap, float blurRadius) {
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.mRenderScript, bitmap);
        if (!canReuseAllocation(bitmap)) {
            Allocation allocation = this.mOutAllocation;
            if (allocation != null) {
                allocation.destroy();
            }
            this.mOutAllocation = Allocation.createTyped(this.mRenderScript, allocationCreateFromBitmap.getType());
            this.mLastBitmapWidth = bitmap.getWidth();
            this.mLastBitmapHeight = bitmap.getHeight();
        }
        this.mBlurScript.setRadius(blurRadius);
        this.mBlurScript.setInput(allocationCreateFromBitmap);
        this.mBlurScript.forEach(this.mOutAllocation);
        this.mOutAllocation.copyTo(bitmap);
        allocationCreateFromBitmap.destroy();
        return bitmap;
    }

    public final void destroy() {
        this.mBlurScript.destroy();
        this.mRenderScript.destroy();
        Allocation allocation = this.mOutAllocation;
        if (allocation != null) {
            allocation.destroy();
        }
    }

    public Bitmap.Config getSupportedBitmapConfig() {
        return Bitmap.Config.ARGB_8888;
    }
}
