package com.android.launcher3.provider;

import android.app.backup.BackupManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseLongArray;
import com.android.launcher3.AppWidgetsRestoredReceiver;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.GridBackupTable;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LogConfig;
import java.io.InvalidObjectException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class RestoreDbTask {
    private static final String APPWIDGET_IDS = "appwidget_ids";
    private static final String APPWIDGET_OLD_IDS = "appwidget_old_ids";
    private static final String INFO_COLUMN_DEFAULT_VALUE = "dflt_value";
    private static final String INFO_COLUMN_NAME = "name";
    private static final String RESTORE_TASK_PENDING = "restore_task_pending";
    private static final String TAG = "RestoreDbTask";

    public static boolean performRestore(Context context, LauncherProvider.DatabaseHelper helper, BackupManager backupManager) {
        SQLiteDatabase writableDatabase = helper.getWritableDatabase();
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(writableDatabase);
            try {
                RestoreDbTask restoreDbTask = new RestoreDbTask();
                restoreDbTask.backupWorkspace(context, writableDatabase);
                restoreDbTask.sanitizeDB(helper, writableDatabase, backupManager);
                restoreDbTask.restoreAppWidgetIdsIfExists(context);
                sQLiteTransaction.commit();
                sQLiteTransaction.close();
                return true;
            } catch (Throwable th) {
                try {
                    sQLiteTransaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            FileLog.e(TAG, "Failed to verify db", e);
            return false;
        }
    }

    public static boolean restoreIfPossible(Context context, LauncherProvider.DatabaseHelper helper, BackupManager backupManager) {
        SQLiteDatabase writableDatabase = helper.getWritableDatabase();
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(writableDatabase);
            try {
                new RestoreDbTask().restoreWorkspace(context, writableDatabase, helper, backupManager);
                sQLiteTransaction.commit();
                sQLiteTransaction.close();
                return true;
            } catch (Throwable th) {
                try {
                    sQLiteTransaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            FileLog.e(TAG, "Failed to restore db", e);
            return false;
        }
    }

    private void backupWorkspace(Context context, SQLiteDatabase db) throws Exception {
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        new GridBackupTable(context, db, idp.numHotseatIcons, idp.numColumns, idp.numRows).doBackup(getDefaultProfileId(db), 1);
    }

    private void restoreWorkspace(Context context, SQLiteDatabase db, LauncherProvider.DatabaseHelper helper, BackupManager backupManager) throws Exception {
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        if (new GridBackupTable(context, db, idp.numHotseatIcons, idp.numColumns, idp.numRows).restoreFromRawBackupIfAvailable(getDefaultProfileId(db))) {
            int iSanitizeDB = sanitizeDB(helper, db, backupManager);
            LauncherAppState.getInstance(context).getModel().forceReload();
            restoreAppWidgetIdsIfExists(context);
            if (iSanitizeDB == 0) {
                LauncherDbUtils.dropTable(db, LauncherSettings.Favorites.BACKUP_TABLE_NAME);
            }
        }
    }

    private int sanitizeDB(LauncherProvider.DatabaseHelper helper, SQLiteDatabase db, BackupManager backupManager) throws Exception {
        long defaultUserSerial = helper.getDefaultUserSerial();
        long defaultProfileId = getDefaultProfileId(db);
        LongSparseArray<Long> managedProfileIds = getManagedProfileIds(db, defaultProfileId);
        LongSparseArray longSparseArray = new LongSparseArray(managedProfileIds.size() + 1);
        longSparseArray.put(defaultProfileId, Long.valueOf(defaultUserSerial));
        for (int size = managedProfileIds.size() - 1; size >= 0; size--) {
            long jKeyAt = managedProfileIds.keyAt(size);
            UserHandle userForAncestralSerialNumber = getUserForAncestralSerialNumber(backupManager, jKeyAt);
            if (userForAncestralSerialNumber != null) {
                longSparseArray.put(jKeyAt, Long.valueOf(helper.getSerialNumberForUser(userForAncestralSerialNumber)));
            }
        }
        int size2 = longSparseArray.size();
        String[] strArr = new String[size2];
        int i = 0;
        strArr[0] = Long.toString(defaultProfileId);
        for (int i2 = size2 - 1; i2 >= 1; i2--) {
            strArr[i2] = Long.toString(longSparseArray.keyAt(i2));
        }
        String[] strArr2 = new String[size2];
        Arrays.fill(strArr2, "?");
        int iDelete = db.delete(LauncherSettings.Favorites.TABLE_NAME, "profileId NOT IN (" + TextUtils.join(", ", Arrays.asList(strArr2)) + ")", strArr);
        FileLog.d(TAG, iDelete + " items from unrestored user(s) were deleted");
        boolean zIsPropertyEnabled = Utilities.isPropertyEnabled(LogConfig.KEEP_ALL_ICONS);
        ContentValues contentValues = new ContentValues();
        contentValues.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf((zIsPropertyEnabled ? 8 : 0) | 1));
        db.update(LauncherSettings.Favorites.TABLE_NAME, contentValues, null, null);
        contentValues.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf((zIsPropertyEnabled ? 8 : 0) | 7));
        db.update(LauncherSettings.Favorites.TABLE_NAME, contentValues, "itemType = ?", new String[]{Integer.toString(4)});
        SparseLongArray sparseLongArray = new SparseLongArray(longSparseArray.size());
        for (int size3 = longSparseArray.size() - 1; size3 >= 0; size3--) {
            long jKeyAt2 = longSparseArray.keyAt(size3);
            long jLongValue = ((Long) longSparseArray.valueAt(size3)).longValue();
            if (jKeyAt2 != jLongValue) {
                if (longSparseArray.indexOfKey(jLongValue) >= 0) {
                    sparseLongArray.put(i, jLongValue);
                    i++;
                    jLongValue -= Long.MIN_VALUE;
                }
                migrateProfileId(db, jKeyAt2, jLongValue);
                i = i;
            }
        }
        for (int size4 = sparseLongArray.size() - 1; size4 >= 0; size4--) {
            long jValueAt = sparseLongArray.valueAt(size4);
            migrateProfileId(db, jValueAt - Long.MIN_VALUE, jValueAt);
        }
        if (defaultUserSerial != defaultProfileId) {
            changeDefaultColumn(db, defaultUserSerial);
        }
        return iDelete;
    }

    protected void migrateProfileId(SQLiteDatabase db, long oldProfileId, long newProfileId) {
        FileLog.d(TAG, "Changing profile user id from " + oldProfileId + " to " + newProfileId);
        ContentValues contentValues = new ContentValues();
        contentValues.put("profileId", Long.valueOf(newProfileId));
        db.update(LauncherSettings.Favorites.TABLE_NAME, contentValues, "profileId = ?", new String[]{Long.toString(oldProfileId)});
    }

    protected void changeDefaultColumn(SQLiteDatabase db, long newProfileId) {
        db.execSQL("ALTER TABLE favorites RENAME TO favorites_old;");
        LauncherSettings.Favorites.addTableToDb(db, newProfileId, false);
        db.execSQL("INSERT INTO favorites SELECT * FROM favorites_old;");
        LauncherDbUtils.dropTable(db, "favorites_old");
    }

    private LongSparseArray<Long> getManagedProfileIds(SQLiteDatabase db, long defaultProfileId) {
        LongSparseArray<Long> longSparseArray = new LongSparseArray<>();
        Cursor cursorRawQuery = db.rawQuery("SELECT profileId from favorites WHERE profileId != ? GROUP BY profileId", new String[]{Long.toString(defaultProfileId)});
        while (cursorRawQuery.moveToNext()) {
            try {
                longSparseArray.put(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("profileId")), null);
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return longSparseArray;
    }

    private UserHandle getUserForAncestralSerialNumber(BackupManager backupManager, long ancestralSerialNumber) {
        if (Utilities.ATLEAST_Q) {
            return backupManager.getUserForAncestralSerialNumber(ancestralSerialNumber);
        }
        return null;
    }

    protected long getDefaultProfileId(SQLiteDatabase db) throws Exception {
        Cursor cursorRawQuery = db.rawQuery("PRAGMA table_info (favorites)", null);
        try {
            int columnIndex = cursorRawQuery.getColumnIndex("name");
            while (cursorRawQuery.moveToNext()) {
                if ("profileId".equals(cursorRawQuery.getString(columnIndex))) {
                    long j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(INFO_COLUMN_DEFAULT_VALUE));
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return j;
                }
            }
            throw new InvalidObjectException("Table does not have a profile id column");
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static boolean isPending(Context context) {
        return Utilities.getPrefs(context).getBoolean(RESTORE_TASK_PENDING, false);
    }

    public static void setPending(Context context, boolean isPending) {
        FileLog.d(TAG, "Restore data received through full backup " + isPending);
        Utilities.getPrefs(context).edit().putBoolean(RESTORE_TASK_PENDING, isPending).commit();
    }

    private void restoreAppWidgetIdsIfExists(Context context) {
        SharedPreferences prefs = Utilities.getPrefs(context);
        if (prefs.contains(APPWIDGET_OLD_IDS) && prefs.contains(APPWIDGET_IDS)) {
            AppWidgetsRestoredReceiver.restoreAppWidgetIds(context, IntArray.fromConcatString(prefs.getString(APPWIDGET_OLD_IDS, "")).toArray(), IntArray.fromConcatString(prefs.getString(APPWIDGET_IDS, "")).toArray());
        } else {
            FileLog.d(TAG, "No app widget ids to restore.");
        }
        prefs.edit().remove(APPWIDGET_OLD_IDS).remove(APPWIDGET_IDS).apply();
    }

    public static void setRestoredAppWidgetIds(Context context, int[] oldIds, int[] newIds) {
        Utilities.getPrefs(context).edit().putString(APPWIDGET_OLD_IDS, IntArray.wrap(oldIds).toConcatString()).putString(APPWIDGET_IDS, IntArray.wrap(newIds).toConcatString()).commit();
    }
}
