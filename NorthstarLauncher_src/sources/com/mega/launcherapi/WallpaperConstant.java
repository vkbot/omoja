package com.mega.launcherapi;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class WallpaperConstant {
    public static final int CODE_DATABASE_FAIL = 3;
    public static final int CODE_DATABASE_UPDATE_FAIL = 4;
    public static final int CODE_FAIL = 1;
    public static final int CODE_NOT_EXIST = 2;
    public static final int CODE_ONLY_ONE = 5;
    public static final int CODE_SUCCESS = 0;
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_FILE = 1;
    public static final String WALLPAPER_COLUMN_FLAGS = "flags";
    public static final String WALLPAPER_COLUMN_FROM = "from";
    public static final String WALLPAPER_COLUMN_HIDE = "hide";
    public static final String WALLPAPER_COLUMN_ID = "id";
    public static final String WALLPAPER_COLUMN_NAME = "name";
    public static final String WALLPAPER_COLUMN_ORIGINAL_ID = "wallpaperId";
    public static final String WALLPAPER_URI = "content://com.android.launcher3.wallpaperprovider/wallpapers";
    public static final String WALLPAPER_URI_ALL = "content://com.android.launcher3.wallpaperprovider/wallpapers/all";
    public static final String WALLPAPER_URI_SHOW = "content://com.android.launcher3.wallpaperprovider/wallpapers/show";

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResultCodeDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface WallpaperSourceTypeDef {
    }
}
