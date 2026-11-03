package com.android.systemui.shared.system;

import android.graphics.Rect;
import android.service.wallpaper.IWallpaperEngine;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperEngineCompat {
    private static final String TAG = "WallpaperEngineCompat";
    private final IWallpaperEngine mWrappedEngine;

    public static boolean supportsScalePreview() {
        try {
            return IWallpaperEngine.class.getMethod("scalePreview", Rect.class) != null;
        } catch (NoSuchMethodException | SecurityException unused) {
            return false;
        }
    }

    public WallpaperEngineCompat(IWallpaperEngine iWallpaperEngine) {
        this.mWrappedEngine = iWallpaperEngine;
    }

    public void scalePreview(Rect rect) {
        try {
            this.mWrappedEngine.scalePreview(rect);
        } catch (Exception e) {
            Log.i(TAG, "Couldn't call scalePreview method on WallpaperEngine", e);
        }
    }
}
