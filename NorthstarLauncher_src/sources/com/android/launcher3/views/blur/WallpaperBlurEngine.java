package com.android.launcher3.views.blur;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.util.BitmapUtils;
import com.android.launcher3.util.SerialExecutor;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperBlurEngine implements WallpaperBitmapProvider, WallpaperBitmapProvider.OnWallpaperChangedListener {
    public static final float DEFAULT_BLUR_RADIUS = 25.0f;
    public static final float WALLPAPER_SCALE = 0.125f;
    private volatile RenderScriptBlur mBlurAlgorithm;
    private Bitmap mBlurReuseBitmap;
    private Bitmap mBlurUiBitmap;
    private Bitmap mRawReuseBitmap;
    private final SerialExecutor mSerialExecutor = new SerialExecutor();
    private final List<WallpaperBitmapProvider.OnWallpaperChangedListener> mListeners = new ArrayList();

    @Override // com.android.launcher3.views.blur.WallpaperBitmapProvider
    public Bitmap getWallpaperBitmap() {
        return this.mBlurUiBitmap;
    }

    public WallpaperBlurEngine(Context context) {
    }

    @Override // com.android.launcher3.views.blur.WallpaperBitmapProvider.OnWallpaperChangedListener
    public void onWallpaperChanged(Bitmap newInfo) {
        setWallpaperBitmap(newInfo);
    }

    public void setWallpaperBitmap(Bitmap rawBitmap) {
        blurAsync(rawBitmap);
    }

    private synchronized void blurAsync(Bitmap rawBitmap) {
        if (rawBitmap == null) {
            return;
        }
        this.mRawReuseBitmap = BitmapUtils.createBitmapAndReconfigure(rawBitmap, this.mRawReuseBitmap, true);
        if (WallpaperUtils.realtimeBlur()) {
            BitmapUtils.copyPixels(rawBitmap, this.mRawReuseBitmap);
        } else {
            BitmapUtils.copyPixelsWidthAlpha(rawBitmap, this.mRawReuseBitmap, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED);
        }
        this.mBlurReuseBitmap = BitmapUtils.createBitmapAndReconfigure(rawBitmap, this.mBlurReuseBitmap, true);
        this.mBlurUiBitmap = BitmapUtils.createBitmapAndReconfigure(rawBitmap, this.mBlurUiBitmap, false);
        new BlurTask(this, this.mRawReuseBitmap).executeOnExecutor(this.mSerialExecutor, new Void[0]);
    }

    @Override // com.android.launcher3.views.blur.WallpaperBitmapProvider
    public void addOnWallpaperChangedListener(WallpaperBitmapProvider.OnWallpaperChangedListener listener) {
        this.mListeners.add(listener);
    }

    @Override // com.android.launcher3.views.blur.WallpaperBitmapProvider
    public void removeOnWallpaperChangedListener(WallpaperBitmapProvider.OnWallpaperChangedListener listener) {
        this.mListeners.remove(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBlurredInfo(Bitmap blurred) {
        Iterator<WallpaperBitmapProvider.OnWallpaperChangedListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onWallpaperChanged(blurred);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap doBlur(Bitmap src) {
        if (this.mBlurAlgorithm == null) {
            this.mBlurAlgorithm = new RenderScriptBlur(LauncherApplication.get());
        }
        Bitmap bitmapNewBlurBitmap = this.mBlurAlgorithm.newBlurBitmap(src, this.mBlurReuseBitmap, 25.0f);
        BitmapUtils.copyPixels(bitmapNewBlurBitmap, this.mBlurUiBitmap);
        return bitmapNewBlurBitmap;
    }

    private static class BlurTask extends AsyncTask<Void, Void, Bitmap> {
        private final WeakReference<WallpaperBlurEngine> mEngine;
        private final Bitmap mWallpaperBitmap;

        public BlurTask(WallpaperBlurEngine engine, Bitmap wallpaperBitmap) {
            this.mEngine = new WeakReference<>(engine);
            this.mWallpaperBitmap = wallpaperBitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... unused) {
            WallpaperBlurEngine wallpaperBlurEngine = this.mEngine.get();
            if (wallpaperBlurEngine != null) {
                return wallpaperBlurEngine.doBlur(this.mWallpaperBitmap);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            WallpaperBlurEngine wallpaperBlurEngine = this.mEngine.get();
            if (wallpaperBlurEngine != null) {
                wallpaperBlurEngine.setBlurredInfo(this.mEngine.get().mBlurUiBitmap);
            }
        }
    }
}
