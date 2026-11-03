package com.mega.launcherapi.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes2.dex */
public class WallpaperUtils {
    public static final float BLUR_FRAME_RATE = 0.0f;
    public static final Map<Integer, String> DIRS;
    public static final String KEY_LANDMARK_WALLPAPER_NUMBER = "landmark_wallpaper_number";
    public static final String KEY_USER_LIVE_WALLPAPER = "user_live_wallpaper";
    public static final String KEY_USER_WALLPAPER = "user_wallpaper";
    public static final String KEY_USER_WALLPAPER_ID = "user_wallpaper_id";
    public static final String KEY_USER_WALLPAPER_TYPE = "user_wallpaper_type";
    public static final String LANDMARK_CENTRALSOUTH_DIR = "/vendor/etc/landmark_wallpaper/centralsouth/";
    public static final String LANDMARK_EAST_DIR = "/vendor/etc/landmark_wallpaper/east/";
    public static final String LANDMARK_NORTHEAST_DIR = "/vendor/etc/landmark_wallpaper/northeast/";
    public static final String LANDMARK_NORTHWEST_DIR = "/vendor/etc/landmark_wallpaper/northwest/";
    public static final String LANDMARK_NORTH_DIR = "/vendor/etc/landmark_wallpaper/north/";
    public static final String LANDMARK_SOUTHWEST_DIR = "/vendor/etc/landmark_wallpaper/southwest/";
    public static final int LANDMARK_WALLPAPER_CENTRALSOUTH = 4;
    public static final int LANDMARK_WALLPAPER_EAST = 3;
    public static final int LANDMARK_WALLPAPER_NORTH = 1;
    public static final int LANDMARK_WALLPAPER_NORTHEAST = 0;
    public static final int LANDMARK_WALLPAPER_NORTHWEST = 2;
    public static final int LANDMARK_WALLPAPER_SOUTHWEST = 5;
    public static final String LAUNCHER_SYSTEM_RESOURCE_PREFIX = "launcher_wallpaper";
    public static final String LIVE_WALLPAPER_DIR = "/vendor/etc/live_wallpaper";
    public static final String LIVE_WALLPAPER_DIR_NIGHT = "/vendor/etc/live_wallpaper/night";
    public static final int MAX_BITMAP_SIZE = 20;
    public static final int SCREEN_HEIGHT = 1440;
    public static final int SCREEN_WIDTH = 2560;
    private static final String TAG = "WallpaperUtils";
    public static final int TYPE_3D = 3;
    public static final int TYPE_LANDMARK = 2;
    public static final int TYPE_LIVE = 1;
    public static final int TYPE_STATIC = 0;
    public static final String WALLPAPER_DIR = "/sdcard/Wallpapers";

    public static boolean realtimeBlur() {
        return false;
    }

    static {
        HashMap map = new HashMap();
        DIRS = map;
        map.put(0, LANDMARK_NORTHEAST_DIR);
        map.put(1, LANDMARK_NORTH_DIR);
        map.put(2, LANDMARK_NORTHWEST_DIR);
        map.put(3, LANDMARK_EAST_DIR);
        map.put(4, LANDMARK_CENTRALSOUTH_DIR);
        map.put(5, LANDMARK_SOUTHWEST_DIR);
    }

    public static String[] getAllDefaultWallpapers(Context context) {
        LauncherWallpapersParser.INSTANCE.parse(context);
        return (String[]) LauncherWallpapersParser.INSTANCE.getItems().stream().filter(new Predicate() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Item) obj).getVisible();
            }
        }).map(new WallpaperUtils$$ExternalSyntheticLambda3()).toArray(new IntFunction() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda7
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return WallpaperUtils.lambda$getAllDefaultWallpapers$0(i);
            }
        });
    }

    static /* synthetic */ String[] lambda$getAllDefaultWallpapers$0(int i) {
        return new String[i];
    }

    public static String[] getInvisibleDefaultWallpapers(Context context) {
        LauncherWallpapersParser.INSTANCE.parse(context);
        return (String[]) LauncherWallpapersParser.INSTANCE.getItems().stream().filter(new Predicate() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WallpaperUtils.lambda$getInvisibleDefaultWallpapers$1((Item) obj);
            }
        }).map(new WallpaperUtils$$ExternalSyntheticLambda3()).toArray(new IntFunction() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda4
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return WallpaperUtils.lambda$getInvisibleDefaultWallpapers$2(i);
            }
        });
    }

    static /* synthetic */ boolean lambda$getInvisibleDefaultWallpapers$1(Item item) {
        return !item.getVisible();
    }

    static /* synthetic */ String[] lambda$getInvisibleDefaultWallpapers$2(int i) {
        return new String[i];
    }

    public static String getDefaultWallpaper(Context context) {
        LauncherWallpapersParser.INSTANCE.parse(context);
        return LauncherWallpapersParser.INSTANCE.getDefaultItem();
    }

    public static List<Pair<File, File>> getDefaultLiveWallpapers() {
        File file = new File(LIVE_WALLPAPER_DIR);
        if (!file.isDirectory()) {
            return new ArrayList();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return new ArrayList();
        }
        return (List) Arrays.stream(fileArrListFiles).filter(new Predicate() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WallpaperUtils.lambda$getDefaultLiveWallpapers$3((File) obj);
            }
        }).map(new Function() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return WallpaperUtils.lambda$getDefaultLiveWallpapers$4((File) obj);
            }
        }).collect(Collectors.toList());
    }

    static /* synthetic */ boolean lambda$getDefaultLiveWallpapers$3(File file) {
        return file.isFile() && file.getName().endsWith(".pag");
    }

    static /* synthetic */ Pair lambda$getDefaultLiveWallpapers$4(File file) {
        return new Pair(file, createNightLiveWallpaperFile(file));
    }

    public static File createNightLiveWallpaperFile(File file) {
        File file2 = new File(LIVE_WALLPAPER_DIR_NIGHT, file.getName());
        if (file2.isFile()) {
            return file2;
        }
        return null;
    }

    public static boolean isLiveWallpaperActive(Context context) {
        return getWallpaperType(context) == 1;
    }

    public static int getWallpaperType(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), KEY_USER_WALLPAPER_TYPE, !Utils.isLiveWallpaperDisabled() ? 1 : 0);
    }

    public static void setCurrentWallpaperType(Context context, int i) {
        Settings.Global.putInt(context.getContentResolver(), KEY_USER_WALLPAPER_TYPE, i);
    }

    public static String getCurrentWallpaperName(Context context) {
        return Settings.Global.getString(context.getContentResolver(), KEY_USER_WALLPAPER);
    }

    public static void setCurrentWallpaperName(Context context, String str) {
        Settings.Global.putString(context.getContentResolver(), KEY_USER_WALLPAPER, str);
    }

    public static String getCurrentWallpaperId(Context context) {
        return Settings.Global.getString(context.getContentResolver(), KEY_USER_WALLPAPER_ID);
    }

    public static void setCurrentWallpaperId(Context context, String str) {
        Settings.Global.putString(context.getContentResolver(), KEY_USER_WALLPAPER_ID, str);
    }

    public static String getCurrentLiveWallpaperName(Context context) {
        return Settings.Global.getString(context.getContentResolver(), KEY_USER_LIVE_WALLPAPER);
    }

    public static void setCurrentLiveWallpaperName(Context context, String str) {
        Settings.Global.putString(context.getContentResolver(), KEY_USER_LIVE_WALLPAPER, str);
    }

    public static int getLandmarkWallpaperNumber(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), KEY_LANDMARK_WALLPAPER_NUMBER, 0);
    }

    public static void setLandmarkWallpaperNumber(Context context, int i) {
        Settings.Global.putInt(context.getContentResolver(), KEY_LANDMARK_WALLPAPER_NUMBER, i);
    }

    public static List<File> getLandmarkWallpapers(Context context) {
        return getLandmarkWallpapers(getLandmarkWallpaperNumber(context));
    }

    public static String getLandmarkWallpapersDir(Context context) {
        return DIRS.get(Integer.valueOf(getLandmarkWallpaperNumber(context)));
    }

    public static List<File> getLandmarkWallpapers(int i) {
        File[] fileArrListFiles = new File(DIRS.get(Integer.valueOf(i))).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            Log.d(TAG, "getLandmarkWallpapers: number=" + i + ". Empty!");
            return new ArrayList();
        }
        Log.d(TAG, "getLandmarkWallpapers: number=" + i + " " + fileArrListFiles.length);
        Arrays.sort(fileArrListFiles, Comparator.comparing(new Function() { // from class: com.mega.launcherapi.utils.WallpaperUtils$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((File) obj).getName();
            }
        }));
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fileArrListFiles);
        return arrayList;
    }

    public static void setCurrentLandmarkWallpaper(Context context, int i, String str) {
        Log.d(TAG, "setCurrentLandmarkWallpaper: num=" + i + " filename=" + str);
        Settings.Global.putString(context.getContentResolver(), "region_wallpaper_name", str);
    }

    public static String getCurrentLandmarkWallpaper(Context context) {
        return Settings.Global.getString(context.getContentResolver(), "region_wallpaper_name");
    }

    private static int getIdentifier(Context context, String str) {
        return context.getResources().getIdentifier(str, "mipmap", context.getPackageName());
    }

    public static int getBitmapRealSize(Bitmap bitmap) {
        return (bitmap.getByteCount() / 1024) / 1024;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008f  */
    public static Bitmap ratioCompress(Bitmap bitmap) {
        int i;
        double dCeil;
        int bitmapRealSize = getBitmapRealSize(bitmap);
        Log.d(TAG, "ratioCompress: original image size=" + bitmapRealSize + "MB");
        if (bitmapRealSize <= 20) {
            return bitmap;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inJustDecodeBounds = false;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width > 2560 || height > 1440) {
            Log.d(TAG, "ratioCompress: w = [" + width + "], h = [" + height + "].");
            if (width > height && width > 2560) {
                dCeil = Math.ceil(((double) width) / 2560.0d);
            } else {
                if (width >= height || height <= 1440) {
                    i = 1;
                } else {
                    dCeil = Math.ceil(((double) height) / 1440.0d);
                }
                options.inSampleSize = i > 0 ? i : 1;
            }
            i = (int) dCeil;
            options.inSampleSize = i > 0 ? i : 1;
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, options);
        Log.d(TAG, "After ratioCompress: image size=" + getBitmapRealSize(bitmapDecodeStream) + "MB");
        return bitmapDecodeStream;
    }

    public static Bitmap clipBitmapCenterCrop(Bitmap bitmap, int i, int i2) {
        return (bitmap.getWidth() > i || bitmap.getHeight() > i2) ? fixDimension(fixRatio(bitmap, i, i2), i, i2) : bitmap;
    }

    public static Bitmap fixRatio(Bitmap bitmap, int i, int i2) {
        int i3;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = width;
        float f2 = height;
        float f3 = (f * 1.0f) / f2;
        float f4 = (i * 1.0f) / i2;
        if (Float.compare(f3, f4) == 0) {
            return bitmap;
        }
        int i4 = 0;
        if (f4 > f3) {
            int i5 = (int) (f / f4);
            int i6 = (height - i5) / 2;
            height = i5;
            i3 = i6;
        } else if (f4 < f3) {
            int i7 = (int) (f2 * f4);
            int i8 = (width - i7) / 2;
            width = i7;
            i3 = 0;
            i4 = i8;
        } else {
            i3 = 0;
        }
        return Bitmap.createBitmap(bitmap, i4, i3, width, height);
    }

    public static Bitmap fixDimension(Bitmap bitmap, int i, int i2) {
        return (bitmap.getWidth() > i || bitmap.getHeight() > i2) ? Bitmap.createScaledBitmap(bitmap, i, i2, false) : bitmap;
    }
}
