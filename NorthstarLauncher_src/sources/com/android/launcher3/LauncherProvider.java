package com.android.launcher3;

import android.app.backup.BackupManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.carproperty.DrivingPowerTypeKt;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.DbDowngradeHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.LauncherTiming;
import com.android.launcher3.util.NoLocaleSQLiteHelper;
import com.android.launcher3.util.PackageManagerHelper;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.function.Supplier;
import mega.car.config.Power;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {
    public static final String AUTHORITY = "com.android.launcher3.settings";
    private static final String DOWNGRADE_SCHEMA_FILE = "downgrade_schema.json";
    static final String EMPTY_DATABASE_CREATED = "EMPTY_DATABASE_CREATED";
    public static final String KEY_LAYOUT_PROVIDER_AUTHORITY = "KEY_LAYOUT_PROVIDER_AUTHORITY";
    private static final boolean LOGD = false;
    private static final long RESTORE_BACKUP_TABLE_DELAY = TimeUnit.SECONDS.toMillis(30);
    public static final int SCHEMA_VERSION = 28;
    private static final String TAG = "LauncherProvider";
    private long mLastRestoreTimestamp = 0;
    protected DatabaseHelper mOpenHelper;
    protected String mProviderAuthority;

    /* JADX INFO: renamed from: lambda$call$0$com-android-launcher3-LauncherProvider, reason: not valid java name */
    /* synthetic */ DatabaseHelper m41lambda$call$0$comandroidlauncher3LauncherProvider() {
        return this.mOpenHelper;
    }

    /* JADX INFO: renamed from: lambda$call$3$com-android-launcher3-LauncherProvider, reason: not valid java name */
    /* synthetic */ DatabaseHelper m44lambda$call$3$comandroidlauncher3LauncherProvider() {
        return this.mOpenHelper;
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate == null || !instanceNoCreate.getModel().isModelLoaded()) {
            return;
        }
        instanceNoCreate.getModel().dumpState("", fd, writer, args);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        LauncherTiming.note(TAG, "onCreate");
        Log.d(TAG, "Launcher process started");
        MainProcessInitializer.initialize(requireContext().getApplicationContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        SqlArguments sqlArguments = new SqlArguments(uri, null, null);
        if (TextUtils.isEmpty(sqlArguments.where)) {
            return "vnd.android.cursor.dir/" + sqlArguments.table;
        }
        return "vnd.android.cursor.item/" + sqlArguments.table;
    }

    protected synchronized void createDbIfNotExists() {
        if (this.mOpenHelper == null) {
            this.mOpenHelper = DatabaseHelper.createDatabaseHelper(getContext(), false);
            if (RestoreDbTask.isPending(getContext())) {
                if (!RestoreDbTask.performRestore(getContext(), this.mOpenHelper, new BackupManager(getContext()))) {
                    DatabaseHelper databaseHelper = this.mOpenHelper;
                    databaseHelper.createEmptyDB(databaseHelper.getWritableDatabase());
                }
                RestoreDbTask.setPending(getContext(), false);
            }
        }
    }

    private synchronized boolean prepForMigration(String dbFile, String targetTableName, Supplier<DatabaseHelper> src, Supplier<DatabaseHelper> dst) {
        if (TextUtils.equals(dbFile, this.mOpenHelper.getDatabaseName())) {
            return false;
        }
        DatabaseHelper databaseHelper = src.get();
        this.mOpenHelper = dst.get();
        LauncherDbUtils.copyTable(databaseHelper.getReadableDatabase(), LauncherSettings.Favorites.TABLE_NAME, this.mOpenHelper.getWritableDatabase(), targetTableName, getContext());
        databaseHelper.close();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        createDbIfNotExists();
        SqlArguments sqlArguments = new SqlArguments(uri, selection, selectionArgs);
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(sqlArguments.table);
        Cursor cursorQuery = sQLiteQueryBuilder.query(this.mOpenHelper.getWritableDatabase(), projection, sqlArguments.where, sqlArguments.args, null, null, sortOrder);
        cursorQuery.setNotificationUri(getContext().getContentResolver(), uri);
        return cursorQuery;
    }

    static synchronized int dbInsertAndCheck(DatabaseHelper helper, SQLiteDatabase db, String table, String nullColumnHack, ContentValues values) {
        try {
            if (values == null) {
                throw new RuntimeException("Error: attempting to insert null values");
            }
            if (!values.containsKey("_id")) {
                throw new RuntimeException("Error: attempting to add item without specifying an id");
            }
            MLog.d(TAG, "dbInsertAndCheck: table = " + table + ", values = " + values);
            helper.checkId(values);
        } catch (Throwable th) {
            throw th;
        }
        return (int) db.insert(table, nullColumnHack, values);
    }

    private void reloadLauncherIfExternal() {
        LauncherAppState instanceNoCreate;
        if (Binder.getCallingPid() == Process.myPid() || (instanceNoCreate = LauncherAppState.getInstanceNoCreate()) == null) {
            return;
        }
        instanceNoCreate.getModel().forceReload();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues initialValues) {
        createDbIfNotExists();
        SqlArguments sqlArguments = new SqlArguments(uri);
        if (Binder.getCallingPid() != Process.myPid() && !initializeExternalAdd(getContext(), initialValues)) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        addModifiedTime(initialValues);
        int iDbInsertAndCheck = dbInsertAndCheck(this.mOpenHelper, writableDatabase, sqlArguments.table, null, initialValues);
        if (iDbInsertAndCheck < 0) {
            return null;
        }
        onAddOrDeleteOp(writableDatabase);
        Uri uriWithAppendedId = ContentUris.withAppendedId(uri, iDbInsertAndCheck);
        reloadLauncherIfExternal();
        return uriWithAppendedId;
    }

    private boolean initializeExternalAdd(Context context, ContentValues values) {
        values.put("_id", Integer.valueOf(this.mOpenHelper.generateNewItemId()));
        Integer asInteger = values.getAsInteger(LauncherSettings.Favorites.ITEM_TYPE);
        if (asInteger == null || asInteger.intValue() != 4 || values.containsKey(LauncherSettings.Favorites.APPWIDGET_ID)) {
            return true;
        }
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(values.getAsString(LauncherSettings.Favorites.APPWIDGET_PROVIDER));
        if (componentNameUnflattenFromString != null) {
            try {
                AppWidgetHost appWidgetHostNewLauncherWidgetHost = this.mOpenHelper.newLauncherWidgetHost();
                int iAllocateAppWidgetId = appWidgetHostNewLauncherWidgetHost.allocateAppWidgetId();
                values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(iAllocateAppWidgetId));
                if (appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, componentNameUnflattenFromString)) {
                    return true;
                }
                appWidgetHostNewLauncherWidgetHost.deleteAppWidgetId(iAllocateAppWidgetId);
                return false;
            } catch (RuntimeException e) {
                Log.e(TAG, "Failed to initialize external widget", e);
            }
        }
        return false;
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] values) {
        createDbIfNotExists();
        SqlArguments sqlArguments = new SqlArguments(uri);
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(writableDatabase);
        try {
            int length = values.length;
            for (int i = 0; i < length; i++) {
                addModifiedTime(values[i]);
                if (dbInsertAndCheck(this.mOpenHelper, writableDatabase, sqlArguments.table, null, values[i]) < 0) {
                    sQLiteTransaction.close();
                    return 0;
                }
            }
            onAddOrDeleteOp(writableDatabase);
            sQLiteTransaction.commit();
            sQLiteTransaction.close();
            reloadLauncherIfExternal();
            return values.length;
        } catch (Throwable th) {
            try {
                sQLiteTransaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) throws OperationApplicationException {
        createDbIfNotExists();
        LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(this.mOpenHelper.getWritableDatabase());
        try {
            int size = operations.size();
            ContentProviderResult[] contentProviderResultArr = new ContentProviderResult[size];
            boolean z = false;
            for (int i = 0; i < size; i++) {
                ContentProviderOperation contentProviderOperation = operations.get(i);
                contentProviderResultArr[i] = contentProviderOperation.apply(this, contentProviderResultArr, i);
                z |= (contentProviderOperation.isInsert() || contentProviderOperation.isDelete()) && contentProviderResultArr[i].count != null && contentProviderResultArr[i].count.intValue() > 0;
            }
            if (z) {
                onAddOrDeleteOp(sQLiteTransaction.getDb());
            }
            sQLiteTransaction.commit();
            reloadLauncherIfExternal();
            sQLiteTransaction.close();
            return contentProviderResultArr;
        } catch (Throwable th) {
            try {
                sQLiteTransaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        createDbIfNotExists();
        SqlArguments sqlArguments = new SqlArguments(uri, selection, selectionArgs);
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        if (Binder.getCallingPid() != Process.myPid() && LauncherSettings.Favorites.TABLE_NAME.equalsIgnoreCase(sqlArguments.table)) {
            DatabaseHelper databaseHelper = this.mOpenHelper;
            databaseHelper.removeGhostWidgets(databaseHelper.getWritableDatabase());
        }
        int iDelete = writableDatabase.delete(sqlArguments.table, sqlArguments.where, sqlArguments.args);
        if (iDelete > 0) {
            onAddOrDeleteOp(writableDatabase);
            reloadLauncherIfExternal();
        }
        return iDelete;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        createDbIfNotExists();
        SqlArguments sqlArguments = new SqlArguments(uri, selection, selectionArgs);
        addModifiedTime(values);
        int iUpdate = this.mOpenHelper.getWritableDatabase().update(sqlArguments.table, values, sqlArguments.where, sqlArguments.args);
        reloadLauncherIfExternal();
        return iUpdate;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.ContentProvider
    public Bundle call(String method, final String arg, final Bundle extras) {
        if (Binder.getCallingUid() != Process.myUid()) {
            return null;
        }
        createDbIfNotExists();
        method.hashCode();
        byte b = -1;
        switch (method.hashCode()) {
            case -1999597249:
                if (method.equals(LauncherSettings.Settings.METHOD_DELETE_EMPTY_FOLDERS)) {
                    b = 0;
                }
                break;
            case -1565944700:
                if (method.equals(LauncherSettings.Settings.METHOD_REMOVE_GHOST_WIDGETS)) {
                    b = 1;
                }
                break;
            case -1428559582:
                if (method.equals(LauncherSettings.Settings.METHOD_RESTORE_BACKUP_TABLE)) {
                    b = 2;
                }
                break;
            case -1107339682:
                if (method.equals(LauncherSettings.Settings.METHOD_NEW_ITEM_ID)) {
                    b = 3;
                }
                break;
            case -1029923675:
                if (method.equals(LauncherSettings.Settings.METHOD_NEW_SCREEN_ID)) {
                    b = 4;
                }
                break;
            case -1018207424:
                if (method.equals(LauncherSettings.Settings.METHOD_PREP_FOR_PREVIEW)) {
                    b = 5;
                }
                break;
            case -1008511191:
                if (method.equals(LauncherSettings.Settings.METHOD_CLEAR_EMPTY_DB_FLAG)) {
                    b = 6;
                }
                break;
            case -298097114:
                if (method.equals(LauncherSettings.Settings.METHOD_SWITCH_DATABASE)) {
                    b = 7;
                }
                break;
            case 306676016:
                if (method.equals(LauncherSettings.Settings.METHOD_REFRESH_HOTSEAT_RESTORE_TABLE)) {
                    b = 8;
                }
                break;
            case 476749504:
                if (method.equals(LauncherSettings.Settings.METHOD_LOAD_DEFAULT_FAVORITES)) {
                    b = 9;
                }
                break;
            case 684076146:
                if (method.equals(LauncherSettings.Settings.METHOD_WAS_EMPTY_DB_CREATED)) {
                    b = 10;
                }
                break;
            case 870601991:
                if (method.equals(LauncherSettings.Settings.METHOD_UPDATE_CURRENT_OPEN_HELPER)) {
                    b = 11;
                }
                break;
            case 1038077429:
                if (method.equals(LauncherSettings.Settings.METHOD_REFRESH_BACKUP_TABLE)) {
                    b = 12;
                }
                break;
            case 1615249692:
                if (method.equals(LauncherSettings.Settings.METHOD_NEW_TRANSACTION)) {
                    b = Power.UartOpcode.COMMAND_SET_STR_MODE;
                }
                break;
            case 2117515411:
                if (method.equals(LauncherSettings.Settings.METHOD_CREATE_EMPTY_DB)) {
                    b = Power.UartOpcode.COMMAND_SET_STR_DAYS;
                }
                break;
        }
        switch (b) {
            case 0:
                Bundle bundle = new Bundle();
                bundle.putIntArray(LauncherSettings.Settings.EXTRA_VALUE, deleteEmptyFolders().toArray());
                return bundle;
            case 1:
                DatabaseHelper databaseHelper = this.mOpenHelper;
                databaseHelper.removeGhostWidgets(databaseHelper.getWritableDatabase());
                return null;
            case 2:
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.mLastRestoreTimestamp > RESTORE_BACKUP_TABLE_DELAY) {
                    this.mLastRestoreTimestamp = jCurrentTimeMillis;
                    RestoreDbTask.restoreIfPossible(getContext(), this.mOpenHelper, new BackupManager(getContext()));
                }
                return null;
            case 3:
                Bundle bundle2 = new Bundle();
                bundle2.putInt(LauncherSettings.Settings.EXTRA_VALUE, this.mOpenHelper.generateNewItemId());
                return bundle2;
            case 4:
                Bundle bundle3 = new Bundle();
                bundle3.putInt(LauncherSettings.Settings.EXTRA_VALUE, this.mOpenHelper.generateNewScreenId());
                return bundle3;
            case 5:
                if (!FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get()) {
                    return null;
                }
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean(LauncherSettings.Settings.EXTRA_VALUE, prepForMigration(arg, LauncherSettings.Favorites.PREVIEW_TABLE_NAME, new Supplier() { // from class: com.android.launcher3.LauncherProvider$$ExternalSyntheticLambda2
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.m43lambda$call$2$comandroidlauncher3LauncherProvider(arg);
                    }
                }, new Supplier() { // from class: com.android.launcher3.LauncherProvider$$ExternalSyntheticLambda3
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.m44lambda$call$3$comandroidlauncher3LauncherProvider();
                    }
                }));
                return bundle4;
            case 6:
                clearFlagEmptyDbCreated();
                return null;
            case 7:
                if (TextUtils.equals(arg, this.mOpenHelper.getDatabaseName())) {
                    return null;
                }
                DatabaseHelper databaseHelper2 = this.mOpenHelper;
                if (extras == null || !extras.containsKey(KEY_LAYOUT_PROVIDER_AUTHORITY)) {
                    this.mProviderAuthority = null;
                } else {
                    this.mProviderAuthority = extras.getString(KEY_LAYOUT_PROVIDER_AUTHORITY);
                }
                this.mOpenHelper = DatabaseHelper.createDatabaseHelper(getContext(), arg, false);
                databaseHelper2.close();
                LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
                if (instanceNoCreate == null) {
                    return null;
                }
                instanceNoCreate.getModel().forceReload();
                return null;
            case 8:
                DatabaseHelper databaseHelper3 = this.mOpenHelper;
                databaseHelper3.mHotseatRestoreTableExists = LauncherDbUtils.tableExists(databaseHelper3.getReadableDatabase(), LauncherSettings.Favorites.HYBRID_HOTSEAT_BACKUP_TABLE);
                return null;
            case 9:
                loadDefaultFavoritesIfNecessary();
                return null;
            case 10:
                Bundle bundle5 = new Bundle();
                bundle5.putBoolean(LauncherSettings.Settings.EXTRA_VALUE, Utilities.getPrefs(getContext()).getBoolean(this.mOpenHelper.getKey(EMPTY_DATABASE_CREATED), false));
                return bundle5;
            case 11:
                if (!FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get()) {
                    return null;
                }
                Bundle bundle6 = new Bundle();
                bundle6.putBoolean(LauncherSettings.Settings.EXTRA_VALUE, prepForMigration(InvariantDeviceProfile.INSTANCE.m166x39265fe7(getContext()).dbFile, LauncherSettings.Favorites.TMP_TABLE, new Supplier() { // from class: com.android.launcher3.LauncherProvider$$ExternalSyntheticLambda0
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.m41lambda$call$0$comandroidlauncher3LauncherProvider();
                    }
                }, new Supplier() { // from class: com.android.launcher3.LauncherProvider$$ExternalSyntheticLambda1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.m42lambda$call$1$comandroidlauncher3LauncherProvider();
                    }
                }));
                return bundle6;
            case 12:
                DatabaseHelper databaseHelper4 = this.mOpenHelper;
                databaseHelper4.mBackupTableExists = LauncherDbUtils.tableExists(databaseHelper4.getReadableDatabase(), LauncherSettings.Favorites.BACKUP_TABLE_NAME);
                return null;
            case 13:
                Bundle bundle7 = new Bundle();
                bundle7.putBinder(LauncherSettings.Settings.EXTRA_VALUE, new LauncherDbUtils.SQLiteTransaction(this.mOpenHelper.getWritableDatabase()));
                return bundle7;
            case 14:
                DatabaseHelper databaseHelper5 = this.mOpenHelper;
                databaseHelper5.createEmptyDB(databaseHelper5.getWritableDatabase());
                return null;
            default:
                return null;
        }
    }

    /* JADX INFO: renamed from: lambda$call$1$com-android-launcher3-LauncherProvider, reason: not valid java name */
    /* synthetic */ DatabaseHelper m42lambda$call$1$comandroidlauncher3LauncherProvider() {
        return DatabaseHelper.createDatabaseHelper(getContext(), true);
    }

    /* JADX INFO: renamed from: lambda$call$2$com-android-launcher3-LauncherProvider, reason: not valid java name */
    /* synthetic */ DatabaseHelper m43lambda$call$2$comandroidlauncher3LauncherProvider(String str) {
        return DatabaseHelper.createDatabaseHelper(getContext(), str, true);
    }

    private synchronized void onAddOrDeleteOp(SQLiteDatabase db) {
        this.mOpenHelper.onAddOrDeleteOp(db);
    }

    private IntArray deleteEmptyFolders() {
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(writableDatabase);
            try {
                IntArray intArrayQueryIntArray = LauncherDbUtils.queryIntArray(writableDatabase, LauncherSettings.Favorites.TABLE_NAME, "_id", "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)", null, null);
                if (!intArrayQueryIntArray.isEmpty()) {
                    writableDatabase.delete(LauncherSettings.Favorites.TABLE_NAME, Utilities.createDbSelectionQuery("_id", intArrayQueryIntArray), null);
                }
                sQLiteTransaction.commit();
                sQLiteTransaction.close();
                return intArrayQueryIntArray;
            } catch (Throwable th) {
                try {
                    sQLiteTransaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return new IntArray();
        }
    }

    static void addModifiedTime(ContentValues values) {
        values.put(LauncherSettings.Favorites.MODIFIED, Long.valueOf(System.currentTimeMillis()));
    }

    private void clearFlagEmptyDbCreated() {
        Utilities.getPrefs(getContext()).edit().remove(this.mOpenHelper.getKey(EMPTY_DATABASE_CREATED)).commit();
    }

    private synchronized void loadDefaultFavoritesIfNecessary() {
        if (Utilities.getPrefs(getContext()).getBoolean(this.mOpenHelper.getKey(EMPTY_DATABASE_CREATED), false)) {
            Log.d(TAG, "loading default workspace");
            DefaultLayoutParser defaultLayoutParser = getDefaultLayoutParser(this.mOpenHelper.newLauncherWidgetHost());
            DatabaseHelper databaseHelper = this.mOpenHelper;
            databaseHelper.createEmptyDB(databaseHelper.getWritableDatabase());
            DatabaseHelper databaseHelper2 = this.mOpenHelper;
            databaseHelper2.loadFavorites(databaseHelper2.getWritableDatabase(), defaultLayoutParser);
            clearFlagEmptyDbCreated();
        }
    }

    private DefaultLayoutParser getDefaultLayoutParser(AppWidgetHost widgetHost) {
        int i;
        MLog.i(TAG, "getDefaultLayoutParser: ");
        if (FlavorUtils.isT19CFL1()) {
            if (DrivingPowerTypeKt.isEV()) {
                i = FlavorUtils.isNetworkArea() ? R.xml.default_workspace_t19cfl_ev : R.xml.default_workspace_t19cfl_ev_no_network;
            } else if (DrivingPowerTypeKt.isHEV()) {
                i = FlavorUtils.isNetworkArea() ? R.xml.default_workspace_t19cfl_hev : R.xml.default_workspace_t19cfl_hev_no_network;
            } else {
                i = FlavorUtils.isNetworkArea() ? R.xml.default_workspace_t19cfl_ice : R.xml.default_workspace_t19cfl_ice_no_network;
            }
        } else if (DrivingPowerTypeKt.isICE()) {
            i = FlavorUtils.isNetworkArea() ? R.xml.default_workspace_northstar_fuel : R.xml.default_workspace_northstar_fuel_no_network;
        } else {
            i = FlavorUtils.isNetworkArea() ? R.xml.default_workspace_northstar : R.xml.default_workspace_northstar_no_network;
        }
        return new DefaultLayoutParser(getContext(), widgetHost, this.mOpenHelper, getContext().getResources(), i);
    }

    public static class DatabaseHelper extends NoLocaleSQLiteHelper implements AutoInstallsLayout.LayoutParserCallback {
        private boolean mBackupTableExists;
        private final Context mContext;
        private final boolean mForMigration;
        private boolean mHotseatRestoreTableExists;
        private int mMaxItemId;
        private int mMaxScreenId;

        static DatabaseHelper createDatabaseHelper(Context context, boolean forMigration) {
            return createDatabaseHelper(context, null, forMigration);
        }

        static DatabaseHelper createDatabaseHelper(Context context, String dbName, boolean forMigration) {
            if (dbName == null) {
                dbName = FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get() ? InvariantDeviceProfile.INSTANCE.m166x39265fe7(context).dbFile : LauncherFiles.LAUNCHER_DB;
            }
            DatabaseHelper databaseHelper = new DatabaseHelper(context, dbName, forMigration);
            if (!LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), LauncherSettings.Favorites.TABLE_NAME)) {
                Log.e(LauncherProvider.TAG, "Tables are missing after onCreate has been called. Trying to recreate");
                databaseHelper.addFavoritesTable(databaseHelper.getWritableDatabase(), true);
            }
            if (!FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get()) {
                databaseHelper.mBackupTableExists = LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), LauncherSettings.Favorites.BACKUP_TABLE_NAME);
            }
            databaseHelper.mHotseatRestoreTableExists = LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), LauncherSettings.Favorites.HYBRID_HOTSEAT_BACKUP_TABLE);
            databaseHelper.initIds();
            return databaseHelper;
        }

        public DatabaseHelper(Context context, String dbName, boolean forMigration) {
            super(context, dbName, 28);
            this.mMaxItemId = -1;
            this.mMaxScreenId = -1;
            this.mContext = context;
            this.mForMigration = forMigration;
        }

        protected void initIds() {
            if (this.mMaxItemId == -1) {
                this.mMaxItemId = initializeMaxItemId(getWritableDatabase());
            }
            if (this.mMaxScreenId == -1) {
                this.mMaxScreenId = initializeMaxScreenId(getWritableDatabase());
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            this.mMaxItemId = 1;
            this.mMaxScreenId = 0;
            addFavoritesTable(db, false);
            this.mMaxItemId = initializeMaxItemId(db);
            if (this.mForMigration) {
                return;
            }
            onEmptyDbCreated();
        }

        protected void onAddOrDeleteOp(SQLiteDatabase db) {
            if (this.mBackupTableExists) {
                LauncherDbUtils.dropTable(db, LauncherSettings.Favorites.BACKUP_TABLE_NAME);
                this.mBackupTableExists = false;
            }
            if (this.mHotseatRestoreTableExists) {
                LauncherDbUtils.dropTable(db, LauncherSettings.Favorites.HYBRID_HOTSEAT_BACKUP_TABLE);
                this.mHotseatRestoreTableExists = false;
            }
        }

        String getKey(final String key) {
            return TextUtils.equals(getDatabaseName(), LauncherFiles.LAUNCHER_DB) ? key : key + "@" + getDatabaseName();
        }

        protected void onEmptyDbCreated() {
            Utilities.getPrefs(this.mContext).edit().putBoolean(getKey(LauncherProvider.EMPTY_DATABASE_CREATED), true).commit();
        }

        public long getSerialNumberForUser(UserHandle user) {
            return UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(user);
        }

        public long getDefaultUserSerial() {
            return getSerialNumberForUser(Process.myUserHandle());
        }

        private void addFavoritesTable(SQLiteDatabase db, boolean optional) {
            LauncherSettings.Favorites.addTableToDb(db, getDefaultUserSerial(), optional);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase db) {
            super.onOpen(db);
            File fileStreamPath = this.mContext.getFileStreamPath(LauncherProvider.DOWNGRADE_SCHEMA_FILE);
            if (!fileStreamPath.exists()) {
                handleOneTimeDataUpgrade(db);
            }
            DbDowngradeHelper.updateSchemaFile(fileStreamPath, 28, this.mContext);
        }

        protected void handleOneTimeDataUpgrade(SQLiteDatabase db) {
            UserCache userCacheM166x39265fe7 = UserCache.INSTANCE.m166x39265fe7(this.mContext);
            Iterator<UserHandle> it = userCacheM166x39265fe7.getUserProfiles().iterator();
            while (it.hasNext()) {
                db.execSQL("update favorites set intent = replace(intent, ';l.profile=" + userCacheM166x39265fe7.getSerialNumberForUser(it.next()) + ";', ';') where itemType = 0;");
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0023  */
        /* JADX WARN: Code duplicated, block: B:14:0x002d  */
        /* JADX WARN: Code duplicated, block: B:17:0x003b  */
        /* JADX WARN: Code duplicated, block: B:20:0x0044  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        
            if (addIntegerColumn(r7, com.android.launcher3.LauncherSettings.Favorites.OPTIONS, 0) == false) goto L44;
         */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onUpgrade(android.database.sqlite.SQLiteDatabase r7, int r8, int r9) {
            /*
                Method dump skipped, instruction units count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.LauncherProvider.DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            try {
                DbDowngradeHelper.parse(this.mContext.getFileStreamPath(LauncherProvider.DOWNGRADE_SCHEMA_FILE)).onDowngrade(db, oldVersion, newVersion);
            } catch (Exception e) {
                Log.d(LauncherProvider.TAG, "Unable to downgrade from: " + oldVersion + " to " + newVersion + ". Wiping databse.", e);
                createEmptyDB(db);
            }
        }

        public void createEmptyDB(SQLiteDatabase db) {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(db);
            try {
                LauncherDbUtils.dropTable(db, LauncherSettings.Favorites.TABLE_NAME);
                LauncherDbUtils.dropTable(db, "workspaceScreens");
                onCreate(db);
                sQLiteTransaction.commit();
                sQLiteTransaction.close();
            } catch (Throwable th) {
                try {
                    sQLiteTransaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public void removeGhostWidgets(SQLiteDatabase db) {
            AppWidgetHost appWidgetHostNewLauncherWidgetHost = newLauncherWidgetHost();
            try {
                int[] appWidgetIds = appWidgetHostNewLauncherWidgetHost.getAppWidgetIds();
                IntSet intSetWrap = IntSet.wrap(LauncherDbUtils.queryIntArray(db, LauncherSettings.Favorites.TABLE_NAME, LauncherSettings.Favorites.APPWIDGET_ID, "itemType=4", null, null));
                for (int i : appWidgetIds) {
                    if (!intSetWrap.contains(i)) {
                        try {
                            FileLog.d(LauncherProvider.TAG, "Deleting invalid widget " + i);
                            appWidgetHostNewLauncherWidgetHost.deleteAppWidgetId(i);
                        } catch (RuntimeException unused) {
                        }
                    }
                }
            } catch (IncompatibleClassChangeError e) {
                Log.e(LauncherProvider.TAG, "getAppWidgetIds not supported", e);
            }
        }

        void convertShortcutsToLauncherActivities(SQLiteDatabase db) {
            try {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(db);
                try {
                    Cursor cursorQuery = db.query(LauncherSettings.Favorites.TABLE_NAME, new String[]{"_id", LauncherSettings.Favorites.INTENT}, "itemType=1 AND profileId=" + getDefaultUserSerial(), null, null, null, null);
                    try {
                        SQLiteStatement sQLiteStatementCompileStatement = db.compileStatement("UPDATE favorites SET itemType=0 WHERE _id=?");
                        try {
                            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow(LauncherSettings.Favorites.INTENT);
                            while (cursorQuery.moveToNext()) {
                                try {
                                    if (PackageManagerHelper.isLauncherAppTarget(Intent.parseUri(cursorQuery.getString(columnIndexOrThrow2), 0))) {
                                        sQLiteStatementCompileStatement.bindLong(1, cursorQuery.getInt(columnIndexOrThrow));
                                        sQLiteStatementCompileStatement.executeUpdateDelete();
                                    }
                                } catch (URISyntaxException e) {
                                    Log.e(LauncherProvider.TAG, "Unable to parse intent", e);
                                }
                            }
                            sQLiteTransaction.commit();
                            if (sQLiteStatementCompileStatement != null) {
                                sQLiteStatementCompileStatement.close();
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            sQLiteTransaction.close();
                        } catch (Throwable th) {
                            if (sQLiteStatementCompileStatement == null) {
                                throw th;
                            }
                            try {
                                sQLiteStatementCompileStatement.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                            try {
                                sQLiteTransaction.close();
                                throw th;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                                throw th;
                            }
                        }
                    } catch (Throwable th4) {
                        if (cursorQuery == null) {
                            throw th4;
                        }
                        try {
                            cursorQuery.close();
                            throw th4;
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                            throw th4;
                        }
                        Log.w(LauncherProvider.TAG, "Error deduping shortcuts", e);
                    }
                } catch (Throwable th6) {
                    sQLiteTransaction.close();
                    throw th6;
                }
            } catch (SQLException e2) {
                Log.w(LauncherProvider.TAG, "Error deduping shortcuts", e2);
            }
        }

        boolean updateFolderItemsRank(SQLiteDatabase db, boolean addRankColumn) {
            try {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(db);
                if (addRankColumn) {
                    try {
                        db.execSQL("ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;");
                    } catch (Throwable th) {
                        try {
                            sQLiteTransaction.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                Cursor cursorRawQuery = db.rawQuery("SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;", new String[]{Integer.toString(2)});
                while (cursorRawQuery.moveToNext()) {
                    db.execSQL("UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;", new Object[]{Long.valueOf(cursorRawQuery.getLong(1) + 1), Long.valueOf(cursorRawQuery.getLong(0))});
                }
                cursorRawQuery.close();
                sQLiteTransaction.commit();
                sQLiteTransaction.close();
                return true;
            } catch (SQLException e) {
                Log.e(LauncherProvider.TAG, e.getMessage(), e);
                return false;
            }
        }

        private boolean addIntegerColumn(SQLiteDatabase db, String columnName, long defaultValue) {
            try {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(db);
                try {
                    db.execSQL("ALTER TABLE favorites ADD COLUMN " + columnName + " INTEGER NOT NULL DEFAULT " + defaultValue + ";");
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
            } catch (SQLException e) {
                Log.e(LauncherProvider.TAG, e.getMessage(), e);
                return false;
            }
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public synchronized int generateNewItemId() {
            int i;
            int i2 = this.mMaxItemId;
            if (i2 < 0) {
                throw new RuntimeException("Error: max item id was not initialized");
            }
            i = i2 + 1;
            this.mMaxItemId = i;
            return i;
        }

        public AppWidgetHost newLauncherWidgetHost() {
            return new LauncherAppWidgetHost(this.mContext);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int insertAndCheck(SQLiteDatabase db, ContentValues values) {
            MLog.d(LauncherProvider.TAG, "insertAndCheck() called with: db = [" + db + "], values = [" + values + "]");
            return LauncherProvider.dbInsertAndCheck(this, db, LauncherSettings.Favorites.TABLE_NAME, null, values);
        }

        public void checkId(ContentValues values) {
            this.mMaxItemId = Math.max(values.getAsInteger("_id").intValue(), this.mMaxItemId);
            Integer asInteger = values.getAsInteger(LauncherSettings.Favorites.SCREEN);
            Integer asInteger2 = values.getAsInteger(LauncherSettings.Favorites.CONTAINER);
            if (asInteger == null || asInteger2 == null || asInteger2.intValue() != -100) {
                return;
            }
            this.mMaxScreenId = Math.max(asInteger.intValue(), this.mMaxScreenId);
        }

        private int initializeMaxItemId(SQLiteDatabase db) {
            return LauncherProvider.getMaxId(db, "SELECT MAX(%1$s) FROM %2$s", "_id", LauncherSettings.Favorites.TABLE_NAME);
        }

        public int generateNewScreenId() {
            int i = this.mMaxScreenId;
            if (i < 0) {
                throw new RuntimeException("Error: max screen id was not initialized");
            }
            int i2 = i + 1;
            this.mMaxScreenId = i2;
            return i2;
        }

        private int initializeMaxScreenId(SQLiteDatabase db) {
            return LauncherProvider.getMaxId(db, "SELECT MAX(%1$s) FROM %2$s WHERE %3$s = %4$d", LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.TABLE_NAME, LauncherSettings.Favorites.CONTAINER, -100);
        }

        int loadFavorites(SQLiteDatabase db, AutoInstallsLayout loader) {
            int iLoadLayout = loader.loadLayout(db, new IntArray());
            MLog.d(LauncherProvider.TAG, "loadFavorites: count=" + iLoadLayout);
            this.mMaxItemId = initializeMaxItemId(db);
            this.mMaxScreenId = initializeMaxScreenId(db);
            return iLoadLayout;
        }
    }

    static int getMaxId(SQLiteDatabase db, String query, Object... args) {
        int iLongForQuery = (int) DatabaseUtils.longForQuery(db, String.format(Locale.ENGLISH, query, args), null);
        if (iLongForQuery >= 0) {
            return iLongForQuery;
        }
        throw new RuntimeException("Error: could not query max id");
    }

    static class SqlArguments {
        public final String[] args;
        public final String table;
        public final String where;

        SqlArguments(Uri url, String where, String[] args) {
            if (url.getPathSegments().size() == 1) {
                this.table = url.getPathSegments().get(0);
                this.where = where;
                this.args = args;
            } else {
                if (url.getPathSegments().size() != 2) {
                    throw new IllegalArgumentException("Invalid URI: " + url);
                }
                if (!TextUtils.isEmpty(where)) {
                    throw new UnsupportedOperationException("WHERE clause not supported: " + url);
                }
                this.table = url.getPathSegments().get(0);
                this.where = "_id=" + ContentUris.parseId(url);
                this.args = null;
            }
        }

        SqlArguments(Uri url) {
            if (url.getPathSegments().size() == 1) {
                this.table = url.getPathSegments().get(0);
                this.where = null;
                this.args = null;
                return;
            }
            throw new IllegalArgumentException("Invalid URI: " + url);
        }
    }
}
