package com.mega.launcher.wallpaper;

import android.content.Context;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mega.launcher.wallpaper.bean.Wallpaper;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcher.wallpaper.database.WallpaperDao;
import com.mega.launcher.wallpaper.database.WallpaperDatabase;
import com.mega.launcherapi.WallpaperConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpaperStorage.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 )2\u00020\u0001:\u0001)B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u0010\n\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\bH\u0016J\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0015H\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015H\u0016J\b\u0010\u0018\u001a\u00020\fH\u0016J\b\u0010\u0019\u001a\u00020\fH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\bH\u0016J2\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0016J\u0010\u0010#\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016J\u0014\u0010$\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015J\b\u0010%\u001a\u00020\fH\u0016J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u0011H\u0016J\u0010\u0010(\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/mega/launcher/wallpaper/WallpaperStorage;", "Lcom/mega/launcher/wallpaper/IWallpaperStorage;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "wallpaperDatabase", "Lcom/mega/launcher/wallpaper/database/WallpaperDatabase;", "buildDayPath", "", "wallpaperName", "buildNightPath", "checkDirExist", "", "ensureFilePath", "wallpaper", "Lcom/mega/launcher/wallpaper/bean/Wallpaper;", "getWallpaperInfoWithName", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "getWallpaperInfoWithWallpaperId", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "getWallpaperInfos", "", "wallpapers", "getWallpaperListFromDatabase", "hideUserWallpapers", "removeDefaultWallpapers", "removeWallpaper", "", "wallpaperInfo", "removeWallpaperFromDatabase", "saveNewWallpaper", "day", "Landroid/graphics/Bitmap;", "night", "from", "saveWallpaperInfoToDatabase", "saveWallpapersToDatabase", "showDefaultWallpapers", "updateDatabaseId", "info", "updateWallpaperFromDatabase", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperStorage implements IWallpaperStorage {
    private static final String DEFAULT_DAY_WALLPAPER = "/wallpaper_day/";
    private static final String DIR_DAY_WALLPAPER = "/wallpaper_day/";
    private static final String DIR_NIGHT_WALLPAPER = "/wallpaper_night/";
    private static final String TAG = "WallpaperStorage";
    private Context context;
    private WallpaperDatabase wallpaperDatabase;

    public WallpaperStorage(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.wallpaperDatabase = WallpaperDatabase.INSTANCE.getDatabase(this.context);
    }

    private final void ensureFilePath() {
        Iterator<Wallpaper> it = this.wallpaperDatabase.wallpaperDao().queryAll().iterator();
        while (it.hasNext()) {
            ensureFilePath(it.next());
        }
    }

    private final void ensureFilePath(Wallpaper wallpaper) {
        if (TextUtils.isEmpty(wallpaper.getDayPath())) {
            String name = wallpaper.getName();
            int type = wallpaper.getType();
            boolean z = true;
            String filePath = null;
            if (type != 0) {
                if (type != 1) {
                    name = null;
                } else {
                    String filePath2 = WallpaperUtilities.getFilePath(this.context, "/wallpaper_day/", name);
                    filePath = WallpaperUtilities.getFilePath(this.context, DIR_NIGHT_WALLPAPER, name);
                    name = filePath2;
                }
            }
            if (name != null) {
                if (Intrinsics.areEqual(wallpaper.getDayPath(), name)) {
                    z = false;
                } else {
                    wallpaper.setDayPath(name);
                }
                if (!Intrinsics.areEqual(wallpaper.getNightPath(), filePath)) {
                    wallpaper.setNightPath(filePath);
                } else if (!z) {
                    return;
                }
                this.wallpaperDatabase.wallpaperDao().update(wallpaper);
            }
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public void checkDirExist() {
        ensureFilePath();
        boolean zDirIsExist = WallpaperUtilities.dirIsExist(this.context, "/wallpaper_day/");
        boolean zDirIsExist2 = WallpaperUtilities.dirIsExist(this.context, DIR_NIGHT_WALLPAPER);
        if (!zDirIsExist) {
            WallpaperUtilities.createDir(this.context, "/wallpaper_day/");
        }
        if (zDirIsExist2) {
            return;
        }
        WallpaperUtilities.createDir(this.context, DIR_NIGHT_WALLPAPER);
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public WallpaperInfo saveNewWallpaper(String wallpaperId, Bitmap day, Bitmap night, String wallpaperName, String from) throws IOException {
        String strBuildNightPath;
        Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
        Intrinsics.checkNotNullParameter(day, "day");
        Intrinsics.checkNotNullParameter(wallpaperName, "wallpaperName");
        Intrinsics.checkNotNullParameter(from, "from");
        String strBuildDayPath = buildDayPath(wallpaperName);
        WallpaperUtilities.saveWallpaper(strBuildDayPath, day);
        if (night != null) {
            strBuildNightPath = buildNightPath(wallpaperName);
            WallpaperUtilities.saveWallpaper(strBuildNightPath, night);
        } else {
            strBuildNightPath = null;
        }
        return WallpaperInfo.INSTANCE.newStaticWallpaper(wallpaperId, wallpaperName, strBuildDayPath, strBuildNightPath, from, 1);
    }

    public final String buildDayPath(String wallpaperName) {
        String filePath = WallpaperUtilities.getFilePath(this.context, "/wallpaper_day/", wallpaperName);
        Intrinsics.checkNotNullExpressionValue(filePath, "getFilePath(context, DIR…WALLPAPER, wallpaperName)");
        return filePath;
    }

    public final String buildNightPath(String wallpaperName) {
        String filePath = WallpaperUtilities.getFilePath(this.context, DIR_NIGHT_WALLPAPER, wallpaperName);
        Intrinsics.checkNotNullExpressionValue(filePath, "getFilePath(context, DIR…WALLPAPER, wallpaperName)");
        return filePath;
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean removeWallpaper(WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        String filePath = WallpaperUtilities.getFilePath(this.context, "/wallpaper_day/", wallpaperInfo.getWallpaper().getName());
        Intrinsics.checkNotNullExpressionValue(filePath, "getFilePath(\n           ….wallpaper.name\n        )");
        String filePath2 = WallpaperUtilities.getFilePath(this.context, "/wallpaper_day/", wallpaperInfo.getWallpaper().getName());
        Intrinsics.checkNotNullExpressionValue(filePath2, "getFilePath(\n           ….wallpaper.name\n        )");
        return WallpaperUtilities.deleteFile(filePath) && WallpaperUtilities.deleteFile(filePath2);
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public List<WallpaperInfo> getWallpaperListFromDatabase() {
        try {
            List<Wallpaper> listQueryAllShow = this.wallpaperDatabase.wallpaperDao().queryAllShow();
            MLog.d(TAG, "getWallpaperListFromDatabase: wallpapers=" + listQueryAllShow.size());
            return getWallpaperInfos(listQueryAllShow);
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }

    private final List<WallpaperInfo> getWallpaperInfos(List<Wallpaper> wallpapers) {
        ArrayList arrayList = new ArrayList();
        for (Wallpaper wallpaper : wallpapers) {
            WallpaperInfo wallpaperInfo = new WallpaperInfo(wallpaper, false);
            MLog.d(TAG, "getWallpaperInfos: wallpapers=" + wallpapers);
            if (wallpaperInfo.isFileExist()) {
                MLog.d(TAG, "getWallpaperInfos: wallpaperInfo=" + wallpaperInfo);
                arrayList.add(wallpaperInfo);
            } else {
                WallpaperInfo wallpaperInfo2 = new WallpaperInfo(wallpaper, false);
                if (wallpaperInfo2.isFileExist()) {
                    MLog.d(TAG, "getWallpaperInfos: defaultWallpaperInfo=" + wallpaperInfo2);
                    arrayList.add(wallpaperInfo2);
                } else {
                    MLog.e(TAG, "getWallpaperInfos: wallpaper is not exist, wallpaper=" + wallpaper);
                    removeWallpaperFromDatabase(wallpaperInfo);
                }
            }
        }
        return arrayList;
    }

    public final boolean saveWallpapersToDatabase(List<WallpaperInfo> wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        try {
            Stream<WallpaperInfo> stream = wallpaperInfo.stream();
            final WallpaperStorage$saveWallpapersToDatabase$collect$1 wallpaperStorage$saveWallpapersToDatabase$collect$1 = new PropertyReference1Impl() { // from class: com.mega.launcher.wallpaper.WallpaperStorage$saveWallpapersToDatabase$collect$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return ((WallpaperInfo) obj).getWallpaper();
                }
            };
            List<Wallpaper> collect = (List) stream.map(new Function() { // from class: com.mega.launcher.wallpaper.WallpaperStorage$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return WallpaperStorage.saveWallpapersToDatabase$lambda$0(wallpaperStorage$saveWallpapersToDatabase$collect$1, obj);
                }
            }).collect(Collectors.toList());
            WallpaperDao wallpaperDao = this.wallpaperDatabase.wallpaperDao();
            Intrinsics.checkNotNullExpressionValue(collect, "collect");
            List<Long> listInsert = wallpaperDao.insert(collect);
            MLog.d(TAG, "saveWallpapersToDatabase: insert=" + listInsert);
            List<Long> list = listInsert;
            return !(list == null || list.isEmpty());
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Wallpaper saveWallpapersToDatabase$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Wallpaper) tmp0.invoke(obj);
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean saveWallpaperInfoToDatabase(WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        try {
            List<Long> listInsert = this.wallpaperDatabase.wallpaperDao().insert(wallpaperInfo.getWallpaper());
            MLog.d(TAG, "saveWallpaperInfoToDatabase: insert=" + listInsert);
            List<Long> list = listInsert;
            return !(list == null || list.isEmpty());
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean removeWallpaperFromDatabase(WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        try {
            int iDelete = this.wallpaperDatabase.wallpaperDao().delete(wallpaperInfo.getWallpaper());
            MLog.d(TAG, "removeWallpaperInfoFromDatabase: wallpaperInfo=" + wallpaperInfo + ", delete=" + iDelete);
            return iDelete > 0;
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean removeWallpaperFromDatabase(String wallpaperId) {
        Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
        if (TextUtils.isEmpty(wallpaperId)) {
            try {
                int iDelete = this.wallpaperDatabase.wallpaperDao().delete(wallpaperId);
                MLog.d(TAG, "removeWallpaperInfoFromDatabase() wallpaperId=" + wallpaperId);
                return iDelete > 0;
            } catch (SQLiteDiskIOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public void removeDefaultWallpapers() {
        MLog.d(TAG, "removeDefaultWallpapers: count=" + this.wallpaperDatabase.wallpaperDao().deleteAllWithFlags(1));
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public void showDefaultWallpapers() {
        for (Wallpaper wallpaper : this.wallpaperDatabase.wallpaperDao().queryAllWithFlags(1)) {
            if (wallpaper.isHide() || wallpaper.getType() != 0) {
                wallpaper.setHide(0);
                if (wallpaper.getType() != 0) {
                    WallpaperUtilities.deleteFileUnchecked(wallpaper.getDayPath());
                    WallpaperUtilities.deleteFileUnchecked(wallpaper.getNightPath());
                    wallpaper.setType(0);
                    wallpaper.setDayPath(wallpaper.getName());
                    wallpaper.setNightPath(wallpaper.getName());
                }
                if (this.wallpaperDatabase.wallpaperDao().update(wallpaper) <= 0) {
                    MLog.d(TAG, "showDefaultWallpapers: update failed. " + wallpaper);
                }
            }
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public void hideUserWallpapers() {
        for (Wallpaper wallpaper : this.wallpaperDatabase.wallpaperDao().queryAllWithoutFlags(1)) {
            if (!wallpaper.isHide()) {
                wallpaper.setHide(1);
                if (this.wallpaperDatabase.wallpaperDao().update(wallpaper) <= 0) {
                    MLog.d(TAG, "hideUserWallpapers: update failed. " + wallpaper);
                }
            }
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public WallpaperInfo getWallpaperInfoWithName(String wallpaperName) {
        Intrinsics.checkNotNullParameter(wallpaperName, "wallpaperName");
        try {
            Wallpaper wallpaperQueryByName = this.wallpaperDatabase.wallpaperDao().queryByName(wallpaperName);
            if (wallpaperQueryByName == null) {
                return null;
            }
            return new WallpaperInfo(wallpaperQueryByName, false);
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public WallpaperInfo getWallpaperInfoWithWallpaperId(String wallpaperId) {
        Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
        try {
            Wallpaper wallpaperQueryByWallpaperId = this.wallpaperDatabase.wallpaperDao().queryByWallpaperId(wallpaperId);
            if (wallpaperQueryByWallpaperId == null) {
                return null;
            }
            return new WallpaperInfo(wallpaperQueryByWallpaperId, false);
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean updateWallpaperFromDatabase(WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        try {
            return this.wallpaperDatabase.wallpaperDao().update(wallpaperInfo.getWallpaper()) > 0;
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.mega.launcher.wallpaper.IWallpaperStorage
    public boolean updateDatabaseId(WallpaperInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (info.getWallpaper().getId() > 0) {
            return false;
        }
        String wallpaperId = info.getWallpaper().getWallpaperId();
        Intrinsics.checkNotNull(wallpaperId);
        WallpaperInfo wallpaperInfoWithWallpaperId = getWallpaperInfoWithWallpaperId(wallpaperId);
        if (wallpaperInfoWithWallpaperId == null) {
            return false;
        }
        info.getWallpaper().setId(wallpaperInfoWithWallpaperId.getWallpaper().getId());
        return true;
    }
}
