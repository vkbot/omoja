package com.mega.launcher.wallpaper.database;

import android.database.Cursor;
import com.mega.launcher.wallpaper.bean.Wallpaper;
import com.mega.launcherapi.WallpaperConstant;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: WallpaperDao.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H'J)\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\r\"\u00020\u0005H'¢\u0006\u0002\u0010\u000eJ\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH'J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH'J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H'J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH'J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0012H'J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\t\u001a\u00020\u0003H'J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\t\u001a\u00020\u0003H'J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u0007H'J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u001b"}, d2 = {"Lcom/mega/launcher/wallpaper/database/WallpaperDao;", "", "delete", "", "wallpaper", "Lcom/mega/launcher/wallpaper/bean/Wallpaper;", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "", "deleteAllWithFlags", WallpaperConstant.WALLPAPER_COLUMN_FLAGS, "insert", "", "", "", "([Lcom/mega/launcher/wallpaper/bean/Wallpaper;)Ljava/util/List;", "wallpapers", "queryAll", "queryAllAsCursor", "Landroid/database/Cursor;", "queryAllShow", "queryAllShowAsCursor", "queryAllWithFlags", "queryAllWithoutFlags", "queryByName", WallpaperConstant.WALLPAPER_COLUMN_NAME, "queryByWallpaperId", "update", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WallpaperDao {
    int delete(Wallpaper wallpaper);

    int delete(String wallpaperId);

    int deleteAllWithFlags(int flags);

    List<Long> insert(List<Wallpaper> wallpapers);

    List<Long> insert(Wallpaper... wallpaper);

    List<Wallpaper> queryAll();

    Cursor queryAllAsCursor();

    List<Wallpaper> queryAllShow();

    Cursor queryAllShowAsCursor();

    List<Wallpaper> queryAllWithFlags(int flags);

    List<Wallpaper> queryAllWithoutFlags(int flags);

    Wallpaper queryByName(String name);

    Wallpaper queryByWallpaperId(String wallpaperId);

    int update(Wallpaper wallpaper);
}
