package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.SQLiteCacheHelper;
import com.mega.launcher.model.AppIcon;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseIconCache {
    private static final boolean DEBUG = false;
    public static final String EMPTY_CLASS_NAME = ".";
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    private static final String TAG = "BaseIconCache";
    private final Looper mBgLooper;
    private final Map<ComponentKey, CacheEntry> mCache;
    protected final Context mContext;
    private final String mDbFileName;
    private final BitmapFactory.Options mDecodeOptions;
    protected IconDB mIconDb;
    protected int mIconDpi;
    protected final PackageManager mPackageManager;
    protected final Handler mWorkerHandler;
    private final HashMap<UserHandle, BitmapInfo> mDefaultIcons = new HashMap<>();
    protected LocaleList mLocaleList = LocaleList.getEmptyLocaleList();
    protected String mSystemState = "";

    public static class CacheEntry {
        public BitmapInfo bitmap = BitmapInfo.LOW_RES_INFO;
        public CharSequence title = "";
        public CharSequence contentDescription = "";
    }

    protected abstract BaseIconFactory getIconFactory();

    protected String getIconSystemState(String str) {
        return this.mSystemState;
    }

    protected abstract long getSerialNumberForUser(UserHandle userHandle);

    protected abstract boolean isInstantApp(ApplicationInfo applicationInfo);

    public BaseIconCache(Context context, String str, Looper looper, int i, int i2, boolean z) {
        this.mContext = context;
        this.mDbFileName = str;
        this.mPackageManager = context.getPackageManager();
        this.mBgLooper = looper;
        this.mWorkerHandler = new Handler(looper);
        if (z) {
            this.mCache = new HashMap(50);
        } else {
            this.mCache = new AbstractMap<ComponentKey, CacheEntry>() { // from class: com.android.launcher3.icons.cache.BaseIconCache.1
                @Override // java.util.AbstractMap, java.util.Map
                public CacheEntry put(ComponentKey componentKey, CacheEntry cacheEntry) {
                    return cacheEntry;
                }

                @Override // java.util.AbstractMap, java.util.Map
                public Set<Map.Entry<ComponentKey, CacheEntry>> entrySet() {
                    return Collections.emptySet();
                }
            };
        }
        if (BitmapRenderer.USE_HARDWARE_BITMAP) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            this.mDecodeOptions = options;
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
        } else {
            this.mDecodeOptions = null;
        }
        updateSystemState();
        this.mIconDpi = i;
        this.mIconDb = new IconDB(context, str, i2);
    }

    public void updateIconParams(final int i, final int i2) {
        this.mWorkerHandler.post(new Runnable() { // from class: com.android.launcher3.icons.cache.BaseIconCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m108xaa492de3(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateIconParamsBg, reason: merged with bridge method [inline-methods] */
    public synchronized void m108xaa492de3(int i, int i2) {
        this.mIconDpi = i;
        this.mDefaultIcons.clear();
        this.mIconDb.clear();
        this.mIconDb.close();
        this.mIconDb = new IconDB(this.mContext, this.mDbFileName, i2);
        this.mCache.clear();
    }

    private Drawable getFullResIcon(Resources resources, int i) {
        if (resources != null && i != 0) {
            try {
                return resources.getDrawableForDensity(i, this.mIconDpi);
            } catch (Resources.NotFoundException unused) {
            }
        }
        return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
    }

    public Drawable getFullResIcon(String str, int i) {
        try {
            return getFullResIcon(this.mPackageManager.getResourcesForApplication(str), i);
        } catch (PackageManager.NameNotFoundException unused) {
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        }
    }

    public Drawable getFullResIcon(ActivityInfo activityInfo) {
        try {
            return getFullResIcon(this.mPackageManager.getResourcesForApplication(activityInfo.applicationInfo), activityInfo.getIconResource());
        } catch (PackageManager.NameNotFoundException unused) {
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        }
    }

    private BitmapInfo makeDefaultIcon(UserHandle userHandle) {
        BaseIconFactory iconFactory = getIconFactory();
        try {
            BitmapInfo bitmapInfoMakeDefaultIcon = iconFactory.makeDefaultIcon(userHandle);
            if (iconFactory != null) {
                iconFactory.close();
            }
            return bitmapInfoMakeDefaultIcon;
        } catch (Throwable th) {
            if (iconFactory != null) {
                try {
                    iconFactory.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public synchronized void remove(ComponentName componentName, UserHandle userHandle) {
        this.mCache.remove(new ComponentKey(componentName, userHandle));
    }

    private void removeFromMemCacheLocked(String str, UserHandle userHandle) {
        HashSet hashSet = new HashSet();
        for (ComponentKey componentKey : this.mCache.keySet()) {
            if (componentKey.componentName.getPackageName().equals(str) && componentKey.user.equals(userHandle)) {
                hashSet.add(componentKey);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            this.mCache.remove((ComponentKey) it.next());
        }
    }

    public synchronized void removeIconsForPkg(String str, UserHandle userHandle) {
        removeFromMemCacheLocked(str, userHandle);
        this.mIconDb.delete("componentName LIKE ? AND profileId = ?", new String[]{str + "/%", Long.toString(getSerialNumberForUser(userHandle))});
    }

    public IconCacheUpdateHandler getUpdateHandler() {
        updateSystemState();
        return new IconCacheUpdateHandler(this);
    }

    private void updateSystemState() {
        this.mLocaleList = this.mContext.getResources().getConfiguration().getLocales();
        this.mSystemState = this.mLocaleList.toLanguageTags() + "," + Build.VERSION.SDK_INT;
    }

    public synchronized <T> void addIconToDBAndMemCache(T t, CachingLogic<T> cachingLogic, PackageInfo packageInfo, long j, boolean z) {
        CacheEntry cacheEntry;
        UserHandle user = cachingLogic.getUser(t);
        ComponentName component = cachingLogic.getComponent(t);
        ComponentKey componentKey = new ComponentKey(component, user);
        CacheEntry cacheEntry2 = null;
        if (!z && (cacheEntry = this.mCache.get(componentKey)) != null && !cacheEntry.bitmap.isNullOrLowRes()) {
            cacheEntry2 = cacheEntry;
        }
        if (cacheEntry2 == null) {
            cacheEntry2 = new CacheEntry();
            cacheEntry2.bitmap = cachingLogic.loadIcon(this.mContext, t);
        }
        if (cacheEntry2.bitmap.isNullOrLowRes()) {
            return;
        }
        cacheEntry2.title = cachingLogic.getLabel(t);
        cacheEntry2.contentDescription = this.mPackageManager.getUserBadgedLabel(cacheEntry2.title, user);
        if (cachingLogic.addToMemCache()) {
            this.mCache.put(componentKey, cacheEntry2);
        }
        addIconToDB(newContentValues(cacheEntry2.bitmap, cacheEntry2.title.toString(), component.getPackageName(), cachingLogic.getKeywords(t, this.mLocaleList)), component, packageInfo, j, cachingLogic.getLastUpdatedTime(t, packageInfo));
    }

    private void addIconToDB(ContentValues contentValues, ComponentName componentName, PackageInfo packageInfo, long j, long j2) {
        contentValues.put(IconDB.COLUMN_COMPONENT, componentName.flattenToString());
        contentValues.put("profileId", Long.valueOf(j));
        contentValues.put(IconDB.COLUMN_LAST_UPDATED, Long.valueOf(j2));
        contentValues.put(IconDB.COLUMN_VERSION, Integer.valueOf(packageInfo.versionCode));
        this.mIconDb.insertOrReplace(contentValues);
    }

    public synchronized BitmapInfo getDefaultIcon(UserHandle userHandle) {
        if (!this.mDefaultIcons.containsKey(userHandle)) {
            this.mDefaultIcons.put(userHandle, makeDefaultIcon(userHandle));
        }
        return this.mDefaultIcons.get(userHandle);
    }

    public boolean isDefaultIcon(BitmapInfo bitmapInfo, UserHandle userHandle) {
        return getDefaultIcon(userHandle).icon == bitmapInfo.icon;
    }

    protected <T> CacheEntry cacheLocked(ComponentName componentName, UserHandle userHandle, Supplier<T> supplier, CachingLogic<T> cachingLogic, boolean z, boolean z2) {
        boolean z3;
        T t;
        CacheEntry entryForPackageLocked;
        assertWorkerThread();
        ComponentKey componentKey = new ComponentKey(componentName, userHandle);
        CacheEntry cacheEntry = this.mCache.get(componentKey);
        if (cacheEntry == null || (cacheEntry.bitmap.isLowRes() && !z2)) {
            cacheEntry = new CacheEntry();
            if (cachingLogic.addToMemCache()) {
                this.mCache.put(componentKey, cacheEntry);
            }
            Drawable appIcon = AppIcon.getInstance().getAppIcon(this.mContext, componentName);
            boolean z4 = true;
            if (appIcon instanceof BitmapDrawable) {
                cacheEntry.bitmap = BitmapInfo.of(((BitmapDrawable) appIcon).getBitmap(), 0);
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 || getEntryFromDB(componentKey, cacheEntry, z2)) {
                t = null;
                z4 = false;
            } else {
                t = supplier.get();
                if (t != null) {
                    cacheEntry.bitmap = cachingLogic.loadIcon(this.mContext, t);
                } else {
                    if (z && (entryForPackageLocked = getEntryForPackageLocked(componentName.getPackageName(), userHandle, false)) != null) {
                        cacheEntry.bitmap = entryForPackageLocked.bitmap;
                        cacheEntry.title = entryForPackageLocked.title;
                        cacheEntry.contentDescription = entryForPackageLocked.contentDescription;
                    }
                    if (cacheEntry.bitmap == null) {
                        cacheEntry.bitmap = getDefaultIcon(userHandle);
                    }
                }
            }
            if (TextUtils.isEmpty(cacheEntry.title)) {
                if (t == null && !z4) {
                    t = supplier.get();
                }
                if (t != null) {
                    cacheEntry.title = cachingLogic.getLabel(t);
                    cacheEntry.contentDescription = this.mPackageManager.getUserBadgedLabel(cachingLogic.getDescription(t, cacheEntry.title), userHandle);
                }
            }
        } else {
            z3 = false;
        }
        if (!z3) {
            Drawable appIcon2 = AppIcon.getInstance().getAppIcon(this.mContext, componentName);
            if (appIcon2 instanceof BitmapDrawable) {
                cacheEntry.bitmap = BitmapInfo.of(((BitmapDrawable) appIcon2).getBitmap(), 0);
            }
        }
        return cacheEntry;
    }

    public synchronized void clear() {
        assertWorkerThread();
        this.mIconDb.clear();
    }

    protected synchronized void cachePackageInstallInfo(String str, UserHandle userHandle, Bitmap bitmap, CharSequence charSequence) {
        removeFromMemCacheLocked(str, userHandle);
        ComponentKey packageKey = getPackageKey(str, userHandle);
        CacheEntry cacheEntry = this.mCache.get(packageKey);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry();
        }
        if (!TextUtils.isEmpty(charSequence)) {
            cacheEntry.title = charSequence;
        }
        if (bitmap != null) {
            BaseIconFactory iconFactory = getIconFactory();
            cacheEntry.bitmap = iconFactory.createIconBitmap(bitmap);
            iconFactory.close();
        }
        if (!TextUtils.isEmpty(charSequence) && cacheEntry.bitmap.icon != null) {
            this.mCache.put(packageKey, cacheEntry);
        }
    }

    private static ComponentKey getPackageKey(String str, UserHandle userHandle) {
        return new ComponentKey(new ComponentName(str, str + EMPTY_CLASS_NAME), userHandle);
    }

    protected CacheEntry getEntryForPackageLocked(String str, UserHandle userHandle, boolean z) {
        assertWorkerThread();
        ComponentKey packageKey = getPackageKey(str, userHandle);
        CacheEntry cacheEntry = this.mCache.get(packageKey);
        if (cacheEntry == null || (cacheEntry.bitmap.isLowRes() && !z)) {
            cacheEntry = new CacheEntry();
            if (!getEntryFromDB(packageKey, cacheEntry, z)) {
                try {
                    PackageInfo packageInfo = this.mPackageManager.getPackageInfo(str, Process.myUserHandle().equals(userHandle) ? 0 : 8192);
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if (applicationInfo == null) {
                        throw new PackageManager.NameNotFoundException("ApplicationInfo is null");
                    }
                    BaseIconFactory iconFactory = getIconFactory();
                    BitmapInfo bitmapInfoCreateBadgedIconBitmap = iconFactory.createBadgedIconBitmap(applicationInfo.loadIcon(this.mPackageManager), userHandle, applicationInfo.targetSdkVersion, isInstantApp(applicationInfo));
                    iconFactory.close();
                    cacheEntry.title = applicationInfo.loadLabel(this.mPackageManager);
                    cacheEntry.contentDescription = this.mPackageManager.getUserBadgedLabel(cacheEntry.title, userHandle);
                    cacheEntry.bitmap = BitmapInfo.of(z ? BitmapInfo.LOW_RES_ICON : bitmapInfoCreateBadgedIconBitmap.icon, bitmapInfoCreateBadgedIconBitmap.color);
                    addIconToDB(newContentValues(bitmapInfoCreateBadgedIconBitmap, cacheEntry.title.toString(), str, null), packageKey.componentName, packageInfo, getSerialNumberForUser(userHandle), packageInfo.lastUpdateTime);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            this.mCache.put(packageKey, cacheEntry);
        }
        return cacheEntry;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008a A[DONT_GENERATE, PHI: r2
  0x008a: PHI (r2v3 android.database.Cursor) = (r2v2 android.database.Cursor), (r2v4 android.database.Cursor) binds: [B:25:0x0088, B:19:0x007b] A[DONT_GENERATE, DONT_INLINE]] */
    protected boolean getEntryFromDB(ComponentKey componentKey, CacheEntry cacheEntry, boolean z) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mIconDb.query(z ? IconDB.COLUMNS_LOW_RES : IconDB.COLUMNS_HIGH_RES, "componentName = ? AND profileId = ?", new String[]{componentKey.componentName.flattenToString(), Long.toString(getSerialNumberForUser(componentKey.user))});
                if (cursorQuery.moveToNext()) {
                    cacheEntry.bitmap = BitmapInfo.of(BitmapInfo.LOW_RES_ICON, GraphicsUtils.setColorAlphaBound(cursorQuery.getInt(0), 255));
                    cacheEntry.title = cursorQuery.getString(1);
                    if (cacheEntry.title == null) {
                        cacheEntry.title = "";
                        cacheEntry.contentDescription = "";
                    } else {
                        cacheEntry.contentDescription = this.mPackageManager.getUserBadgedLabel(cacheEntry.title, componentKey.user);
                    }
                    if (!z) {
                        byte[] blob = cursorQuery.getBlob(2);
                        try {
                            cacheEntry.bitmap = BitmapInfo.of(BitmapFactory.decodeByteArray(blob, 0, blob.length, this.mDecodeOptions), cacheEntry.bitmap.color);
                        } catch (Exception unused) {
                        }
                    }
                    return true;
                }
            } catch (SQLiteException e) {
                Log.d(TAG, "Error reading icon cache", e);
            }
            return false;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public synchronized Cursor queryCacheDb(String[] strArr, String str, String[] strArr2) {
        return this.mIconDb.query(strArr, str, strArr2);
    }

    public static final class IconDB extends SQLiteCacheHelper {
        public static final String COLUMN_COMPONENT = "componentName";
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_KEYWORDS = "keywords";
        public static final String COLUMN_LAST_UPDATED = "lastUpdated";
        public static final String COLUMN_ROWID = "rowid";
        public static final String COLUMN_SYSTEM_STATE = "system_state";
        public static final String COLUMN_USER = "profileId";
        public static final String COLUMN_VERSION = "version";
        private static final int RELEASE_VERSION = 28;
        public static final String TABLE_NAME = "icons";
        public static final String COLUMN_ICON_COLOR = "icon_color";
        public static final String COLUMN_LABEL = "label";
        public static final String[] COLUMNS_HIGH_RES = {COLUMN_ICON_COLOR, COLUMN_LABEL, "icon"};
        public static final String[] COLUMNS_LOW_RES = {COLUMN_ICON_COLOR, COLUMN_LABEL};

        public IconDB(Context context, String str, int i) {
            super(context, str, i + 1835008, TABLE_NAME);
        }

        @Override // com.android.launcher3.util.SQLiteCacheHelper
        protected void onCreateTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_color INTEGER NOT NULL DEFAULT 0, label TEXT, system_state TEXT, keywords TEXT, PRIMARY KEY (componentName, profileId) );");
        }
    }

    private ContentValues newContentValues(BitmapInfo bitmapInfo, String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("icon", bitmapInfo.isLowRes() ? null : GraphicsUtils.flattenBitmap(bitmapInfo.icon));
        contentValues.put(IconDB.COLUMN_ICON_COLOR, Integer.valueOf(bitmapInfo.color));
        contentValues.put(IconDB.COLUMN_LABEL, str);
        contentValues.put(IconDB.COLUMN_SYSTEM_STATE, getIconSystemState(str2));
        contentValues.put(IconDB.COLUMN_KEYWORDS, str3);
        return contentValues;
    }

    private void assertWorkerThread() {
        if (Looper.myLooper() != this.mBgLooper) {
            throw new IllegalStateException("Cache accessed on wrong thread " + Looper.myLooper());
        }
    }
}
