package com.mega.launcher.wallpaper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.launcher3.LauncherSettings;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpaperReceiver.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\n"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", LauncherSettings.Favorites.INTENT, "Landroid/content/Intent;", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperReceiver extends BroadcastReceiver {
    private static final String SETTINGS_RESET_DISPLAY = "mega.carsettings.intent.ACTION_RESET_DISPLAY_SETTINGS";
    private static final String TAG = "WallpaperReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        Intrinsics.checkNotNullParameter(context, "context");
        MLog.d(TAG, "onReceive: " + intent);
        if (intent == null || (action = intent.getAction()) == null || !Intrinsics.areEqual(action, SETTINGS_RESET_DISPLAY)) {
            return;
        }
        WallpaperRepository.INSTANCE.getInstance(context).reset("reset_display_settings");
    }
}
