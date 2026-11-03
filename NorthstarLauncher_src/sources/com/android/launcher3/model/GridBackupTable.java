package com.android.launcher3.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.os.Process;
import android.util.Log;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;

/* JADX INFO: loaded from: classes.dex */
public class GridBackupTable {
    private static final int ID_PROPERTY = -1;
    private static final String KEY_DB_VERSION = "rank";
    private static final String KEY_GRID_X_SIZE = "spanX";
    private static final String KEY_GRID_Y_SIZE = "spanY";
    private static final String KEY_HOTSEAT_SIZE = "screen";
    public static final int OPTION_REQUIRES_SANITIZATION = 1;
    private static final int STATE_NOT_FOUND = 0;
    private static final int STATE_RAW = 1;
    private static final int STATE_SANITIZED = 2;
    private static final String TAG = "GridBackupTable";
    private final Context mContext;
    private final SQLiteDatabase mDb;
    private final int mOldGridX;
    private final int mOldGridY;
    private final int mOldHotseatSize;
    private int mRestoredGridX;
    private int mRestoredGridY;
    private int mRestoredHotseatSize;

    private @interface BackupState {
    }

    public GridBackupTable(Context context, SQLiteDatabase db, int hotseatSize, int gridX, int gridY) {
        this.mContext = context;
        this.mDb = db;
        this.mOldHotseatSize = hotseatSize;
        this.mOldGridX = gridX;
        this.mOldGridY = gridY;
    }

    public boolean backupOrRestoreAsNeeded() {
        if (!LauncherDbUtils.tableExists(this.mDb, LauncherSettings.Favorites.BACKUP_TABLE_NAME)) {
            if (LauncherSettings.Settings.call(this.mContext.getContentResolver(), LauncherSettings.Settings.METHOD_WAS_EMPTY_DB_CREATED).getBoolean(LauncherSettings.Settings.EXTRA_VALUE, false)) {
                return false;
            }
            doBackup(UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(Process.myUserHandle()), 0);
            return false;
        }
        return restoreIfBackupExists(LauncherSettings.Favorites.TABLE_NAME);
    }

    public boolean restoreToPreviewIfBackupExists() {
        if (LauncherDbUtils.tableExists(this.mDb, LauncherSettings.Favorites.BACKUP_TABLE_NAME)) {
            return restoreIfBackupExists(LauncherSettings.Favorites.PREVIEW_TABLE_NAME);
        }
        return false;
    }

    private boolean restoreIfBackupExists(String toTableName) {
        if (loadDBProperties() != 2) {
            return false;
        }
        copyTable(this.mDb, LauncherSettings.Favorites.BACKUP_TABLE_NAME, toTableName, UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(Process.myUserHandle()));
        Log.d(TAG, "Backup table found");
        return true;
    }

    public int getRestoreHotseatAndGridSize(Point outGridSize) {
        outGridSize.set(this.mRestoredGridX, this.mRestoredGridY);
        return this.mRestoredHotseatSize;
    }

    public void createCustomBackupTable(String tableName) {
        copyTable(this.mDb, LauncherSettings.Favorites.TABLE_NAME, tableName, UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(Process.myUserHandle()));
        encodeDBProperties(0);
    }

    public void restoreFromCustomBackupTable(String tableName, boolean dropAfterUse) {
        if (LauncherDbUtils.tableExists(this.mDb, tableName)) {
            copyTable(this.mDb, tableName, LauncherSettings.Favorites.TABLE_NAME, UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(Process.myUserHandle()));
            if (dropAfterUse) {
                LauncherDbUtils.dropTable(this.mDb, tableName);
            }
        }
    }

    private static void copyTable(SQLiteDatabase db, String from, String to, long userSerial) {
        LauncherDbUtils.dropTable(db, to);
        LauncherSettings.Favorites.addTableToDb(db, userSerial, false, to);
        db.execSQL("INSERT INTO " + to + " SELECT * FROM " + from + " where _id > -1");
    }

    private void encodeDBProperties(int options) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", (Integer) (-1));
        contentValues.put("rank", Integer.valueOf(this.mDb.getVersion()));
        contentValues.put("spanX", Integer.valueOf(this.mOldGridX));
        contentValues.put("spanY", Integer.valueOf(this.mOldGridY));
        contentValues.put("screen", Integer.valueOf(this.mOldHotseatSize));
        contentValues.put(LauncherSettings.Favorites.OPTIONS, Integer.valueOf(options));
        this.mDb.insert(LauncherSettings.Favorites.BACKUP_TABLE_NAME, null, contentValues);
    }

    public int loadDBProperties() {
        Cursor cursorQuery = this.mDb.query(LauncherSettings.Favorites.BACKUP_TABLE_NAME, new String[]{"rank", "spanX", "spanY", "screen", LauncherSettings.Favorites.OPTIONS}, "_id=-1", null, null, null, null);
        try {
            if (!cursorQuery.moveToNext()) {
                Log.e(TAG, "Meta data not found in backup table");
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0;
            }
            if (!validateDBVersion(this.mDb.getVersion(), cursorQuery.getInt(0))) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0;
            }
            this.mRestoredGridX = cursorQuery.getInt(1);
            this.mRestoredGridY = cursorQuery.getInt(2);
            this.mRestoredHotseatSize = cursorQuery.getInt(3);
            int i = (cursorQuery.getInt(4) & 1) == 0 ? 2 : 1;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return i;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public boolean restoreFromRawBackupIfAvailable(long oldProfileId) {
        if (!LauncherDbUtils.tableExists(this.mDb, LauncherSettings.Favorites.BACKUP_TABLE_NAME) || loadDBProperties() != 1 || this.mOldHotseatSize != this.mRestoredHotseatSize || this.mOldGridX != this.mRestoredGridX || this.mOldGridY != this.mRestoredGridY) {
            return false;
        }
        copyTable(this.mDb, LauncherSettings.Favorites.BACKUP_TABLE_NAME, LauncherSettings.Favorites.TABLE_NAME, oldProfileId);
        Log.d(TAG, "Backup restored");
        return true;
    }

    public void doBackup(long profileId, int options) {
        copyTable(this.mDb, LauncherSettings.Favorites.TABLE_NAME, LauncherSettings.Favorites.BACKUP_TABLE_NAME, profileId);
        encodeDBProperties(options);
    }

    private static boolean validateDBVersion(int expected, int actual) {
        if (expected == actual) {
            return true;
        }
        Log.e(TAG, String.format("Launcher.db version mismatch, expecting %d but %d was found", Integer.valueOf(expected), Integer.valueOf(actual)));
        return false;
    }
}
