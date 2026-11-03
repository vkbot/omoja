package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.launcher3.LauncherAppState;

/* JADX INFO: loaded from: classes.dex */
public interface ComponentWithLabelAndIcon extends ComponentWithLabel {
    Drawable getFullResIcon(IconCache cache);

    public static class ComponentWithIconCachingLogic extends ComponentWithLabel.ComponentCachingLogic<ComponentWithLabelAndIcon> {
        public ComponentWithIconCachingLogic(Context context, boolean addToMemCache) {
            super(context, addToMemCache);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel.ComponentCachingLogic, com.android.launcher3.icons.cache.CachingLogic
        public BitmapInfo loadIcon(Context context, ComponentWithLabelAndIcon object) {
            Drawable fullResIcon = object.getFullResIcon(LauncherAppState.getInstance(context).getIconCache());
            if (fullResIcon == null) {
                return super.loadIcon(context, object);
            }
            LauncherIcons launcherIconsObtain = LauncherIcons.obtain(context);
            try {
                BitmapInfo bitmapInfoCreateBadgedIconBitmap = launcherIconsObtain.createBadgedIconBitmap(fullResIcon, object.getUser(), 0);
                if (launcherIconsObtain != null) {
                    launcherIconsObtain.close();
                }
                return bitmapInfoCreateBadgedIconBitmap;
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
    }
}
