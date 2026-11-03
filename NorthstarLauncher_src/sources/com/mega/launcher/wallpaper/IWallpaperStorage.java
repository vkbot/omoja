package com.mega.launcher.wallpaper;

import android.graphics.Bitmap;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcherapi.WallpaperConstant;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: IWallpaperStorage.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\u0007H&J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0007H&J2\u0010\u0012\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H&J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&J\b\u0010\u0018\u001a\u00020\u0003H&J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0005H&J\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&¨\u0006\u001c"}, d2 = {"Lcom/mega/launcher/wallpaper/IWallpaperStorage;", "", "checkDirExist", "", "getWallpaperInfoWithName", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "wallpaperName", "", "getWallpaperInfoWithWallpaperId", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "getWallpaperListFromDatabase", "", "hideUserWallpapers", "removeDefaultWallpapers", "removeWallpaper", "", "wallpaperInfo", "removeWallpaperFromDatabase", "saveNewWallpaper", "day", "Landroid/graphics/Bitmap;", "night", "from", "saveWallpaperInfoToDatabase", "showDefaultWallpapers", "updateDatabaseId", "info", "updateWallpaperFromDatabase", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface IWallpaperStorage {
    void checkDirExist();

    WallpaperInfo getWallpaperInfoWithName(String wallpaperName);

    WallpaperInfo getWallpaperInfoWithWallpaperId(String wallpaperId);

    List<WallpaperInfo> getWallpaperListFromDatabase();

    void hideUserWallpapers();

    void removeDefaultWallpapers();

    boolean removeWallpaper(WallpaperInfo wallpaperInfo);

    boolean removeWallpaperFromDatabase(WallpaperInfo wallpaperInfo);

    boolean removeWallpaperFromDatabase(String wallpaperId);

    WallpaperInfo saveNewWallpaper(String wallpaperId, Bitmap day, Bitmap night, String wallpaperName, String from) throws IOException;

    boolean saveWallpaperInfoToDatabase(WallpaperInfo wallpaperInfo);

    void showDefaultWallpapers();

    boolean updateDatabaseId(WallpaperInfo info);

    boolean updateWallpaperFromDatabase(WallpaperInfo wallpaperInfo);
}
