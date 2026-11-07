package com.android.server.wallpaper;

import android.app.IWallpaperManager;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
interface IWallpaperManagerService extends IWallpaperManager, IBinder {
    void onBootPhase(int i);

    void onUnlockUser(int i);
}
