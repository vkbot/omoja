package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
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
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.widget.WidgetManagerHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class GridSizeMigrationTask {
    private static final boolean DEBUG = true;
    private static final String TAG = "GridSizeMigrationTask";
    private static final float WT_APPLICATION = 0.8f;
    private static final float WT_FOLDER_FACTOR = 0.5f;
    private static final float WT_SHORTCUT = 1.0f;
    private static final float WT_WIDGET_FACTOR = 0.6f;
    private static final float WT_WIDGET_MIN = 2.0f;
    protected final Context mContext;
    protected final SQLiteDatabase mDb;
    private final int mDestHotseatSize;
    private final boolean mShouldRemoveX;
    private final boolean mShouldRemoveY;
    private final int mSrcHotseatSize;
    private final int mSrcX;
    private final int mSrcY;
    private final String mTableName;
    private final int mTrgX;
    private final int mTrgY;
    private final HashSet<String> mValidPackages;
    protected final IntArray mEntryToRemove = new IntArray();
    protected final ArrayList<DbEntry> mCarryOver = new ArrayList<>();
    private final SparseArray<ContentValues> mUpdateOperations = new SparseArray<>();

    protected GridSizeMigrationTask(Context context, SQLiteDatabase db, HashSet<String> validPackages, boolean usePreviewTable, Point sourceSize, Point targetSize) {
        this.mContext = context;
        this.mDb = db;
        this.mValidPackages = validPackages;
        this.mTableName = usePreviewTable ? LauncherSettings.Favorites.PREVIEW_TABLE_NAME : LauncherSettings.Favorites.TABLE_NAME;
        int i = sourceSize.x;
        this.mSrcX = i;
        int i2 = sourceSize.y;
        this.mSrcY = i2;
        int i3 = targetSize.x;
        this.mTrgX = i3;
        int i4 = targetSize.y;
        this.mTrgY = i4;
        this.mShouldRemoveX = i3 < i;
        this.mShouldRemoveY = i4 < i2;
        this.mDestHotseatSize = -1;
        this.mSrcHotseatSize = -1;
    }

    protected GridSizeMigrationTask(Context context, SQLiteDatabase db, HashSet<String> validPackages, boolean usePreviewTable, int srcHotseatSize, int destHotseatSize) {
        this.mContext = context;
        this.mDb = db;
        this.mValidPackages = validPackages;
        this.mTableName = usePreviewTable ? LauncherSettings.Favorites.PREVIEW_TABLE_NAME : LauncherSettings.Favorites.TABLE_NAME;
        this.mSrcHotseatSize = srcHotseatSize;
        this.mDestHotseatSize = destHotseatSize;
        this.mTrgY = -1;
        this.mTrgX = -1;
        this.mSrcY = -1;
        this.mSrcX = -1;
        this.mShouldRemoveY = false;
        this.mShouldRemoveX = false;
    }

    private boolean applyOperations() throws Exception {
        int size = this.mUpdateOperations.size();
        for (int i = 0; i < size; i++) {
            this.mDb.update(this.mTableName, this.mUpdateOperations.valueAt(i), "_id=" + this.mUpdateOperations.keyAt(i), null);
        }
        if (!this.mEntryToRemove.isEmpty()) {
            Log.d(TAG, "Removing items: " + this.mEntryToRemove.toConcatString());
            this.mDb.delete(this.mTableName, Utilities.createDbSelectionQuery("_id", this.mEntryToRemove), null);
        }
        return size > 0 || !this.mEntryToRemove.isEmpty();
    }

    protected boolean migrateHotseat() throws Exception {
        ArrayList<DbEntry> arrayListLoadHotseatEntries = loadHotseatEntries();
        while (arrayListLoadHotseatEntries.size() > this.mDestHotseatSize) {
            DbEntry dbEntry = arrayListLoadHotseatEntries.get(arrayListLoadHotseatEntries.size() / 2);
            for (DbEntry dbEntry2 : arrayListLoadHotseatEntries) {
                if (dbEntry2.weight < dbEntry.weight) {
                    dbEntry = dbEntry2;
                }
            }
            this.mEntryToRemove.add(dbEntry.id);
            arrayListLoadHotseatEntries.remove(dbEntry);
        }
        int i = 0;
        for (DbEntry dbEntry3 : arrayListLoadHotseatEntries) {
            if (dbEntry3.screenId != i) {
                dbEntry3.screenId = i;
                dbEntry3.cellX = i;
                dbEntry3.cellY = 0;
                update(dbEntry3);
            }
            i++;
        }
        return applyOperations();
    }

    static IntArray getWorkspaceScreenIds(SQLiteDatabase db, String tableName) {
        return LauncherDbUtils.queryIntArray(db, tableName, LauncherSettings.Favorites.SCREEN, "container = -100", LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.SCREEN);
    }

    protected boolean migrateWorkspace() throws Exception {
        IntArray workspaceScreenIds = getWorkspaceScreenIds(this.mDb, this.mTableName);
        if (workspaceScreenIds.isEmpty()) {
            throw new Exception("Unable to get workspace screens");
        }
        for (int i = 0; i < workspaceScreenIds.size(); i++) {
            int i2 = workspaceScreenIds.get(i);
            Log.d(TAG, "Migrating " + i2);
            migrateScreen(i2);
        }
        if (!this.mCarryOver.isEmpty()) {
            IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
            for (DbEntry dbEntry : this.mCarryOver) {
                intSparseArrayMap.put(dbEntry.id, dbEntry);
            }
            do {
                OptimalPlacementSolution optimalPlacementSolution = new OptimalPlacementSolution(new GridOccupancy(this.mTrgX, this.mTrgY), deepCopy(this.mCarryOver), 0, true);
                optimalPlacementSolution.find();
                if (optimalPlacementSolution.finalPlacedItems.size() > 0) {
                    int i3 = LauncherSettings.Settings.call(this.mContext.getContentResolver(), LauncherSettings.Settings.METHOD_NEW_SCREEN_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
                    for (DbEntry dbEntry2 : optimalPlacementSolution.finalPlacedItems) {
                        if (!this.mCarryOver.remove(intSparseArrayMap.get(dbEntry2.id))) {
                            throw new Exception("Unable to find matching items");
                        }
                        dbEntry2.screenId = i3;
                        update(dbEntry2);
                    }
                } else {
                    throw new Exception("None of the items can be placed on an empty screen");
                }
            } while (!this.mCarryOver.isEmpty());
        }
        return applyOperations();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void migrateScreen(int screenId) {
        ArrayList<DbEntry> arrayListLoadWorkspaceEntries = loadWorkspaceEntries(screenId);
        float[] fArr = new float[2];
        int i = Integer.MAX_VALUE;
        float f = Float.MAX_VALUE;
        ArrayList<DbEntry> arrayList = null;
        int i2 = Integer.MAX_VALUE;
        float f2 = Float.MAX_VALUE;
        for (int i3 = 0; i3 < this.mSrcX; i3++) {
            int i4 = i;
            int i5 = i2;
            float f3 = f2;
            float f4 = f;
            ArrayList<DbEntry> arrayList2 = arrayList;
            for (int i6 = this.mSrcY - 1; i6 >= 0; i6--) {
                ArrayList<DbEntry> arrayListTryRemove = tryRemove(i3, i6, 0, deepCopy(arrayListLoadWorkspaceEntries), fArr);
                float f5 = fArr[0];
                if (f5 < f3 || (f5 == f3 && fArr[1] < f4)) {
                    float f6 = fArr[1];
                    if (this.mShouldRemoveX) {
                        i4 = i3;
                    }
                    if (this.mShouldRemoveY) {
                        i5 = i6;
                    }
                    arrayList2 = arrayListTryRemove;
                    f3 = f5;
                    f4 = f6;
                }
                if (!this.mShouldRemoveY) {
                    break;
                }
            }
            i = i4;
            i2 = i5;
            f2 = f3;
            f = f4;
            arrayList = arrayList2;
            if (!this.mShouldRemoveX) {
                break;
            }
        }
        ArrayList<DbEntry> arrayList3 = arrayList;
        Log.d(TAG, String.format("Removing row %d, column %d on screen %d", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(screenId)));
        IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
        for (DbEntry dbEntry : deepCopy(arrayListLoadWorkspaceEntries)) {
            intSparseArrayMap.put(dbEntry.id, dbEntry);
        }
        for (DbEntry dbEntry2 : arrayList3) {
            DbEntry dbEntry3 = (DbEntry) intSparseArrayMap.get(dbEntry2.id);
            intSparseArrayMap.remove(dbEntry2.id);
            if (!dbEntry2.columnsSame(dbEntry3)) {
                update(dbEntry2);
            }
        }
        Iterator it = intSparseArrayMap.iterator();
        while (it.hasNext()) {
            this.mCarryOver.add((DbEntry) it.next());
        }
        if (this.mCarryOver.isEmpty() || f2 != 0.0f) {
            return;
        }
        GridOccupancy gridOccupancy = new GridOccupancy(this.mTrgX, this.mTrgY);
        gridOccupancy.markCells(0, 0, this.mTrgX, 0, true);
        Iterator<DbEntry> it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            gridOccupancy.markCells((ItemInfo) it2.next(), true);
        }
        OptimalPlacementSolution optimalPlacementSolution = new OptimalPlacementSolution(gridOccupancy, deepCopy(this.mCarryOver), 0, true);
        optimalPlacementSolution.find();
        if (optimalPlacementSolution.lowestWeightLoss == 0.0f) {
            for (DbEntry dbEntry4 : optimalPlacementSolution.finalPlacedItems) {
                dbEntry4.screenId = screenId;
                update(dbEntry4);
            }
            this.mCarryOver.clear();
        }
    }

    protected void update(DbEntry item) {
        ContentValues contentValues = new ContentValues();
        item.addToContentValues(contentValues);
        this.mUpdateOperations.put(item.id, contentValues);
    }

    private ArrayList<DbEntry> tryRemove(int col, int row, int startY, ArrayList<DbEntry> items, float[] outLoss) {
        GridOccupancy gridOccupancy = new GridOccupancy(this.mTrgX, this.mTrgY);
        gridOccupancy.markCells(0, 0, this.mTrgX, startY, true);
        if (!this.mShouldRemoveX) {
            col = Integer.MAX_VALUE;
        }
        if (!this.mShouldRemoveY) {
            row = Integer.MAX_VALUE;
        }
        ArrayList<DbEntry> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        for (DbEntry dbEntry : items) {
            if ((dbEntry.cellX <= col && dbEntry.spanX + dbEntry.cellX > col) || (dbEntry.cellY <= row && dbEntry.spanY + dbEntry.cellY > row)) {
                arrayList2.add(dbEntry);
                if (dbEntry.cellX >= col) {
                    dbEntry.cellX--;
                }
                if (dbEntry.cellY >= row) {
                    dbEntry.cellY--;
                }
            } else {
                if (dbEntry.cellX > col) {
                    dbEntry.cellX--;
                }
                if (dbEntry.cellY > row) {
                    dbEntry.cellY--;
                }
                arrayList.add(dbEntry);
                gridOccupancy.markCells((ItemInfo) dbEntry, true);
            }
        }
        OptimalPlacementSolution optimalPlacementSolution = new OptimalPlacementSolution(this, gridOccupancy, arrayList2, startY);
        optimalPlacementSolution.find();
        arrayList.addAll(optimalPlacementSolution.finalPlacedItems);
        outLoss[0] = optimalPlacementSolution.lowestWeightLoss;
        outLoss[1] = optimalPlacementSolution.lowestMoveCost;
        return arrayList;
    }

    private class OptimalPlacementSolution {
        ArrayList<DbEntry> finalPlacedItems;
        private final boolean ignoreMove;
        private final ArrayList<DbEntry> itemsToPlace;
        float lowestMoveCost;
        float lowestWeightLoss;
        private final GridOccupancy occupied;
        private final int startY;

        public OptimalPlacementSolution(final GridSizeMigrationTask this$0, GridOccupancy occupied, ArrayList<DbEntry> itemsToPlace, int startY) {
            this(occupied, itemsToPlace, startY, false);
        }

        public OptimalPlacementSolution(GridOccupancy occupied, ArrayList<DbEntry> itemsToPlace, int startY, boolean ignoreMove) {
            this.lowestWeightLoss = Float.MAX_VALUE;
            this.lowestMoveCost = Float.MAX_VALUE;
            this.occupied = occupied;
            this.itemsToPlace = itemsToPlace;
            this.ignoreMove = ignoreMove;
            this.startY = startY;
            Collections.sort(itemsToPlace);
        }

        public void find() {
            find(0, 0.0f, 0.0f, new ArrayList<>());
        }

        public void find(int index, float weightLoss, float moveCost, ArrayList<DbEntry> itemsPlaced) {
            float f;
            float f2;
            int i;
            float f3;
            float f4;
            float f5 = weightLoss;
            float f6 = this.lowestWeightLoss;
            if (f5 < f6) {
                if (f5 != f6 || moveCost < this.lowestMoveCost) {
                    if (index >= this.itemsToPlace.size()) {
                        this.lowestWeightLoss = f5;
                        this.lowestMoveCost = moveCost;
                        this.finalPlacedItems = GridSizeMigrationTask.deepCopy(itemsPlaced);
                        return;
                    }
                    DbEntry dbEntry = this.itemsToPlace.get(index);
                    int i2 = dbEntry.cellX;
                    int i3 = dbEntry.cellY;
                    ArrayList<DbEntry> arrayList = new ArrayList<>(itemsPlaced.size() + 1);
                    arrayList.addAll(itemsPlaced);
                    arrayList.add(dbEntry);
                    if (dbEntry.spanX <= 1 && dbEntry.spanY <= 1) {
                        int i4 = Integer.MAX_VALUE;
                        int i5 = Integer.MAX_VALUE;
                        int i6 = Integer.MAX_VALUE;
                        for (int i7 = this.startY; i7 < GridSizeMigrationTask.this.mTrgY; i7++) {
                            for (int i8 = 0; i8 < GridSizeMigrationTask.this.mTrgX; i8++) {
                                if (this.occupied.cells[i8][i7]) {
                                    i4 = i4;
                                } else {
                                    int i9 = this.ignoreMove ? 0 : ((dbEntry.cellX - i8) * (dbEntry.cellX - i8)) + ((dbEntry.cellY - i7) * (dbEntry.cellY - i7));
                                    if (i9 < i6) {
                                        i5 = i7;
                                        i6 = i9;
                                        i4 = i8;
                                    }
                                }
                                i4 = i4;
                            }
                        }
                        if (i4 < GridSizeMigrationTask.this.mTrgX && i5 < GridSizeMigrationTask.this.mTrgY) {
                            if (i4 != i2) {
                                dbEntry.cellX = i4;
                                f3 = 1.0f;
                                f4 = moveCost + 1.0f;
                            } else {
                                f3 = 1.0f;
                                f4 = moveCost;
                            }
                            if (i5 != i3) {
                                dbEntry.cellY = i5;
                                f4 += f3;
                            }
                            if (this.ignoreMove) {
                                f4 = moveCost;
                            }
                            this.occupied.markCells((ItemInfo) dbEntry, true);
                            int i10 = index + 1;
                            find(i10, f5, f4, arrayList);
                            this.occupied.markCells((ItemInfo) dbEntry, false);
                            dbEntry.cellX = i2;
                            dbEntry.cellY = i3;
                            if (i10 >= this.itemsToPlace.size() || this.itemsToPlace.get(i10).weight < dbEntry.weight || this.ignoreMove) {
                                return;
                            }
                            find(i10, f5 + dbEntry.weight, moveCost, itemsPlaced);
                            return;
                        }
                        for (int i11 = index + 1; i11 < this.itemsToPlace.size(); i11++) {
                            f5 += this.itemsToPlace.get(i11).weight;
                        }
                        find(this.itemsToPlace.size(), f5 + dbEntry.weight, moveCost, itemsPlaced);
                        return;
                    }
                    int i12 = dbEntry.spanX;
                    int i13 = dbEntry.spanY;
                    for (int i14 = this.startY; i14 < GridSizeMigrationTask.this.mTrgY; i14++) {
                        int i15 = 0;
                        while (i15 < GridSizeMigrationTask.this.mTrgX) {
                            if (i15 != i2) {
                                dbEntry.cellX = i15;
                                f = 1.0f;
                                f2 = moveCost + 1.0f;
                            } else {
                                f = 1.0f;
                                f2 = moveCost;
                            }
                            if (i14 != i3) {
                                dbEntry.cellY = i14;
                                f2 += f;
                            }
                            if (this.ignoreMove) {
                                f2 = moveCost;
                            }
                            if (this.occupied.isRegionVacant(i15, i14, i12, i13)) {
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(index + 1, f5, f2, arrayList);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                            }
                            if (i12 > dbEntry.minSpanX && this.occupied.isRegionVacant(i15, i14, i12 - 1, i13)) {
                                dbEntry.spanX--;
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(index + 1, f5, f2 + 1.0f, arrayList);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                                dbEntry.spanX++;
                            }
                            if (i13 > dbEntry.minSpanY && this.occupied.isRegionVacant(i15, i14, i12, i13 - 1)) {
                                dbEntry.spanY--;
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(index + 1, f5, f2 + 1.0f, arrayList);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                                dbEntry.spanY++;
                            }
                            if (i13 <= dbEntry.minSpanY || i12 <= dbEntry.minSpanX) {
                                i = i12;
                            } else {
                                i = i12;
                                if (this.occupied.isRegionVacant(i15, i14, i12 - 1, i13 - 1)) {
                                    dbEntry.spanX--;
                                    dbEntry.spanY--;
                                    this.occupied.markCells((ItemInfo) dbEntry, true);
                                    find(index + 1, f5, f2 + GridSizeMigrationTask.WT_WIDGET_MIN, arrayList);
                                    this.occupied.markCells((ItemInfo) dbEntry, false);
                                    dbEntry.spanX++;
                                    dbEntry.spanY++;
                                }
                                dbEntry.cellX = i2;
                                dbEntry.cellY = i3;
                                i15++;
                                i12 = i;
                            }
                            dbEntry.cellX = i2;
                            dbEntry.cellY = i3;
                            i15++;
                            i12 = i;
                        }
                    }
                    find(index + 1, f5 + dbEntry.weight, moveCost, itemsPlaced);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:27:0x008e  */
    private ArrayList<DbEntry> loadHotseatEntries() {
        float f;
        Cursor cursorQueryWorkspace = queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.ITEM_TYPE, LauncherSettings.Favorites.INTENT, LauncherSettings.Favorites.SCREEN}, "container = -101");
        int columnIndexOrThrow = cursorQueryWorkspace.getColumnIndexOrThrow("_id");
        int columnIndexOrThrow2 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.ITEM_TYPE);
        int columnIndexOrThrow3 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
        int columnIndexOrThrow4 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
        ArrayList<DbEntry> arrayList = new ArrayList<>();
        while (cursorQueryWorkspace.moveToNext()) {
            DbEntry dbEntry = new DbEntry();
            dbEntry.id = cursorQueryWorkspace.getInt(columnIndexOrThrow);
            dbEntry.itemType = cursorQueryWorkspace.getInt(columnIndexOrThrow2);
            dbEntry.screenId = cursorQueryWorkspace.getInt(columnIndexOrThrow4);
            if (dbEntry.screenId >= this.mSrcHotseatSize) {
                this.mEntryToRemove.add(dbEntry.id);
            } else {
                try {
                    int i = dbEntry.itemType;
                    if (i == 0 || i == 1) {
                        verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow3));
                        if (dbEntry.itemType == 0) {
                            f = WT_APPLICATION;
                        } else {
                            f = 1.0f;
                        }
                        dbEntry.weight = f;
                    } else if (i == 2) {
                        int folderItemsCount = getFolderItemsCount(dbEntry.id);
                        if (folderItemsCount == 0) {
                            throw new Exception("Folder is empty");
                        }
                        dbEntry.weight = folderItemsCount * 0.5f;
                    } else if (i == 6) {
                        verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow3));
                        if (dbEntry.itemType == 0) {
                            f = WT_APPLICATION;
                        } else {
                            f = 1.0f;
                        }
                        dbEntry.weight = f;
                    } else {
                        throw new Exception("Invalid item type");
                    }
                    arrayList.add(dbEntry);
                } catch (Exception e) {
                    Log.d(TAG, "Removing item " + dbEntry.id, e);
                    this.mEntryToRemove.add(dbEntry.id);
                }
            }
        }
        cursorQueryWorkspace.close();
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0141  */
    /* JADX WARN: Code duplicated, block: B:49:0x0145  */
    protected ArrayList<DbEntry> loadWorkspaceEntries(int screen) {
        float f;
        screen = screen;
        Cursor cursorQueryWorkspace = queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.ITEM_TYPE, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, LauncherSettings.Favorites.INTENT, LauncherSettings.Favorites.APPWIDGET_PROVIDER, LauncherSettings.Favorites.APPWIDGET_ID}, "container = -100 AND screen = " + screen);
        int columnIndexOrThrow = cursorQueryWorkspace.getColumnIndexOrThrow("_id");
        int columnIndexOrThrow2 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.ITEM_TYPE);
        int columnIndexOrThrow3 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
        int columnIndexOrThrow4 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
        int columnIndexOrThrow5 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
        int columnIndexOrThrow6 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
        int columnIndexOrThrow7 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
        int columnIndexOrThrow8 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
        int columnIndexOrThrow9 = cursorQueryWorkspace.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_ID);
        ArrayList<DbEntry> arrayList = new ArrayList<>();
        WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(this.mContext);
        while (cursorQueryWorkspace.moveToNext()) {
            DbEntry dbEntry = new DbEntry();
            dbEntry.id = cursorQueryWorkspace.getInt(columnIndexOrThrow);
            dbEntry.itemType = cursorQueryWorkspace.getInt(columnIndexOrThrow2);
            dbEntry.cellX = cursorQueryWorkspace.getInt(columnIndexOrThrow3);
            dbEntry.cellY = cursorQueryWorkspace.getInt(columnIndexOrThrow4);
            dbEntry.spanX = cursorQueryWorkspace.getInt(columnIndexOrThrow5);
            dbEntry.spanY = cursorQueryWorkspace.getInt(columnIndexOrThrow6);
            dbEntry.screenId = screen;
            try {
                int i = dbEntry.itemType;
                if (i == 0 || i == 1) {
                    verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow7));
                    if (dbEntry.itemType == 0) {
                        f = WT_APPLICATION;
                    } else {
                        f = 1.0f;
                    }
                    dbEntry.weight = f;
                } else if (i == 2) {
                    int folderItemsCount = getFolderItemsCount(dbEntry.id);
                    if (folderItemsCount == 0) {
                        throw new Exception("Folder is empty");
                    }
                    dbEntry.weight = folderItemsCount * 0.5f;
                } else if (i == 4) {
                    verifyPackage(ComponentName.unflattenFromString(cursorQueryWorkspace.getString(columnIndexOrThrow8)).getPackageName());
                    dbEntry.weight = Math.max(WT_WIDGET_MIN, dbEntry.spanX * WT_WIDGET_FACTOR * dbEntry.spanY);
                    LauncherAppWidgetProviderInfo launcherAppWidgetInfo = widgetManagerHelper.getLauncherAppWidgetInfo(cursorQueryWorkspace.getInt(columnIndexOrThrow9));
                    Point minSpans = launcherAppWidgetInfo != null ? launcherAppWidgetInfo.getMinSpans() : null;
                    if (minSpans != null) {
                        dbEntry.minSpanX = minSpans.x > 0 ? minSpans.x : dbEntry.spanX;
                        dbEntry.minSpanY = minSpans.y > 0 ? minSpans.y : dbEntry.spanY;
                    } else {
                        dbEntry.minSpanY = 2;
                        dbEntry.minSpanX = 2;
                    }
                    if (dbEntry.minSpanX > this.mTrgX || dbEntry.minSpanY > this.mTrgY) {
                        throw new Exception("Widget can't be resized down to fit the grid");
                    }
                } else if (i == 6) {
                    verifyIntent(cursorQueryWorkspace.getString(columnIndexOrThrow7));
                    if (dbEntry.itemType == 0) {
                        f = WT_APPLICATION;
                    } else {
                        f = 1.0f;
                    }
                    dbEntry.weight = f;
                } else {
                    throw new Exception("Invalid item type");
                }
                arrayList.add(dbEntry);
            } catch (Exception e) {
                Log.d(TAG, "Removing item " + dbEntry.id, e);
                this.mEntryToRemove.add(dbEntry.id);
                columnIndexOrThrow = columnIndexOrThrow;
            }
        }
        cursorQueryWorkspace.close();
        return arrayList;
    }

    private int getFolderItemsCount(int folderId) {
        Cursor cursorQueryWorkspace = queryWorkspace(new String[]{"_id", LauncherSettings.Favorites.INTENT}, "container = " + folderId);
        int i = 0;
        while (cursorQueryWorkspace.moveToNext()) {
            try {
                verifyIntent(cursorQueryWorkspace.getString(1));
                i++;
            } catch (Exception unused) {
                this.mEntryToRemove.add(cursorQueryWorkspace.getInt(0));
            }
        }
        cursorQueryWorkspace.close();
        return i;
    }

    protected Cursor queryWorkspace(String[] columns, String where) {
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

    protected static class DbEntry extends ItemInfo implements Comparable<DbEntry> {
        public float weight;

        public DbEntry copy() {
            DbEntry dbEntry = new DbEntry();
            dbEntry.copyFrom(this);
            dbEntry.weight = this.weight;
            dbEntry.minSpanX = this.minSpanX;
            dbEntry.minSpanY = this.minSpanY;
            return dbEntry;
        }

        @Override // java.lang.Comparable
        public int compareTo(DbEntry another) {
            if (this.itemType == 4) {
                if (another.itemType == 4) {
                    return (another.spanY * another.spanX) - (this.spanX * this.spanY);
                }
                return -1;
            }
            if (another.itemType == 4) {
                return 1;
            }
            return Float.compare(another.weight, this.weight);
        }

        public boolean columnsSame(DbEntry org2) {
            return org2.cellX == this.cellX && org2.cellY == this.cellY && org2.spanX == this.spanX && org2.spanY == this.spanY && org2.screenId == this.screenId;
        }

        public void addToContentValues(ContentValues values) {
            values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(this.screenId));
            values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX));
            values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY));
            values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX));
            values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<DbEntry> deepCopy(ArrayList<DbEntry> src) {
        ArrayList<DbEntry> arrayList = new ArrayList<>(src.size());
        Iterator<DbEntry> it = src.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        return arrayList;
    }

    public static void markForMigration(Context context, int gridX, int gridY, int hotseatSize) {
        Utilities.getPrefs(context).edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, Utilities.getPointString(gridX, gridY)).putInt(InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT, hotseatSize).apply();
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

    /* JADX WARN: Code duplicated, block: B:101:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:107:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:109:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:? A[Catch: Exception -> 0x018a, all -> 0x01c7, SYNTHETIC, TRY_LEAVE, TryCatch #2 {Exception -> 0x018a, blocks: (B:91:0x0189, B:90:0x0186), top: B:113:0x0186 }] */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x009d  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    public static boolean migrateGridIfNeeded(Context context, InvariantDeviceProfile idp) throws Throwable {
        String str;
        SharedPreferences sharedPreferences;
        String str2;
        Throwable th;
        int restoreHotseatAndGridSize;
        boolean z;
        String str3;
        HashSet<String> hashSet;
        boolean z2 = idp != null;
        InvariantDeviceProfile idp2 = !z2 ? LauncherAppState.getIDP(context) : idp;
        if (!needsToMigrate(context, idp2)) {
            return true;
        }
        SharedPreferences prefs = Utilities.getPrefs(context);
        String pointString = Utilities.getPointString(idp2.numColumns, idp2.numRows);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = (LauncherDbUtils.SQLiteTransaction) LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_NEW_TRANSACTION).getBinder(LauncherSettings.Settings.EXTRA_VALUE);
            try {
                int i = prefs.getInt(InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT, idp2.numHotseatIcons);
                Point point = Utilities.parsePoint(prefs.getString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, pointString));
                if (z2) {
                    try {
                        LauncherDbUtils.copyTable(sQLiteTransaction.getDb(), LauncherSettings.Favorites.TABLE_NAME, sQLiteTransaction.getDb(), LauncherSettings.Favorites.PREVIEW_TABLE_NAME, context);
                    } catch (Throwable th2) {
                        th = th2;
                        str = pointString;
                        sharedPreferences = prefs;
                        str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                        if (sQLiteTransaction == null) {
                            throw th;
                        }
                        try {
                            sQLiteTransaction.close();
                            throw th;
                        } catch (Throwable th3) {
                            try {
                                try {
                                    th.addSuppressed(th3);
                                    throw th;
                                } catch (Exception e) {
                                    e = e;
                                    Log.e(TAG, "Error during preview grid migration", e);
                                    Log.v(TAG, "Preview workspace migration completed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                    if (!z2) {
                                        return false;
                                    }
                                    sharedPreferences.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, str).putInt(str2, idp2.numHotseatIcons).apply();
                                    return false;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                Log.v(TAG, "Preview workspace migration completed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                if (!z2) {
                                    sharedPreferences.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, str).putInt(str2, idp2.numHotseatIcons).apply();
                                }
                                throw th;
                            }
                        }
                    }
                }
                str = pointString;
                try {
                    GridBackupTable gridBackupTable = new GridBackupTable(context, sQLiteTransaction.getDb(), i, point.x, point.y);
                    if (z2) {
                        try {
                            if (gridBackupTable.restoreToPreviewIfBackupExists()) {
                                restoreHotseatAndGridSize = gridBackupTable.getRestoreHotseatAndGridSize(point);
                                z = true;
                            } else {
                                restoreHotseatAndGridSize = i;
                                z = false;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            sharedPreferences = prefs;
                            str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                            if (sQLiteTransaction == null) {
                                throw th;
                            }
                            sQLiteTransaction.close();
                            throw th;
                        }
                    } else if (gridBackupTable.backupOrRestoreAsNeeded()) {
                        restoreHotseatAndGridSize = gridBackupTable.getRestoreHotseatAndGridSize(point);
                        z = true;
                    } else {
                        restoreHotseatAndGridSize = i;
                        z = false;
                    }
                    HashSet<String> validPackages = getValidPackages(context);
                    if (restoreHotseatAndGridSize != idp2.numHotseatIcons) {
                        try {
                            SQLiteDatabase db = sQLiteTransaction.getDb();
                            int i2 = idp2.numHotseatIcons;
                            str3 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                            hashSet = validPackages;
                            sharedPreferences = prefs;
                            try {
                                if (new GridSizeMigrationTask(context, db, validPackages, z2, restoreHotseatAndGridSize, i2).migrateHotseat()) {
                                    z = true;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                th = th;
                                str2 = str3;
                                if (sQLiteTransaction == null) {
                                    throw th;
                                }
                                sQLiteTransaction.close();
                                throw th;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            sharedPreferences = prefs;
                            str3 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                        }
                    } else {
                        sharedPreferences = prefs;
                        str3 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                        hashSet = validPackages;
                    }
                    try {
                        if (new MultiStepMigrationTask(hashSet, context, sQLiteTransaction.getDb(), z2).migrate(point, new Point(idp2.numColumns, idp2.numRows)) || z) {
                            Cursor cursorQuery = context.getContentResolver().query(z2 ? LauncherSettings.Favorites.PREVIEW_CONTENT_URI : LauncherSettings.Favorites.CONTENT_URI, null, null, null, null);
                            boolean zMoveToNext = cursorQuery.moveToNext();
                            cursorQuery.close();
                            if (!zMoveToNext) {
                                throw new Exception("Removed every thing during grid resize");
                            }
                        }
                        sQLiteTransaction.commit();
                        if (!z2) {
                            LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_REFRESH_BACKUP_TABLE);
                        }
                        if (sQLiteTransaction != null) {
                            try {
                                sQLiteTransaction.close();
                            } catch (Exception e2) {
                                e = e2;
                                str2 = str3;
                                Log.e(TAG, "Error during preview grid migration", e);
                                Log.v(TAG, "Preview workspace migration completed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                if (!z2) {
                                    return false;
                                }
                                sharedPreferences.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, str).putInt(str2, idp2.numHotseatIcons).apply();
                                return false;
                            } catch (Throwable th8) {
                                th = th8;
                                str2 = str3;
                                Log.v(TAG, "Preview workspace migration completed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                if (!z2) {
                                    sharedPreferences.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, str).putInt(str2, idp2.numHotseatIcons).apply();
                                }
                                throw th;
                            }
                        }
                        Log.v(TAG, "Preview workspace migration completed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        if (z2) {
                            return true;
                        }
                        sharedPreferences.edit().putString(InvariantDeviceProfile.KEY_MIGRATION_SRC_WORKSPACE_SIZE, str).putInt(str3, idp2.numHotseatIcons).apply();
                        return true;
                    } catch (Throwable th9) {
                        th = th9;
                        str2 = str3;
                        th = th;
                        if (sQLiteTransaction == null) {
                            throw th;
                        }
                        sQLiteTransaction.close();
                        throw th;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    sharedPreferences = prefs;
                    str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
                    th = th;
                    if (sQLiteTransaction == null) {
                        throw th;
                    }
                    sQLiteTransaction.close();
                    throw th;
                }
            } catch (Throwable th11) {
                th = th11;
                str = pointString;
            }
        } catch (Exception e3) {
            e = e3;
            str = pointString;
            sharedPreferences = prefs;
            str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
        } catch (Throwable th12) {
            th = th12;
            str = pointString;
            sharedPreferences = prefs;
            str2 = InvariantDeviceProfile.KEY_MIGRATION_SRC_HOTSEAT_COUNT;
        }
    }

    protected static HashSet<String> getValidPackages(Context context) {
        HashSet<String> hashSet = new HashSet<>();
        Iterator<PackageInfo> it = context.getPackageManager().getInstalledPackages(8192).iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().packageName);
        }
        return hashSet;
    }

    public static IntSparseArrayMap<Object> removeBrokenHotseatItems(Context context) throws Exception {
        LauncherDbUtils.SQLiteTransaction sQLiteTransaction = (LauncherDbUtils.SQLiteTransaction) LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_NEW_TRANSACTION).getBinder(LauncherSettings.Settings.EXTRA_VALUE);
        try {
            GridSizeMigrationTask gridSizeMigrationTask = new GridSizeMigrationTask(context, sQLiteTransaction.getDb(), getValidPackages(context), false, Integer.MAX_VALUE, Integer.MAX_VALUE);
            ArrayList<DbEntry> arrayListLoadHotseatEntries = gridSizeMigrationTask.loadHotseatEntries();
            gridSizeMigrationTask.applyOperations();
            IntSparseArrayMap<Object> intSparseArrayMap = new IntSparseArrayMap<>();
            for (DbEntry dbEntry : arrayListLoadHotseatEntries) {
                intSparseArrayMap.put(dbEntry.screenId, dbEntry);
            }
            sQLiteTransaction.commit();
            if (sQLiteTransaction != null) {
                sQLiteTransaction.close();
            }
            return intSparseArrayMap;
        } catch (Throwable th) {
            if (sQLiteTransaction != null) {
                try {
                    sQLiteTransaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    protected static class MultiStepMigrationTask {
        private final Context mContext;
        private final SQLiteDatabase mDb;
        private final boolean mUsePreviewTable;
        private final HashSet<String> mValidPackages;

        public MultiStepMigrationTask(HashSet<String> validPackages, Context context, SQLiteDatabase db, boolean usePreviewTable) {
            this.mValidPackages = validPackages;
            this.mContext = context;
            this.mDb = db;
            this.mUsePreviewTable = usePreviewTable;
        }

        public boolean migrate(Point sourceSize, Point targetSize) throws Exception {
            boolean z = false;
            if (!targetSize.equals(sourceSize)) {
                if (sourceSize.x < targetSize.x) {
                    sourceSize.x = targetSize.x;
                }
                if (sourceSize.y < targetSize.y) {
                    sourceSize.y = targetSize.y;
                }
                while (!targetSize.equals(sourceSize)) {
                    Point point = new Point(sourceSize);
                    if (targetSize.x < point.x) {
                        point.x--;
                    }
                    if (targetSize.y < point.y) {
                        point.y--;
                    }
                    if (runStepTask(sourceSize, point)) {
                        z = true;
                    }
                    sourceSize.set(point.x, point.y);
                }
            }
            return z;
        }

        protected boolean runStepTask(Point sourceSize, Point nextSize) throws Exception {
            return new GridSizeMigrationTask(this.mContext, this.mDb, this.mValidPackages, this.mUsePreviewTable, sourceSize, nextSize).migrateWorkspace();
        }
    }
}
