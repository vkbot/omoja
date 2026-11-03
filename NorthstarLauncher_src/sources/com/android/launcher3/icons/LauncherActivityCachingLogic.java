package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.os.UserHandle;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.util.ResourceBasedOverride;

/* JADX INFO: loaded from: classes.dex */
public class LauncherActivityCachingLogic implements CachingLogic<LauncherActivityInfo>, ResourceBasedOverride {
    private static final int ICON_SIZE = 123;
    private static final float ROUND_CORNER = 28.5f;
    private final Paint mPaint = new Paint();
    private final Canvas mCanvas = new Canvas();

    public static LauncherActivityCachingLogic newInstance(Context context) {
        return (LauncherActivityCachingLogic) ResourceBasedOverride.Overrides.getObject(LauncherActivityCachingLogic.class, context, com.android.launcher3.R.string.launcher_activity_logic_class);
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public ComponentName getComponent(LauncherActivityInfo object) {
        return object.getComponentName();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public UserHandle getUser(LauncherActivityInfo object) {
        return object.getUser();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getLabel(LauncherActivityInfo object) {
        return object.getLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public BitmapInfo loadIcon(Context context, LauncherActivityInfo object) {
        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(context);
        try {
            BitmapInfo bitmapInfoUniformSizeAndRoundCorner = uniformSizeAndRoundCorner(launcherIconsObtain.createBadgedIconBitmap(new IconProvider(context).getIcon(object, launcherIconsObtain.mFillResIconDpi), object.getUser(), object.getApplicationInfo().targetSdkVersion));
            if (launcherIconsObtain != null) {
                launcherIconsObtain.close();
            }
            return bitmapInfoUniformSizeAndRoundCorner;
        } catch (Throwable th) {
            if (launcherIconsObtain != null) {
                try {
                    launcherIconsObtain.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private BitmapInfo uniformSizeAndRoundCorner(BitmapInfo bitmapInfo) {
        if (bitmapInfo == null) {
            return null;
        }
        Bitmap bitmap = bitmapInfo.icon;
        if (bitmap == null) {
            return bitmapInfo;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setShader(bitmapShader);
        float f = width;
        float f2 = 123.0f / f;
        float f3 = ROUND_CORNER / f2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(123, 123, bitmap.getConfig());
        synchronized (this.mCanvas) {
            this.mCanvas.setBitmap(bitmapCreateBitmap);
            this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.mCanvas.save();
            this.mCanvas.scale(f2, f2);
            this.mCanvas.drawRoundRect(0.0f, 0.0f, f, height, f3, f3, this.mPaint);
            this.mCanvas.restore();
            this.mPaint.setShader(null);
            this.mCanvas.setBitmap(null);
        }
        return BitmapInfo.of(bitmapCreateBitmap, bitmapInfo.color);
    }
}
