package com.android.launcher3.views.blur;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public interface WallpaperBitmapProvider {

    public interface OnWallpaperChangedListener {
        void onWallpaperChanged(Bitmap bitmap);
    }

    void addOnWallpaperChangedListener(OnWallpaperChangedListener listener);

    Bitmap getWallpaperBitmap();

    void removeOnWallpaperChangedListener(OnWallpaperChangedListener listener);
}
