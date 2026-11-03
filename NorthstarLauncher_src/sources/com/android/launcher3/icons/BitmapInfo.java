package com.android.launcher3.icons;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class BitmapInfo {
    public static final Bitmap LOW_RES_ICON;
    public static final BitmapInfo LOW_RES_INFO;
    public final int color;
    public final Bitmap icon;

    public final boolean isLowRes() {
        return LOW_RES_ICON == this.icon;
    }

    public final boolean isNullOrLowRes() {
        Bitmap bitmap = this.icon;
        return bitmap == null || bitmap == LOW_RES_ICON;
    }

    static {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
        LOW_RES_ICON = bitmapCreateBitmap;
        LOW_RES_INFO = fromBitmap(bitmapCreateBitmap);
    }

    public BitmapInfo(Bitmap bitmap, int i) {
        this.icon = bitmap;
        this.color = i;
    }

    public static BitmapInfo fromBitmap(Bitmap bitmap) {
        return of(bitmap, 0);
    }

    public static BitmapInfo of(Bitmap bitmap, int i) {
        return new BitmapInfo(bitmap, i);
    }

    public String toString() {
        return "BitmapInfo{icon=" + this.icon + ", color=" + this.color + '}';
    }

    public interface Extender {
        default void prepareToDrawOnUi() {
        }

        default BitmapInfo getExtendedInfo(Bitmap bitmap, int i, BaseIconFactory baseIconFactory) {
            return BitmapInfo.of(bitmap, i);
        }
    }
}
