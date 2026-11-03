package com.mega.launcher.wallpaper.database;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.android.launcher3.LauncherSettings;
import com.mega.launcher.wallpaper.bean.Wallpaper;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class WallpaperDao_Impl implements WallpaperDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<Wallpaper> __deletionAdapterOfWallpaper;
    private final EntityInsertionAdapter<Wallpaper> __insertionAdapterOfWallpaper;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllWithFlags;
    private final EntityDeletionOrUpdateAdapter<Wallpaper> __updateAdapterOfWallpaper;

    public WallpaperDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWallpaper = new EntityInsertionAdapter<Wallpaper>(__db) { // from class: com.mega.launcher.wallpaper.database.WallpaperDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR ABORT INTO `Wallpaper` (`id`,`wallpaperId`,`name`,`from`,`day_path`,`night_path`,`type`,`hide`,`rank`,`flags`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, Wallpaper value) {
                stmt.bindLong(1, value.getId());
                if (value.getWallpaperId() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getWallpaperId());
                }
                if (value.getName() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getName());
                }
                if (value.getFrom() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getFrom());
                }
                if (value.getDayPath() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getDayPath());
                }
                if (value.getNightPath() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, value.getNightPath());
                }
                stmt.bindLong(7, value.getType());
                if (value.getHide() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getHide().intValue());
                }
                stmt.bindLong(9, value.getRank());
                stmt.bindLong(10, value.getFlags());
            }
        };
        this.__deletionAdapterOfWallpaper = new EntityDeletionOrUpdateAdapter<Wallpaper>(__db) { // from class: com.mega.launcher.wallpaper.database.WallpaperDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `Wallpaper` WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, Wallpaper value) {
                stmt.bindLong(1, value.getId());
            }
        };
        this.__updateAdapterOfWallpaper = new EntityDeletionOrUpdateAdapter<Wallpaper>(__db) { // from class: com.mega.launcher.wallpaper.database.WallpaperDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `Wallpaper` SET `id` = ?,`wallpaperId` = ?,`name` = ?,`from` = ?,`day_path` = ?,`night_path` = ?,`type` = ?,`hide` = ?,`rank` = ?,`flags` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, Wallpaper value) {
                stmt.bindLong(1, value.getId());
                if (value.getWallpaperId() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getWallpaperId());
                }
                if (value.getName() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getName());
                }
                if (value.getFrom() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getFrom());
                }
                if (value.getDayPath() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getDayPath());
                }
                if (value.getNightPath() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, value.getNightPath());
                }
                stmt.bindLong(7, value.getType());
                if (value.getHide() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getHide().intValue());
                }
                stmt.bindLong(9, value.getRank());
                stmt.bindLong(10, value.getFlags());
                stmt.bindLong(11, value.getId());
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(__db) { // from class: com.mega.launcher.wallpaper.database.WallpaperDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM Wallpaper where wallpaperId = ?";
            }
        };
        this.__preparedStmtOfDeleteAllWithFlags = new SharedSQLiteStatement(__db) { // from class: com.mega.launcher.wallpaper.database.WallpaperDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM Wallpaper where ((flags & ?) == ?)";
            }
        };
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Long> insert(final Wallpaper... wallpaper) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> listInsertAndReturnIdsList = this.__insertionAdapterOfWallpaper.insertAndReturnIdsList(wallpaper);
            this.__db.setTransactionSuccessful();
            return listInsertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Long> insert(final List<Wallpaper> wallpapers) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> listInsertAndReturnIdsList = this.__insertionAdapterOfWallpaper.insertAndReturnIdsList(wallpapers);
            this.__db.setTransactionSuccessful();
            return listInsertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public int delete(final Wallpaper wallpaper) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            int iHandle = this.__deletionAdapterOfWallpaper.handle(wallpaper);
            this.__db.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public int update(final Wallpaper wallpaper) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            int iHandle = this.__updateAdapterOfWallpaper.handle(wallpaper);
            this.__db.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public int delete(final String wallpaperId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDelete.acquire();
        if (wallpaperId == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, wallpaperId);
        }
        this.__db.beginTransaction();
        try {
            int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDelete.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public int deleteAllWithFlags(final int flags) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteAllWithFlags.acquire();
        long j = flags;
        supportSQLiteStatementAcquire.bindLong(1, j);
        supportSQLiteStatementAcquire.bindLong(2, j);
        this.__db.beginTransaction();
        try {
            int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllWithFlags.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Wallpaper> queryAll() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Wallpaper> queryAllShow() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper where hide = 0 or hide is null", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Wallpaper> queryAllWithFlags(final int flags) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper where ((flags & ?) == ?)", 2);
        long j = flags;
        roomSQLiteQueryAcquire.bindLong(1, j);
        roomSQLiteQueryAcquire.bindLong(2, j);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public List<Wallpaper> queryAllWithoutFlags(final int flags) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper where ((flags & ?) == 0)", 1);
        roomSQLiteQueryAcquire.bindLong(1, flags);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public Cursor queryAllAsCursor() {
        return this.__db.query(RoomSQLiteQuery.acquire("SELECT * FROM Wallpaper", 0));
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public Cursor queryAllShowAsCursor() {
        return this.__db.query(RoomSQLiteQuery.acquire("SELECT * FROM Wallpaper where hide = 0 or hide is null", 0));
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public Wallpaper queryByName(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper where name = ? LIMIT 1", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Wallpaper wallpaper = null;
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            if (cursorQuery.moveToFirst()) {
                wallpaper = new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10));
            }
            return wallpaper;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.mega.launcher.wallpaper.database.WallpaperDao
    public Wallpaper queryByWallpaperId(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `Wallpaper`.`id` AS `id`, `Wallpaper`.`wallpaperId` AS `wallpaperId`, `Wallpaper`.`name` AS `name`, `Wallpaper`.`from` AS `from`, `Wallpaper`.`day_path` AS `day_path`, `Wallpaper`.`night_path` AS `night_path`, `Wallpaper`.`type` AS `type`, `Wallpaper`.`hide` AS `hide`, `Wallpaper`.`rank` AS `rank`, `Wallpaper`.`flags` AS `flags` FROM Wallpaper where wallpaperId = ? LIMIT 1", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Wallpaper wallpaper = null;
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_NAME);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "from");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "day_path");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "night_path");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LiveWallpaperContract.KEY_TYPE);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_HIDE);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, LauncherSettings.Favorites.RANK);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, WallpaperConstant.WALLPAPER_COLUMN_FLAGS);
            if (cursorQuery.moveToFirst()) {
                wallpaper = new Wallpaper(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)), cursorQuery.getInt(columnIndexOrThrow9), cursorQuery.getInt(columnIndexOrThrow10));
            }
            return wallpaper;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
