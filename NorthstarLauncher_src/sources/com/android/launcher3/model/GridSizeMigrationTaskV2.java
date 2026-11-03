package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.util.ArrayMap;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.widget.WidgetManagerHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class GridSizeMigrationTaskV2 {
    private static final boolean DEBUG = true;
    private static final String TAG = "GridSizeMigrationTaskV2";
    private final Context mContext;
    private final SQLiteDatabase mDb;
    private final int mDestHotseatSize;
    private final DbReader mDestReader;
    private final List<DbEntry> mHotseatDiff;
    private final List<DbEntry> mHotseatItems;
    private final DbReader mSrcReader;
    private final int mTrgX;
    private final int mTrgY;
    private final List<DbEntry> mWorkspaceDiff;
    private final List<DbEntry> mWorkspaceItems;

    protected GridSizeMigrationTaskV2(Context context, SQLiteDatabase db, DbReader srcReader, DbReader destReader, int destHotseatSize, Point targetSize) {
        this.mContext = context;
        this.mDb = db;
        this.mSrcReader = srcReader;
        this.mDestReader = destReader;
        ArrayList<DbEntry> arrayListLoadHotseatEntries = destReader.loadHotseatEntries();
        this.mHotseatItems = arrayListLoadHotseatEntries;
        ArrayList<DbEntry> arrayListLoadAllWorkspaceEntries = destReader.loadAllWorkspaceEntries();
        this.mWorkspaceItems = arrayListLoadAllWorkspaceEntries;
        this.mHotseatDiff = calcDiff(srcReader.loadHotseatEntries(), arrayListLoadHotseatEntries);
        this.mWorkspaceDiff = calcDiff(srcReader.loadAllWorkspaceEntries(), arrayListLoadAllWorkspaceEntries);
        this.mDestHotseatSize = destHotseatSize;
        this.mTrgX = targetSize.x;
        this.mTrgY = targetSize.y;
    }

    public static boolean needsToMigrate(Context context, InvariantDeviceProfile idp) {
        SharedPreferences prefs = Utilities.getPrefs(context);
        return (Utilities.getPointString(idp.numColumns, idp.numRows).equals(prefs.getString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, "")) && idp.numHotseatIcons == prefs.getInt(InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT, -1)) ? false : true;
    }

    public static boolean migrateGridIfNeeded(Context context) {
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            return true;
        }
        return migrateGridIfNeeded(context, null);
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0157  */
    /* JADX WARN: Code duplicated, block: B:88:0x0129 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:? A[Catch: Exception -> 0x0133, all -> 0x016a, SYNTHETIC, TRY_LEAVE, TryCatch #6 {all -> 0x016a, blocks: (B:68:0x013a, B:61:0x0132, B:60:0x012f), top: B:85:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:95:? A[RETURN, SYNTHETIC] */
    public static boolean migrateGridIfNeeded(Context context, InvariantDeviceProfile idp) throws Throwable {
        String str;
        Throwable th;
        String str2 = null;
        boolean z = idp != null;
        InvariantDeviceProfile idp2 = !z ? LauncherAppState.getIDP(context) : idp;
        if (!needsToMigrate(context, idp2)) {
            return true;
        }
        SharedPreferences prefs = Utilities.getPrefs(context);
        String pointString = Utilities.getPointString(idp2.numColumns, idp2.numRows);
        HashSet<String> validPackages = getValidPackages(context);
        int i = prefs.getInt(InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT, idp2.numHotseatIcons);
        if (z) {
            if (!LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_PREP_FOR_PREVIEW, idp2.dbFile).getBoolean(LauncherSettings.Settings.EXTRA_VALUE)) {
                return false;
            }
        } else if (!LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_UPDATE_CURRENT_OPEN_HELPER).getBoolean(LauncherSettings.Settings.EXTRA_VALUE)) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction = (LauncherDbUtils.SQLiteTransaction) LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_NEW_TRANSACTION).getBinder(LauncherSettings.Settings.EXTRA_VALUE);
                try {
                    try {
                        new GridSizeMigrationTaskV2(context, sQLiteTransaction.getDb(), new DbReader(sQLiteTransaction.getDb(), z ? LauncherSettings.Favorites.TABLE_NAME : LauncherSettings.Favorites.TMP_TABLE, context, validPackages, i), new DbReader(sQLiteTransaction.getDb(), z ? LauncherSettings.Favorites.PREVIEW_TABLE_NAME : LauncherSettings.Favorites.TABLE_NAME, context, validPackages, idp2.numHotseatIcons), idp2.numHotseatIcons, new Point(idp2.numColumns, idp2.numRows)).migrate();
                        if (!z) {
                            try {
                                LauncherDbUtils.dropTable(sQLiteTransaction.getDb(), LauncherSettings.Favorites.TMP_TABLE);
                            } catch (Throwable th2) {
                                th = th2;
                                str = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                                if (sQLiteTransaction != null) {
                                    throw th;
                                }
                                try {
                                    sQLiteTransaction.close();
                                    throw th;
                                } catch (Throwable th3) {
                                    try {
                                        th.addSuppressed(th3);
                                        throw th;
                                    } catch (Exception e) {
                                        e = e;
                                        Log.e(TAG, "Error during grid migration", e);
                                        Log.v(TAG, "Workspace migration completed in " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                        if (!z) {
                                            return false;
                                        }
                                        prefs.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, pointString).putInt(str, idp2.numHotseatIcons).apply();
                                        return false;
                                    }
                                }
                            }
                        }
                        sQLiteTransaction.commit();
                        if (sQLiteTransaction != null) {
                            try {
                                sQLiteTransaction.close();
                            } catch (Exception e2) {
                                e = e2;
                                str = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                                Log.e(TAG, "Error during grid migration", e);
                                Log.v(TAG, "Workspace migration completed in " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                if (!z) {
                                    return false;
                                }
                                prefs.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, pointString).putInt(str, idp2.numHotseatIcons).apply();
                                return false;
                            } catch (Throwable th4) {
                                th = th4;
                                str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                                Log.v(TAG, "Workspace migration completed in " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                if (!z) {
                                    prefs.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, pointString).putInt(str2, idp2.numHotseatIcons).apply();
                                }
                                throw th;
                            }
                        }
                        Log.v(TAG, "Workspace migration completed in " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        if (!z) {
                            prefs.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, pointString).putInt(InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT, idp2.numHotseatIcons).apply();
                        }
                        return true;
                    } catch (Throwable th5) {
                        th = th5;
                        str = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                        th = th;
                        if (sQLiteTransaction != null) {
                            throw th;
                        }
                        sQLiteTransaction.close();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    str = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Exception e3) {
            e = e3;
            str = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
        } catch (Throwable th8) {
            th = th8;
            str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
        }
    }

    protected boolean migrate() {
        if (this.mHotseatDiff.isEmpty() && this.mWorkspaceDiff.isEmpty()) {
            return false;
        }
        new HotseatPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, this.mDestHotseatSize, this.mHotseatItems, this.mHotseatDiff).find();
        Collections.sort(this.mWorkspaceDiff);
        for (int i = 0; i <= this.mDestReader.mLastScreenId; i++) {
            Log.d(TAG, "Migrating " + i);
            new GridPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, i, this.mTrgX, this.mTrgY, this.mWorkspaceDiff).find();
            if (this.mWorkspaceDiff.isEmpty()) {
                break;
            }
        }
        int i2 = this.mDestReader.mLastScreenId;
        while (true) {
            i2++;
            if (this.mWorkspaceDiff.isEmpty()) {
                return true;
            }
            new GridPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, i2, this.mTrgX, this.mTrgY, this.mWorkspaceDiff).find();
        }
    }

    private static List<DbEntry> calcDiff(List<DbEntry> src, List<DbEntry> dest) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (DbEntry dbEntry : dest) {
            if (dbEntry.itemType == 2) {
                hashSet2.add(getFolderIntents(dbEntry));
            } else {
                hashSet.add(dbEntry.mIntent);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (DbEntry dbEntry2 : src) {
            if (dbEntry2.itemType == 2) {
                if (!hashSet2.contains(getFolderIntents(dbEntry2))) {
                    arrayList.add(dbEntry2);
                }
            } else if (!hashSet.contains(dbEntry2.mIntent)) {
                arrayList.add(dbEntry2);
            }
        }
        return arrayList;
    }

    private static Map<String, Integer> getFolderIntents(DbEntry entry) {
        HashMap map = new HashMap();
        for (String str : entry.mFolderItems.keySet()) {
            map.put(str, Integer.valueOf(((Set) entry.mFolderItems.get(str)).size()));
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void insertEntryInDb(SQLiteDatabase db, Context context, DbEntry entry, String srcTableName, String destTableName) {
        int iCopyEntryAndUpdate = copyEntryAndUpdate(db, context, entry, srcTableName, destTableName);
        if (entry.itemType == 2) {
            Iterator it = entry.mFolderItems.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((Set) it.next()).iterator();
                while (it2.hasNext()) {
                    copyEntryAndUpdate(db, context, ((Integer) it2.next()).intValue(), iCopyEntryAndUpdate, srcTableName, destTableName);
                }
            }
        }
    }

    private static int copyEntryAndUpdate(SQLiteDatabase db, Context context, DbEntry entry, String srcTableName, String destTableName) {
        return copyEntryAndUpdate(db, context, entry, -1, -1, srcTableName, destTableName);
    }

    private static int copyEntryAndUpdate(SQLiteDatabase db, Context context, int id, int folderId, String srcTableName, String destTableName) {
        return copyEntryAndUpdate(db, context, null, id, folderId, srcTableName, destTableName);
    }

    private static int copyEntryAndUpdate(SQLiteDatabase db, Context context, DbEntry entry, int id, int folderId, String srcTableName, String destTableName) {
        StringBuilder sb = new StringBuilder("_id = '");
        if (entry != null) {
            id = entry.id;
        }
        Cursor cursorQuery = db.query(srcTableName, null, sb.append(id).append("'").toString(), null, null, null, null);
        int i = -1;
        while (cursorQuery.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
            if (entry != null) {
                entry.updateContentValues(contentValues);
            } else {
                contentValues.put(LauncherSettings.Favorites.CONTAINER, Integer.valueOf(folderId));
            }
            int i2 = LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_NEW_ITEM_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
            contentValues.put("_id", Integer.valueOf(i2));
            db.insert(destTableName, null, contentValues);
            i = i2;
        }
        cursorQuery.close();
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void removeEntryFromDb(SQLiteDatabase db, String tableName, IntArray entryIds) {
        db.delete(tableName, Utilities.createDbSelectionQuery("_id", entryIds), null);
    }

    private static HashSet<String> getValidPackages(Context context) {
        HashSet<String> hashSet = new HashSet<>();
        Iterator<PackageInfo> it = context.getPackageManager().getInstalledPackages(8192).iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().packageName);
        }
        return hashSet;
    }

    protected static class GridPlacementSolution {
        private final Context mContext;
        private final SQLiteDatabase mDb;
        private final DbReader mDestReader;
        private final List<DbEntry> mItemsToPlace;
        private int mNextStartX = 0;
        private int mNextStartY;
        private final GridOccupancy mOccupied;
        private final int mScreenId;
        private final DbReader mSrcReader;
        private final int mTrgX;
        private final int mTrgY;

        GridPlacementSolution(SQLiteDatabase db, DbReader srcReader, DbReader destReader, Context context, int screenId, int trgX, int trgY, List<DbEntry> itemsToPlace) {
            this.mDb = db;
            this.mSrcReader = srcReader;
            this.mDestReader = destReader;
            this.mContext = context;
            this.mOccupied = new GridOccupancy(trgX, trgY);
            this.mScreenId = screenId;
            this.mTrgX = trgX;
            this.mTrgY = trgY;
            this.mNextStartY = trgY - 1;
            List list = (List) destReader.mWorkspaceEntriesByScreenId.get(Integer.valueOf(screenId));
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.mOccupied.markCells((ItemInfo) it.next(), true);
                }
            }
            this.mItemsToPlace = itemsToPlace;
        }

        public void find() {
            Iterator<DbEntry> it = this.mItemsToPlace.iterator();
            while (it.hasNext()) {
                DbEntry next = it.next();
                if (next.minSpanX > this.mTrgX || next.minSpanY > this.mTrgY) {
                    it.remove();
                } else if (findPlacement(next)) {
                    GridSizeMigrationTaskV2.insertEntryInDb(this.mDb, this.mContext, next, this.mSrcReader.mTableName, this.mDestReader.mTableName);
                    it.remove();
                }
            }
        }

        private boolean findPlacement(DbEntry entry) {
            int i = this.mNextStartY;
            while (true) {
                if (i < (this.mScreenId == 0 ? 1 : 0)) {
                    return false;
                }
                for (int i2 = this.mNextStartX; i2 < this.mTrgX; i2++) {
                    boolean zIsRegionVacant = this.mOccupied.isRegionVacant(i2, i, entry.spanX, entry.spanY);
                    boolean zIsRegionVacant2 = this.mOccupied.isRegionVacant(i2, i, entry.minSpanX, entry.minSpanY);
                    if (zIsRegionVacant2) {
                        entry.spanX = entry.minSpanX;
                        entry.spanY = entry.minSpanY;
                    }
                    if (zIsRegionVacant || zIsRegionVacant2) {
                        entry.screenId = this.mScreenId;
                        entry.cellX = i2;
                        entry.cellY = i;
                        this.mOccupied.markCells((ItemInfo) entry, true);
                        this.mNextStartX = i2 + entry.spanX;
                        this.mNextStartY = i;
                        return true;
                    }
                }
                this.mNextStartX = 0;
                i--;
            }
        }
    }

    protected static class HotseatPlacementSolution {
        private final Context mContext;
        private final SQLiteDatabase mDb;
        private final DbReader mDestReader;
        private final List<DbEntry> mItemsToPlace;
        private final HotseatOccupancy mOccupied;
        private final DbReader mSrcReader;

        HotseatPlacementSolution(SQLiteDatabase db, DbReader srcReader, DbReader destReader, Context context, int hotseatSize, List<DbEntry> placedHotseatItems, List<DbEntry> itemsToPlace) {
            this.mDb = db;
            this.mSrcReader = srcReader;
            this.mDestReader = destReader;
            this.mContext = context;
            this.mOccupied = new HotseatOccupancy(hotseatSize);
            Iterator<DbEntry> it = placedHotseatItems.iterator();
            while (it.hasNext()) {
                this.mOccupied.markCells(it.next(), true);
            }
            this.mItemsToPlace = itemsToPlace;
        }

        public void find() {
            for (int i = 0; i < this.mOccupied.mCells.length; i++) {
                if (!this.mOccupied.mCells[i] && !this.mItemsToPlace.isEmpty()) {
                    DbEntry dbEntryRemove = this.mItemsToPlace.remove(0);
                    dbEntryRemove.screenId = i;
                    dbEntryRemove.cellX = i;
                    dbEntryRemove.cellY = 0;
                    GridSizeMigrationTaskV2.insertEntryInDb(this.mDb, this.mContext, dbEntryRemove, this.mSrcReader.mTableName, this.mDestReader.mTableName);
                    this.mOccupied.markCells(dbEntryRemove, true);
                }
            }
        }

        private class HotseatOccupancy {
            private final boolean[] mCells;

            private HotseatOccupancy(int hotseatSize) {
                this.mCells = new boolean[hotseatSize];
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void markCells(ItemInfo item, boolean value) {
                this.mCells[item.screenId] = value;
            }
        }
    }

    protected static class DbReader {
        private final Context mContext;
        private final SQLiteDatabase mDb;
        private final int mHotseatSize;
        private final String mTableName;
        private final HashSet<String> mValidPackages;
        private int mLastScreenId = -1;
        private final ArrayList<DbEntry> mHotseatEntries = new ArrayList<>();
        private final ArrayList<DbEntry> mWorkspaceEntries = new ArrayList<>();
        private final Map<Integer, ArrayList<DbEntry>> mWorkspaceEntriesByScreenId = new ArrayMap();

        DbReader(SQLiteDatabase db, String tableName, Context context, HashSet<String> validPackages, int hotseatSize) {
            this.mDb = db;
            this.mTableName = tableName;
            this.mContext = context;
            this.mValidPackages = validPackages;
            this.mHotseatSize = hotseatSize;
        }

        protected ArrayList<DbEntry> loadHotseatEntries() {
            Cursor cursorQueryWorkspace = queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.ITEM_TYPE, LauncherSettings.Favorites.INTENT, LauncherSettings.Favorites.SCREEN}, "container = -101");
            int columnIndexOrThrow = cursorQueryWorkspace.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.ITEM_TYPE);
            int columnIndexOrThrow3 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
            int columnIndexOrThrow4 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
            IntArray intArray = new IntArray();
            while (cursorQueryWorkspace.moveToNext()) {
                DbEntry dbEntry = new DbEntry();
                dbEntry.id = cursorQueryWorkspace.getInt(columnIndexOrThrow);
                dbEntry.itemType = cursorQueryWorkspace.getInt(columnIndexOrThrow2);
                dbEntry.screenId = cursorQueryWorkspace.getInt(columnIndexOrThrow4);
                if (dbEntry.screenId >= this.mHotseatSize) {
                    intArray.add(dbEntry.id);
                } else {
                    try {
                        int i = dbEntry.itemType;
                        if (i == 0 || i == 1) {
                            dbEntry.mIntent = cursorQueryWorkspace.getString(columnIndexOrThrow3);
                            verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow3));
                        } else if (i != 2) {
                            if (i != 6) {
                                throw new Exception("Invalid item type");
                            }
                            dbEntry.mIntent = cursorQueryWorkspace.getString(columnIndexOrThrow3);
                            verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow3));
                        } else if (getFolderItemsCount(dbEntry) == 0) {
                            throw new Exception("Folder is empty");
                        }
                        this.mHotseatEntries.add(dbEntry);
                    } catch (Exception e) {
                        Log.d(GridSizeMigrationTaskV2.TAG, "Removing item " + dbEntry.id, e);
                        intArray.add(dbEntry.id);
                    }
                }
            }
            GridSizeMigrationTaskV2.removeEntryFromDb(this.mDb, this.mTableName, intArray);
            cursorQueryWorkspace.close();
            return this.mHotseatEntries;
        }

        protected ArrayList<DbEntry> loadAllWorkspaceEntries() {
            return loadWorkspaceEntries(queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.ITEM_TYPE, LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, LauncherSettings.Favorites.INTENT, LauncherSettings.Favorites.APPWIDGET_PROVIDER, LauncherSettings.Favorites.APPWIDGET_ID}, "container = -100"));
        }

        private ArrayList<DbEntry> loadWorkspaceEntries(Cursor c) {
            Cursor cursor = c;
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.ITEM_TYPE);
            int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
            int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
            int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
            int columnIndexOrThrow6 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
            int columnIndexOrThrow7 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
            int columnIndexOrThrow8 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
            int columnIndexOrThrow9 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
            int columnIndexOrThrow10 = cursor.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_ID);
            IntArray intArray = new IntArray();
            WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(this.mContext);
            while (c.moveToNext()) {
                DbEntry dbEntry = new DbEntry();
                dbEntry.id = cursor.getInt(columnIndexOrThrow);
                dbEntry.itemType = cursor.getInt(columnIndexOrThrow2);
                dbEntry.screenId = cursor.getInt(columnIndexOrThrow3);
                int i = columnIndexOrThrow;
                this.mLastScreenId = Math.max(this.mLastScreenId, dbEntry.screenId);
                dbEntry.cellX = cursor.getInt(columnIndexOrThrow4);
                dbEntry.cellY = cursor.getInt(columnIndexOrThrow5);
                dbEntry.spanX = cursor.getInt(columnIndexOrThrow6);
                dbEntry.spanY = cursor.getInt(columnIndexOrThrow7);
                try {
                    int i2 = dbEntry.itemType;
                    if (i2 == 0 || i2 == 1) {
                        dbEntry.mIntent = cursor.getString(columnIndexOrThrow8);
                        verifyIntent(dbEntry.mIntent);
                    } else if (i2 != 2) {
                        if (i2 == 4) {
                            dbEntry.mProvider = cursor.getString(columnIndexOrThrow9);
                            verifyPackage(ComponentName.unflattenFromString(dbEntry.mProvider).getPackageName());
                            LauncherAppWidgetProviderInfo launcherAppWidgetInfo = widgetManagerHelper.getLauncherAppWidgetInfo(cursor.getInt(columnIndexOrThrow10));
                            Point minSpans = launcherAppWidgetInfo != null ? launcherAppWidgetInfo.getMinSpans() : null;
                            if (minSpans != null) {
                                dbEntry.minSpanX = minSpans.x > 0 ? minSpans.x : dbEntry.spanX;
                                dbEntry.minSpanY = minSpans.y > 0 ? minSpans.y : dbEntry.spanY;
                            } else {
                                dbEntry.minSpanY = 2;
                                dbEntry.minSpanX = 2;
                            }
                        } else {
                            if (i2 != 6) {
                                throw new Exception("Invalid item type");
                            }
                            dbEntry.mIntent = cursor.getString(columnIndexOrThrow8);
                            verifyIntent(dbEntry.mIntent);
                        }
                    } else if (getFolderItemsCount(dbEntry) == 0) {
                        throw new Exception("Folder is empty");
                    }
                    this.mWorkspaceEntries.add(dbEntry);
                    if (!this.mWorkspaceEntriesByScreenId.containsKey(Integer.valueOf(dbEntry.screenId))) {
                        this.mWorkspaceEntriesByScreenId.put(Integer.valueOf(dbEntry.screenId), new ArrayList<>());
                    }
                    this.mWorkspaceEntriesByScreenId.get(Integer.valueOf(dbEntry.screenId)).add(dbEntry);
                } catch (Exception e) {
                    Log.d(GridSizeMigrationTaskV2.TAG, "Removing item " + dbEntry.id, e);
                    intArray.add(dbEntry.id);
                }
                cursor = c;
                columnIndexOrThrow = i;
            }
            GridSizeMigrationTaskV2.removeEntryFromDb(this.mDb, this.mTableName, intArray);
            c.close();
            return this.mWorkspaceEntries;
        }

        private int getFolderItemsCount(DbEntry entry) {
            Cursor cursorQueryWorkspace = queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.INTENT}, "container = " + entry.id);
            int i = 0;
            while (cursorQueryWorkspace.moveToNext()) {
                try {
                    int i2 = cursorQueryWorkspace.getInt(0);
                    String string = cursorQueryWorkspace.getString(1);
                    verifyIntent(string);
                    i++;
                    if (!entry.mFolderItems.containsKey(string)) {
                        entry.mFolderItems.put(string, new HashSet());
                    }
                    ((Set) entry.mFolderItems.get(string)).add(Integer.valueOf(i2));
                } catch (Exception unused) {
                    GridSizeMigrationTaskV2.removeEntryFromDb(this.mDb, this.mTableName, IntArray.wrap(cursorQueryWorkspace.getInt(0)));
                }
            }
            cursorQueryWorkspace.close();
            return i;
        }

        private Cursor queryWorkspace(String[] columns, String where) {
            return this.mDb.query(this.mTableName, columns, where, null, null, null, null);
        }

        private void verifyIntent(String intentStr) throws Exception {
            Intent uri = Intent.parseUri(intentStr, 0);
            if (uri.getComponent() != null) {
                verifyPackage(uri.getComponent().getPackageName());
            } else if (uri.getPackage() != null) {
                verifyPackage(uri.getPackage());
            }
        }

        private void verifyPackage(String packageName) throws Exception {
            if (!this.mValidPackages.contains(packageName)) {
                throw new Exception("Package not available");
            }
        }
    }

    protected static class DbEntry extends ItemInfo implements Comparable<DbEntry> {
        private Map<String, Set<Integer>> mFolderItems = new HashMap();
        private String mIntent;
        private String mProvider;

        protected DbEntry() {
        }

        @Override // java.lang.Comparable
        public int compareTo(DbEntry another) {
            if (this.screenId != another.screenId) {
                return Integer.compare(this.screenId, another.screenId);
            }
            if (this.cellY != another.cellY) {
                return -Integer.compare(this.cellY, another.cellY);
            }
            return Integer.compare(this.cellX, another.cellX);
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            return Objects.equals(this.mIntent, ((DbEntry) o).mIntent);
        }

        public int hashCode() {
            return Objects.hash(this.mIntent);
        }

        public void updateContentValues(ContentValues values) {
            values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(this.screenId));
            values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX));
            values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY));
            values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX));
            values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY));
        }
    }
}
