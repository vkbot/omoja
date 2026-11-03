package com.mega.launcher.wallpaper.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.android.launcher3.LauncherSettings;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class WallpaperDatabase_Impl extends WallpaperDatabase {
    private volatile WallpaperDao _wallpaperDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(5) { // from class: com.mega.launcher.wallpaper.database.WallpaperDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `Wallpaper` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `wallpaperId` TEXT, `name` TEXT NOT NULL, `from` TEXT NOT NULL, `day_path` TEXT, `night_path` TEXT, `type` INTEGER NOT NULL, `hide` INTEGER, `rank` INTEGER NOT NULL, `flags` INTEGER NOT NULL)");
                _db.execSQL(RoomMasterTable.CREATE_QUERY);
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'e0d17c6ea55fc3e69fcff624756c7752')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `Wallpaper`");
                if (WallpaperDatabase_Impl.this.mCallbacks != null) {
                    int size = WallpaperDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) WallpaperDatabase_Impl.this.mCallbacks.get(i)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (WallpaperDatabase_Impl.this.mCallbacks != null) {
                    int size = WallpaperDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) WallpaperDatabase_Impl.this.mCallbacks.get(i)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                WallpaperDatabase_Impl.this.mDatabase = _db;
                WallpaperDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (WallpaperDatabase_Impl.this.mCallbacks != null) {
                    int size = WallpaperDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) WallpaperDatabase_Impl.this.mCallbacks.get(i)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap map = new HashMap(10);
                map.put(WallpaperConstant.WALLPAPER_COLUMN_ID, new TableInfo.Column(WallpaperConstant.WALLPAPER_COLUMN_ID, "INTEGER", true, 1, null, 1));
                map.put(WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, new TableInfo.Column(WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "TEXT", false, 0, null, 1));
                map.put(WallpaperConstant.WALLPAPER_COLUMN_NAME, new TableInfo.Column(WallpaperConstant.WALLPAPER_COLUMN_NAME, "TEXT", true, 0, null, 1));
                map.put("from", new TableInfo.Column("from", "TEXT", true, 0, null, 1));
                map.put("day_path", new TableInfo.Column("day_path", "TEXT", false, 0, null, 1));
                map.put("night_path", new TableInfo.Column("night_path", "TEXT", false, 0, null, 1));
                map.put(LiveWallpaperContract.KEY_TYPE, new TableInfo.Column(LiveWallpaperContract.KEY_TYPE, "INTEGER", true, 0, null, 1));
                map.put(WallpaperConstant.WALLPAPER_COLUMN_HIDE, new TableInfo.Column(WallpaperConstant.WALLPAPER_COLUMN_HIDE, "INTEGER", false, 0, null, 1));
                map.put(LauncherSettings.Favorites.RANK, new TableInfo.Column(LauncherSettings.Favorites.RANK, "INTEGER", true, 0, null, 1));
                map.put(WallpaperConstant.WALLPAPER_COLUMN_FLAGS, new TableInfo.Column(WallpaperConstant.WALLPAPER_COLUMN_FLAGS, "INTEGER", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("Wallpaper", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(_db, "Wallpaper");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "Wallpaper(com.mega.launcher.wallpaper.bean.Wallpaper).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "e0d17c6ea55fc3e69fcff624756c7752", "985f20e53e606ca963eb8d5bfdbe6149")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "Wallpaper");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `Wallpaper`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDatabase
    public WallpaperDao wallpaperDao() {
        WallpaperDao wallpaperDao;
        if (this._wallpaperDao != null) {
            return this._wallpaperDao;
        }
        synchronized (this) {
            if (this._wallpaperDao == null) {
                this._wallpaperDao = new WallpaperDao_Impl(this);
            }
            wallpaperDao = this._wallpaperDao;
        }
        return wallpaperDao;
    }
}
