package com.mega.launcher.wallpaper.bean;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.LauncherSettings;
import com.mega.launcher.wallpaper.UiModeUtils;
import com.mega.launcher.wallpaper.WallpaperRepository;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import java.io.File;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpaperInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001+BA\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fB\u0017\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000b¢\u0006\u0002\u0010\u0010J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0011\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000bJ\u001a\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&J\b\u0010'\u001a\u00020\tH\u0016J\b\u0010(\u001a\u00020\u0003H\u0016J\u000e\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000bR\u0014\u0010\u0011\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u000f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0013R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006,"}, d2 = {"Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "", WallpaperConstant.WALLPAPER_COLUMN_NAME, "dayPath", "nightPath", "from", LiveWallpaperContract.KEY_TYPE, "", "isLive", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V", "wallpaper", "Lcom/mega/launcher/wallpaper/bean/Wallpaper;", "isLiveWallpaper", "(Lcom/mega/launcher/wallpaper/bean/Wallpaper;Z)V", "adaptivePath", "getAdaptivePath", "()Ljava/lang/String;", "getDayPath", "isFileExist", "()Z", "getNightPath", "getWallpaper", "()Lcom/mega/launcher/wallpaper/bean/Wallpaper;", "clearCache", "", "compareTo", "other", "equals", "", "isDarkTheme", "getBitmap", "Landroid/graphics/Bitmap;", "context", "Landroid/content/Context;", LauncherSettings.Favorites.OPTIONS, "Landroid/graphics/BitmapFactory$Options;", "hashCode", "toString", "updateHideStatus", WallpaperConstant.WALLPAPER_COLUMN_HIDE, "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperInfo implements Comparable<WallpaperInfo> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String FROM_LAUNCHER = "com.android.launcher3";
    public static final int MAX_BITMAP_CACHE_SIZE = 5;
    private static final String TAG = "WallpaperInfo";
    public static final int TYPE_FILE = 1;
    public static final int TYPE_RESOURCE = 0;
    private final boolean isLiveWallpaper;
    private final Wallpaper wallpaper;

    @JvmStatic
    public static final WallpaperInfo newLiveWallpaper(File file, File file2) {
        return INSTANCE.newLiveWallpaper(file, file2);
    }

    @JvmStatic
    public static final WallpaperInfo newStaticDefaultWallpaper(String str) {
        return INSTANCE.newStaticDefaultWallpaper(str);
    }

    @JvmStatic
    public static final WallpaperInfo newStaticWallpaper(String str, String str2, String str3, String str4, String str5, int i) {
        return INSTANCE.newStaticWallpaper(str, str2, str3, str4, str5, i);
    }

    public final Wallpaper getWallpaper() {
        return this.wallpaper;
    }

    /* JADX INFO: renamed from: isLiveWallpaper, reason: from getter */
    public final boolean getIsLiveWallpaper() {
        return this.isLiveWallpaper;
    }

    public WallpaperInfo(Wallpaper wallpaper, boolean z) {
        Intrinsics.checkNotNullParameter(wallpaper, "wallpaper");
        this.wallpaper = wallpaper;
        this.isLiveWallpaper = z;
    }

    public /* synthetic */ WallpaperInfo(Wallpaper wallpaper, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(wallpaper, (i & 2) != 0 ? false : z);
    }

    public final String getDayPath() {
        String dayPath = this.wallpaper.getDayPath();
        Intrinsics.checkNotNull(dayPath);
        return dayPath;
    }

    public final String getNightPath() {
        return this.wallpaper.getNightPath();
    }

    private final String getAdaptivePath() {
        return getAdaptivePath(UiModeUtils.isNightMode(LauncherApplication.INSTANCE.get()));
    }

    public final boolean isFileExist() {
        if (this.wallpaper.getType() != 1) {
            return true;
        }
        String adaptivePath = getAdaptivePath();
        MLog.d(TAG, "isFileExist: path=" + adaptivePath + ", exist=" + new File(adaptivePath).exists());
        return new File(adaptivePath).exists();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WallpaperInfo(String wallpaperId, String name, String dayPath, String str, String from, int i, boolean z) {
        this(INSTANCE.generateWallpaper(wallpaperId, name, dayPath, str, from, i), z);
        Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(dayPath, "dayPath");
        Intrinsics.checkNotNullParameter(from, "from");
    }

    public final String getAdaptivePath(boolean isDarkTheme) {
        String dayPath = getDayPath();
        String nightPath = getNightPath();
        return (!isDarkTheme || nightPath == null || nightPath.length() <= 0) ? dayPath : nightPath;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        return Intrinsics.areEqual(this.wallpaper.getName(), ((WallpaperInfo) other).wallpaper.getName());
    }

    public int hashCode() {
        return Objects.hash(this.wallpaper.getName());
    }

    public String toString() {
        return "WallpaperInfo{name='" + this.wallpaper.getName() + "', id='" + this.wallpaper.getId() + "', wallpaperId='" + this.wallpaper.getWallpaperId() + "', type=" + this.wallpaper.getType() + ", dayPath=" + this.wallpaper.getDayPath() + ", nightPath=" + this.wallpaper.getNightPath() + ", from=" + this.wallpaper.getFrom() + ", hide=" + this.wallpaper.getHide() + ", rank=" + this.wallpaper.getRank() + ", flags=" + this.wallpaper.getFlags() + '}';
    }

    public final void clearCache() {
        MLog.d(TAG, "clearCache: ");
    }

    public final Bitmap getBitmap(Context context, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(context, "context");
        return WallpaperRepository.INSTANCE.getInstance(context).getBitmap(context, this, options);
    }

    public final boolean updateHideStatus(boolean hide) {
        boolean zIsHide = this.wallpaper.isHide();
        this.wallpaper.setHide(hide ? 1 : 0);
        return zIsHide != this.wallpaper.isHide();
    }

    @Override // java.lang.Comparable
    public int compareTo(WallpaperInfo other) {
        int type;
        int type2;
        Intrinsics.checkNotNullParameter(other, "other");
        if (this.wallpaper.getType() == other.wallpaper.getType()) {
            if (this.wallpaper.getType() == 0) {
                String wallpaperId = this.wallpaper.getWallpaperId();
                Intrinsics.checkNotNull(wallpaperId);
                String wallpaperId2 = this.wallpaper.getWallpaperId();
                Intrinsics.checkNotNull(wallpaperId2);
                type = wallpaperId.charAt(wallpaperId2.length() - 1);
                String wallpaperId3 = other.wallpaper.getWallpaperId();
                Intrinsics.checkNotNull(wallpaperId3);
                String wallpaperId4 = other.wallpaper.getWallpaperId();
                Intrinsics.checkNotNull(wallpaperId4);
                type2 = wallpaperId3.charAt(wallpaperId4.length() - 1);
            } else {
                if (this.wallpaper.getType() != 1) {
                    return 0;
                }
                type = (int) this.wallpaper.getId();
                type2 = (int) other.wallpaper.getId();
            }
        } else {
            type = this.wallpaper.getType();
            type2 = other.wallpaper.getType();
        }
        return type - type2;
    }

    /* JADX INFO: compiled from: WallpaperInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0004H\u0007J:\u0010\u0018\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/mega/launcher/wallpaper/bean/WallpaperInfo$Companion;", "", "()V", "FROM_LAUNCHER", "", "MAX_BITMAP_CACHE_SIZE", "", "TAG", "TYPE_FILE", "TYPE_RESOURCE", "generateWallpaper", "Lcom/mega/launcher/wallpaper/bean/Wallpaper;", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "wallpaperName", "dayPath", "nightPath", "fromPackage", LiveWallpaperContract.KEY_TYPE, "newLiveWallpaper", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "day", "Ljava/io/File;", "night", "newStaticDefaultWallpaper", "newStaticWallpaper", WallpaperConstant.WALLPAPER_COLUMN_NAME, "from", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WallpaperInfo newStaticDefaultWallpaper(String wallpaperName) {
            Intrinsics.checkNotNullParameter(wallpaperName, "wallpaperName");
            return newStaticWallpaper(wallpaperName, wallpaperName, wallpaperName, wallpaperName, "com.android.launcher3", 0);
        }

        @JvmStatic
        public final WallpaperInfo newStaticWallpaper(String wallpaperId, String name, String dayPath, String nightPath, String from, int type) {
            Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(dayPath, "dayPath");
            Intrinsics.checkNotNullParameter(from, "from");
            return new WallpaperInfo(wallpaperId, name, dayPath, nightPath, from, type, false);
        }

        public final Wallpaper generateWallpaper(String wallpaperId, String wallpaperName, String dayPath, String nightPath, String fromPackage, int type) {
            Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
            Intrinsics.checkNotNullParameter(wallpaperName, "wallpaperName");
            Intrinsics.checkNotNullParameter(dayPath, "dayPath");
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            Wallpaper wallpaper = new Wallpaper();
            wallpaper.setWallpaperId(wallpaperId);
            wallpaper.setName(wallpaperName);
            wallpaper.setDayPath(dayPath);
            wallpaper.setNightPath(nightPath);
            wallpaper.setType(type);
            wallpaper.setFrom(fromPackage);
            return wallpaper;
        }

        @JvmStatic
        public final WallpaperInfo newLiveWallpaper(File day, File night) {
            Intrinsics.checkNotNullParameter(day, "day");
            String name = day.getName();
            String dayPath = day.getPath();
            String path = night != null ? night.getPath() : null;
            Intrinsics.checkNotNullExpressionValue(name, "name");
            Intrinsics.checkNotNullExpressionValue(dayPath, "dayPath");
            return new WallpaperInfo(name, name, dayPath, path, "built-in", 1, true);
        }
    }
}
