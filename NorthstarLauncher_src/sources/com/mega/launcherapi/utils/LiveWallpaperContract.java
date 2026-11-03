package com.mega.launcherapi.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class LiveWallpaperContract {
    public static final String AUTHORITY = "com.android.launcher3.wallpaperprovider";
    public static final Uri BASE_URI = new Uri.Builder().scheme("content").authority(AUTHORITY).build();
    public static final String KEY_ENABLED = "enabled";
    public static final String KEY_RESULT_CODE = "result_code";
    public static final String KEY_TYPE = "type";
    public static final String KEY_WALLPAPER_NAME = "wallpaper_name";

    @Deprecated
    public static final String METHOD_SET_LIVE_WALLPAPER_ENABLED = "set_live_wallpaper_enabled";
    public static final String METHOD_SET_WALLPAPER_TYPE = "set_wallpaper_type";
    public static final String METHOD_SHOW_LIVE_WALLPAPER = "show_live_wallpaper";
    public static final int RESULT_INVALID_ARGS = -1;
    public static final int RESULT_NOT_EXIST = -2;
    public static final int RESULT_NOT_SUPPORTED = -3;
    public static final int RESULT_SUCCESS = 0;

    public static boolean setWallpaperType(Context context, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_TYPE, i);
        Bundle bundleCall = context.getContentResolver().call(BASE_URI, METHOD_SET_WALLPAPER_TYPE, (String) null, bundle);
        return bundleCall != null && bundleCall.getInt("result_code") == 0;
    }

    public static int getWallpaperType(Context context) {
        int wallpaperType = WallpaperUtils.getWallpaperType(context);
        if (wallpaperType == 0 || wallpaperType == 1 || wallpaperType == 2) {
            return wallpaperType;
        }
        return 1;
    }

    public static boolean showLiveWallpaper(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_WALLPAPER_NAME, str);
        Bundle bundleCall = context.getContentResolver().call(BASE_URI, METHOD_SHOW_LIVE_WALLPAPER, (String) null, bundle);
        return bundleCall != null && bundleCall.getInt("result_code") >= 0;
    }

    public static boolean isLiveWallpaperEnabled(Context context) {
        return WallpaperUtils.isLiveWallpaperActive(context);
    }

    @Deprecated
    public static boolean setLiveWallpaperEnabled(Context context, boolean z) {
        return setWallpaperType(context, z ? 1 : 0);
    }
}
