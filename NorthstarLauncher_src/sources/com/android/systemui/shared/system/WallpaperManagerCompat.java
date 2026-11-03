package com.android.systemui.shared.system;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperManagerCompat {
    private final WallpaperManager mWallpaperManager;

    public WallpaperManagerCompat(Context context) {
        this.mWallpaperManager = (WallpaperManager) context.getSystemService(WallpaperManager.class);
    }

    public void setWallpaperZoomOut(IBinder iBinder, float f) {
        this.mWallpaperManager.setWallpaperZoomOut(iBinder, f);
    }

    public static float getWallpaperZoomOutMaxScale(Context context) {
        return context.getResources().getFloat(Resources.getSystem().getIdentifier("config_wallpaperMaxScale", "dimen", "android"));
    }
}
