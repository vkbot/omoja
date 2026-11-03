package com.android.launcher3.provider;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.SparseBooleanArray;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.DefaultLayoutParser;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.PackageManagerHelper;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class ImportDataTask {
    private static final int BATCH_INSERT_SIZE = 15;
    public static final String KEY_DATA_IMPORT_SRC_AUTHORITY = "data_import_src_authority";
    public static final String KEY_DATA_IMPORT_SRC_PKG = "data_import_src_pkg";
    private static final int MIN_ITEM_COUNT_FOR_SUCCESSFUL_MIGRATION = 6;
    private static final String TAG = "ImportDataTask";
    private final Context mContext;
    private int mHotseatSize;
    private int mMaxGridSizeX;
    private int mMaxGridSizeY;
    private final Uri mOtherFavoritesUri;

    private ImportDataTask(Context context, String sourceAuthority) {
        this.mContext = context;
        this.mOtherFavoritesUri = Uri.parse("content://" + sourceAuthority + "/favorites");
    }

    public boolean importWorkspace() throws Exception {
        FileLog.d(TAG, "Importing DB from " + this.mOtherFavoritesUri);
        this.mMaxGridSizeY = 0;
        this.mMaxGridSizeX = 0;
        this.mHotseatSize = 0;
        importWorkspaceItems();
        GridSizeMigrationTask.markForMigration(this.mContext, this.mMaxGridSizeX, this.mMaxGridSizeY, this.mHotseatSize);
        LauncherSettings.Settings.call(this.mContext.getContentResolver(), LauncherSettings.Settings.METHOD_CLEAR_EMPTY_DB_FLAG);
        return true;
    }

    private void importWorkspaceItems() throws Exception {
        String str;
        int i;
        Intent intent;
        HashSet hashSet;
        String str2 = LauncherSettings.Favorites.APPWIDGET_PROVIDER;
        String string = Long.toString(UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(Process.myUserHandle()));
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(15);
        HashSet hashSet2 = new HashSet();
        ArrayList<ContentProviderOperation> arrayList2 = arrayList;
        Cursor cursorQuery = this.mContext.getContentResolver().query(this.mOtherFavoritesUri, null, "profileId = ?", new String[]{string}, "container , screen");
        try {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
            String str3 = "_id";
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
            HashSet hashSet3 = hashSet2;
            int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.TITLE);
            String str4 = LauncherSettings.Favorites.TITLE;
            int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.CONTAINER);
            int i2 = columnIndexOrThrow3;
            int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.ITEM_TYPE);
            String str5 = LauncherSettings.Favorites.CONTAINER;
            int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
            String str6 = LauncherSettings.Favorites.ITEM_TYPE;
            int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
            String str7 = LauncherSettings.Favorites.SCREEN;
            int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
            String str8 = LauncherSettings.Favorites.CELLX;
            int columnIndexOrThrow9 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
            String str9 = LauncherSettings.Favorites.CELLY;
            int columnIndexOrThrow10 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
            String str10 = LauncherSettings.Favorites.SPANX;
            int columnIndexOrThrow11 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
            String str11 = LauncherSettings.Favorites.SPANY;
            int columnIndexOrThrow12 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.RANK);
            String str12 = LauncherSettings.Favorites.RANK;
            int i3 = columnIndexOrThrow12;
            int columnIndexOrThrow13 = cursorQuery.getColumnIndexOrThrow("icon");
            String str13 = LauncherSettings.Favorites.INTENT;
            String str14 = "icon";
            int columnIndexOrThrow14 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.ICON_PACKAGE);
            int i4 = columnIndexOrThrow13;
            String str15 = LauncherSettings.Favorites.ICON_PACKAGE;
            int columnIndexOrThrow15 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.ICON_RESOURCE);
            String str16 = LauncherSettings.Favorites.ICON_RESOURCE;
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int i5 = columnIndexOrThrow15;
            ContentValues contentValues = new ContentValues();
            int i6 = columnIndexOrThrow14;
            int i7 = 0;
            int i8 = 0;
            Integer numValueOf = null;
            while (true) {
                int i9 = columnIndexOrThrow2;
                String str17 = str2;
                if (!cursorQuery.moveToNext()) {
                    break;
                }
                contentValues.clear();
                int i10 = cursorQuery.getInt(columnIndexOrThrow);
                int iMax = Math.max(i7, i10);
                columnIndexOrThrow = columnIndexOrThrow;
                int i11 = cursorQuery.getInt(columnIndexOrThrow5);
                columnIndexOrThrow5 = columnIndexOrThrow5;
                int i12 = cursorQuery.getInt(columnIndexOrThrow4);
                int i13 = cursorQuery.getInt(columnIndexOrThrow7);
                int i14 = cursorQuery.getInt(columnIndexOrThrow8);
                int i15 = cursorQuery.getInt(columnIndexOrThrow9);
                int i16 = cursorQuery.getInt(columnIndexOrThrow10);
                int i17 = cursorQuery.getInt(columnIndexOrThrow11);
                i7 = iMax;
                columnIndexOrThrow11 = columnIndexOrThrow11;
                if (i12 == -101) {
                    this.mHotseatSize = Math.max(this.mHotseatSize, i13 + 1);
                } else if (i12 != -100) {
                    if (!sparseBooleanArray.get(i12)) {
                        FileLog.d(TAG, String.format("Skipping item %d, type %d not in a valid folder %d", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
                        columnIndexOrThrow2 = i9;
                        str2 = str17;
                    }
                } else if (i13 < 0) {
                    FileLog.d(TAG, String.format("Skipping item %d, type %d not on a valid screen %d", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i13)));
                    columnIndexOrThrow2 = i9;
                    str2 = str17;
                } else {
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i13);
                    }
                    this.mMaxGridSizeX = Math.max(this.mMaxGridSizeX, i14 + i16);
                    this.mMaxGridSizeY = Math.max(this.mMaxGridSizeY, i15 + i17);
                }
                if (i11 == 0 || i11 == 1) {
                    str = str17;
                    int i18 = i11;
                    i9 = i9;
                    Intent uri = Intent.parseUri(cursorQuery.getString(i9), 0);
                    if (PackageManagerHelper.isLauncherAppTarget(uri)) {
                        i6 = i6;
                        i18 = 0;
                    } else {
                        int i19 = i6;
                        String string2 = cursorQuery.getString(i19);
                        i6 = i19;
                        String str18 = str15;
                        contentValues.put(str18, string2);
                        str15 = str18;
                        int i20 = i5;
                        String string3 = cursorQuery.getString(i20);
                        i5 = i20;
                        String str19 = str16;
                        contentValues.put(str19, string3);
                        str16 = str19;
                    }
                    byte[] blob = cursorQuery.getBlob(i4);
                    i4 = i4;
                    String str20 = str14;
                    contentValues.put(str20, blob);
                    str14 = str20;
                    String str21 = str13;
                    contentValues.put(str21, uri.toUri(0));
                    int i21 = i3;
                    Integer numValueOf2 = Integer.valueOf(cursorQuery.getInt(i21));
                    i3 = i21;
                    String str22 = str12;
                    contentValues.put(str22, numValueOf2);
                    str12 = str22;
                    i = 1;
                    contentValues.put(LauncherSettings.Favorites.RESTORED, (Integer) 1);
                    intent = uri;
                    i11 = i18;
                    str13 = str21;
                } else {
                    if (i11 != 2) {
                        if (i11 != 4) {
                            FileLog.d(TAG, String.format("Skipping item %d, not a valid type %d", Integer.valueOf(i10), Integer.valueOf(i11)));
                            str12 = str12;
                            i6 = i6;
                            str = str17;
                            sparseBooleanArray = sparseBooleanArray;
                            i9 = i9;
                        } else {
                            contentValues.put(LauncherSettings.Favorites.RESTORED, (Integer) 7);
                            str = str17;
                            contentValues.put(str, cursorQuery.getString(columnIndexOrThrow6));
                            intent = null;
                        }
                        str2 = str;
                        sparseBooleanArray = sparseBooleanArray;
                        str12 = str12;
                        columnIndexOrThrow2 = i9;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow5 = columnIndexOrThrow5;
                        i7 = i7;
                        i6 = i6;
                    } else {
                        str = str17;
                        sparseBooleanArray.put(i10, true);
                        intent = new Intent();
                    }
                    i = 1;
                    sparseBooleanArray = sparseBooleanArray;
                }
                if (i12 != -101) {
                    hashSet = hashSet3;
                } else if (intent == null) {
                    Object[] objArr = new Object[i];
                    objArr[0] = Integer.valueOf(i10);
                    FileLog.d(TAG, String.format("Skipping item %d, null intent on hotseat", objArr));
                    str2 = str;
                    sparseBooleanArray = sparseBooleanArray;
                    str12 = str12;
                    columnIndexOrThrow2 = i9;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow5 = columnIndexOrThrow5;
                    i7 = i7;
                    i6 = i6;
                } else {
                    if (intent.getComponent() != null) {
                        intent.setPackage(intent.getComponent().getPackageName());
                    }
                    hashSet = hashSet3;
                    hashSet.add(getPackage(intent));
                }
                Integer numValueOf3 = Integer.valueOf(i10);
                String str23 = str3;
                contentValues.put(str23, numValueOf3);
                String str24 = str6;
                contentValues.put(str24, Integer.valueOf(i11));
                str5 = str5;
                contentValues.put(str5, Integer.valueOf(i12));
                str6 = str24;
                String str25 = str7;
                contentValues.put(str25, Integer.valueOf(i13));
                str7 = str25;
                String str26 = str8;
                contentValues.put(str26, Integer.valueOf(i14));
                str8 = str26;
                String str27 = str9;
                contentValues.put(str27, Integer.valueOf(i15));
                str9 = str27;
                String str28 = str10;
                contentValues.put(str28, Integer.valueOf(i16));
                str10 = str28;
                String str29 = str11;
                contentValues.put(str29, Integer.valueOf(i17));
                str11 = str29;
                int i22 = i2;
                String string4 = cursorQuery.getString(i22);
                i2 = i22;
                String str30 = str4;
                contentValues.put(str30, string4);
                str4 = str30;
                ArrayList<ContentProviderOperation> arrayList3 = arrayList2;
                arrayList3.add(ContentProviderOperation.newInsert(LauncherSettings.Favorites.CONTENT_URI).withValues(contentValues).build());
                if (i12 < 0) {
                    i8++;
                }
                if (arrayList3.size() >= 15) {
                    this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, arrayList3);
                    arrayList3.clear();
                }
                arrayList2 = arrayList3;
                str3 = str23;
                hashSet3 = hashSet;
                sparseBooleanArray = sparseBooleanArray;
                str12 = str12;
                columnIndexOrThrow2 = i9;
                i6 = i6;
                str2 = str;
            }
            HashSet hashSet4 = hashSet3;
            ArrayList<ContentProviderOperation> arrayList4 = arrayList2;
            int i23 = i8;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            FileLog.d(TAG, i23 + " items imported from external source");
            if (i23 < 6) {
                throw new Exception("Insufficient data");
            }
            if (!arrayList4.isEmpty()) {
                this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, arrayList4);
                arrayList4.clear();
            }
            IntSparseArrayMap<Object> intSparseArrayMapRemoveBrokenHotseatItems = GridSizeMigrationTask.removeBrokenHotseatItems(this.mContext);
            int i24 = LauncherAppState.getIDP(this.mContext).numHotseatIcons;
            if (intSparseArrayMapRemoveBrokenHotseatItems.size() < i24) {
                new HotseatLayoutParser(this.mContext, new HotseatParserCallback(hashSet4, intSparseArrayMapRemoveBrokenHotseatItems, arrayList4, i7 + 1, i24)).loadLayout(null, new IntArray());
                this.mHotseatSize = intSparseArrayMapRemoveBrokenHotseatItems.keyAt(intSparseArrayMapRemoveBrokenHotseatItems.size() - 1) + 1;
                if (arrayList4.isEmpty()) {
                    return;
                }
                this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, arrayList4);
            }
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            try {
                cursorQuery.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPackage(Intent intent) {
        return intent.getComponent() != null ? intent.getComponent().getPackageName() : intent.getPackage();
    }

    public static boolean performImportIfPossible(Context context) throws Exception {
        SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
        String string = devicePrefs.getString(KEY_DATA_IMPORT_SRC_PKG, "");
        String string2 = devicePrefs.getString(KEY_DATA_IMPORT_SRC_AUTHORITY, "");
        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
            devicePrefs.edit().remove(KEY_DATA_IMPORT_SRC_PKG).remove(KEY_DATA_IMPORT_SRC_AUTHORITY).commit();
            if (!LauncherSettings.Settings.call(context.getContentResolver(), LauncherSettings.Settings.METHOD_WAS_EMPTY_DB_CREATED).getBoolean(LauncherSettings.Settings.EXTRA_VALUE, false)) {
                return false;
            }
            for (ProviderInfo providerInfo : context.getPackageManager().queryContentProviders((String) null, context.getApplicationInfo().uid, 0)) {
                if (string.equals(providerInfo.packageName)) {
                    if ((providerInfo.applicationInfo.flags & 1) == 0) {
                        return false;
                    }
                    if (string2.equals(providerInfo.authority) && (TextUtils.isEmpty(providerInfo.readPermission) || context.checkPermission(providerInfo.readPermission, Process.myPid(), Process.myUid()) == 0)) {
                        return new ImportDataTask(context, string2).importWorkspace();
                    }
                }
            }
        }
        return false;
    }

    private static class HotseatLayoutParser extends DefaultLayoutParser {
        public HotseatLayoutParser(Context context, AutoInstallsLayout.LayoutParserCallback callback) {
            super(context, null, callback, context.getResources(), LauncherAppState.getIDP(context).defaultLayoutId);
        }

        @Override // com.android.launcher3.DefaultLayoutParser, com.android.launcher3.AutoInstallsLayout
        protected ArrayMap<String, AutoInstallsLayout.TagParser> getLayoutElementsMap() {
            ArrayMap<String, AutoInstallsLayout.TagParser> arrayMap = new ArrayMap<>();
            arrayMap.put("favorite", new DefaultLayoutParser.AppShortcutWithUriParser());
            arrayMap.put("shortcut", new DefaultLayoutParser.UriShortcutParser(this.mSourceRes));
            arrayMap.put("resolve", new DefaultLayoutParser.ResolveParser());
            return arrayMap;
        }
    }

    private static class HotseatParserCallback implements AutoInstallsLayout.LayoutParserCallback {
        private final HashSet<String> mExistingApps;
        private final IntSparseArrayMap<Object> mExistingItems;
        private final ArrayList<ContentProviderOperation> mOutOps;
        private final int mRequiredSize;
        private int mStartItemId;

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int generateNewItemId() {
            int i = this.mStartItemId;
            this.mStartItemId = i + 1;
            return i;
        }

        HotseatParserCallback(HashSet<String> existingApps, IntSparseArrayMap<Object> existingItems, ArrayList<ContentProviderOperation> outOps, int startItemId, int requiredSize) {
            this.mExistingApps = existingApps;
            this.mExistingItems = existingItems;
            this.mOutOps = outOps;
            this.mRequiredSize = requiredSize;
            this.mStartItemId = startItemId;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int insertAndCheck(SQLiteDatabase db, ContentValues values) {
            if (this.mExistingItems.size() >= this.mRequiredSize || !Integer.valueOf(LauncherSettings.Favorites.CONTAINER_HOTSEAT).equals(values.getAsInteger(LauncherSettings.Favorites.CONTAINER))) {
                return 0;
            }
            try {
                Intent uri = Intent.parseUri(values.getAsString(LauncherSettings.Favorites.INTENT), 0);
                String str = ImportDataTask.getPackage(uri);
                if (str != null && !this.mExistingApps.contains(str)) {
                    this.mExistingApps.add(str);
                    int i = 0;
                    while (this.mExistingItems.get(i) != null) {
                        i++;
                    }
                    this.mExistingItems.put(i, uri);
                    values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(i));
                    this.mOutOps.add(ContentProviderOperation.newInsert(LauncherSettings.Favorites.CONTENT_URI).withValues(values).build());
                }
            } catch (URISyntaxException unused) {
            }
            return 0;
        }
    }
}
