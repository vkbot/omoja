package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.Themes;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutCachingLogic implements CachingLogic<ShortcutInfo> {
    private static final String TAG = "ShortcutCachingLogic";

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public boolean addToMemCache() {
        return false;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public ComponentName getComponent(ShortcutInfo info) {
        return ShortcutKey.fromInfo(info).componentName;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public UserHandle getUser(ShortcutInfo info) {
        return info.getUserHandle();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getLabel(ShortcutInfo info) {
        return info.getShortLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getDescription(ShortcutInfo object, CharSequence fallback) {
        CharSequence longLabel = object.getLongLabel();
        return TextUtils.isEmpty(longLabel) ? fallback : longLabel;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public BitmapInfo loadIcon(Context context, ShortcutInfo info) {
        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = getIcon(context, info, LauncherAppState.getIDP(context).fillResIconDpi);
            if (icon == null) {
                BitmapInfo bitmapInfo = BitmapInfo.LOW_RES_INFO;
                if (launcherIconsObtain != null) {
                    launcherIconsObtain.close();
                }
                return bitmapInfo;
            }
            BitmapInfo bitmapInfo2 = new BitmapInfo(launcherIconsObtain.createScaledBitmapWithoutShadow(icon, 0), Themes.getColorAccent(context));
            if (launcherIconsObtain != null) {
                launcherIconsObtain.close();
            }
            return bitmapInfo2;
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

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public long getLastUpdatedTime(ShortcutInfo shortcutInfo, PackageInfo info) {
        if (shortcutInfo == null || !FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) {
            return info.lastUpdateTime;
        }
        return Math.max(shortcutInfo.getLastChangedTimestamp(), info.lastUpdateTime);
    }

    public static Drawable getIcon(Context context, ShortcutInfo shortcutInfo, int density) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(shortcutInfo, density);
        } catch (IllegalStateException | SecurityException e) {
            Log.e(TAG, "Failed to get shortcut icon", e);
            return null;
        }
    }
}
