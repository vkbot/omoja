package com.android.launcher3.icons;

import android.content.Context;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.LauncherPreviewRenderer;

/* JADX INFO: loaded from: classes.dex */
public class LauncherIcons extends BaseIconFactory implements AutoCloseable {
    private static LauncherIcons sPool;
    private static int sPoolId;
    private static final Object sPoolSync = new Object();
    private final int mPoolId;
    private LauncherIcons next;

    public static LauncherIcons obtain(Context context) {
        return obtain(context, IconShape.getShape().enableShapeDetection());
    }

    public static LauncherIcons obtain(Context context, boolean shapeDetection) {
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            return ((LauncherPreviewRenderer.PreviewContext) context).newLauncherIcons(context, shapeDetection);
        }
        synchronized (sPoolSync) {
            LauncherIcons launcherIcons = sPool;
            if (launcherIcons != null) {
                sPool = launcherIcons.next;
                launcherIcons.next = null;
                return launcherIcons;
            }
            int i = sPoolId;
            InvariantDeviceProfile invariantDeviceProfileM166x39265fe7 = InvariantDeviceProfile.INSTANCE.m166x39265fe7(context);
            return new LauncherIcons(context, invariantDeviceProfileM166x39265fe7.fillResIconDpi, invariantDeviceProfileM166x39265fe7.iconBitmapSize, i, shapeDetection);
        }
    }

    public static void clearPool() {
        synchronized (sPoolSync) {
            sPool = null;
            sPoolId++;
        }
    }

    protected LauncherIcons(Context context, int fillResIconDpi, int iconBitmapSize, int poolId, boolean shapeDetection) {
        super(context, fillResIconDpi, iconBitmapSize, shapeDetection);
        this.mPoolId = poolId;
    }

    public void recycle() {
        synchronized (sPoolSync) {
            if (sPoolId != this.mPoolId) {
                return;
            }
            clear();
            this.next = sPool;
            sPool = this;
        }
    }

    @Override // com.android.launcher3.icons.BaseIconFactory, java.lang.AutoCloseable
    public void close() {
        recycle();
    }
}
