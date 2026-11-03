package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseBooleanArray;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class IconCacheUpdateHandler {
    private static final Object ICON_UPDATE_TOKEN = new Object();
    private static final boolean MODE_CLEAR_VALID_ITEMS = false;
    private static final boolean MODE_SET_INVALID_ITEMS = true;
    private static final String TAG = "IconCacheUpdateHandler";
    private final BaseIconCache mIconCache;
    private final ArrayMap<UserHandle, Set<String>> mPackagesToIgnore = new ArrayMap<>();
    private final SparseBooleanArray mItemsToDelete = new SparseBooleanArray();
    private boolean mFilterMode = true;
    private final HashMap<String, PackageInfo> mPkgInfoMap = new HashMap<>();

    public interface OnUpdateCallback {
        void onPackageIconsUpdated(HashSet<String> hashSet, UserHandle userHandle);
    }

    IconCacheUpdateHandler(BaseIconCache baseIconCache) {
        this.mIconCache = baseIconCache;
        baseIconCache.mWorkerHandler.removeCallbacksAndMessages(ICON_UPDATE_TOKEN);
        createPackageInfoMap();
    }

    public void addPackagesToIgnore(UserHandle userHandle, String str) {
        Set<String> hashSet = this.mPackagesToIgnore.get(userHandle);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.mPackagesToIgnore.put(userHandle, hashSet);
        }
        hashSet.add(str);
    }

    private void createPackageInfoMap() {
        for (PackageInfo packageInfo : this.mIconCache.mPackageManager.getInstalledPackages(8192)) {
            this.mPkgInfoMap.put(packageInfo.packageName, packageInfo);
        }
    }

    public <T> void updateIcons(List<T> list, CachingLogic<T> cachingLogic, OnUpdateCallback onUpdateCallback) throws Throwable {
        HashMap map = new HashMap();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            UserHandle user = cachingLogic.getUser(t);
            HashMap map2 = (HashMap) map.get(user);
            if (map2 == null) {
                map2 = new HashMap();
                map.put(user, map2);
            }
            map2.put(cachingLogic.getComponent(t), t);
        }
        for (Map.Entry entry : map.entrySet()) {
            updateIconsPerUser((UserHandle) entry.getKey(), (HashMap) entry.getValue(), cachingLogic, onUpdateCallback);
        }
        this.mFilterMode = false;
    }

    /* JADX WARN: Code duplicated, block: B:112:? A[Catch: SQLiteException -> 0x0188, SYNTHETIC, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0188, blocks: (B:69:0x0187, B:68:0x0184, B:58:0x0172, B:64:0x017e), top: B:83:0x0046, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:86:0x017e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Stack] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.util.Stack] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    private <T> void updateIconsPerUser(UserHandle userHandle, HashMap<ComponentName, T> map, CachingLogic<T> cachingLogic, OnUpdateCallback onUpdateCallback) throws Throwable {
        long j;
        ?? r8;
        Stack stack;
        Throwable th;
        ?? r1;
        boolean z;
        Stack stack2;
        Set<String> set = this.mPackagesToIgnore.get(userHandle);
        ?? EmptySet = set;
        if (set == null) {
            EmptySet = Collections.emptySet();
        }
        long serialNumberForUser = this.mIconCache.getSerialNumberForUser(userHandle);
        Stack stack3 = new Stack();
        try {
            boolean z2 = true;
            Stack stack4 = stack3;
            try {
                try {
                    Cursor cursorQuery = this.mIconCache.mIconDb.query(new String[]{BaseIconCache.IconDB.COLUMN_ROWID, BaseIconCache.IconDB.COLUMN_COMPONENT, BaseIconCache.IconDB.COLUMN_LAST_UPDATED, BaseIconCache.IconDB.COLUMN_VERSION, BaseIconCache.IconDB.COLUMN_SYSTEM_STATE}, "profileId = ? ", new String[]{Long.toString(serialNumberForUser)});
                    try {
                        int columnIndex = cursorQuery.getColumnIndex(BaseIconCache.IconDB.COLUMN_COMPONENT);
                        int columnIndex2 = cursorQuery.getColumnIndex(BaseIconCache.IconDB.COLUMN_LAST_UPDATED);
                        int columnIndex3 = cursorQuery.getColumnIndex(BaseIconCache.IconDB.COLUMN_VERSION);
                        int columnIndex4 = cursorQuery.getColumnIndex(BaseIconCache.IconDB.COLUMN_ROWID);
                        int columnIndex5 = cursorQuery.getColumnIndex(BaseIconCache.IconDB.COLUMN_SYSTEM_STATE);
                        while (cursorQuery.moveToNext()) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(cursorQuery.getString(columnIndex));
                            PackageInfo packageInfo = this.mPkgInfoMap.get(componentNameUnflattenFromString.getPackageName());
                            int i = cursorQuery.getInt(columnIndex4);
                            if (packageInfo == null) {
                                try {
                                    if (!EmptySet.contains(componentNameUnflattenFromString.getPackageName()) && this.mFilterMode == z2) {
                                        this.mIconCache.remove(componentNameUnflattenFromString, userHandle);
                                        this.mItemsToDelete.put(i, z2);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    j = serialNumberForUser;
                                    EmptySet = stack4;
                                    if (cursorQuery == null) {
                                        throw th;
                                    }
                                    try {
                                        cursorQuery.close();
                                        throw th;
                                    } catch (Throwable th3) {
                                        th.addSuppressed(th3);
                                        throw th;
                                    }
                                    Log.d(TAG, "updateIconsPerUser: appsToUpdate size=" + r8.size());
                                    if (map.isEmpty()) {
                                    }
                                    Stack stack5 = new Stack();
                                    stack5.addAll(map.values());
                                    new SerializedIconUpdateTask(j, userHandle, stack5, r8, cachingLogic, onUpdateCallback).scheduleNext();
                                }
                            } else {
                                if ((packageInfo.applicationInfo.flags & 16777216) == 0) {
                                    long j2 = cursorQuery.getLong(columnIndex2);
                                    int i2 = cursorQuery.getInt(columnIndex3);
                                    int i3 = columnIndex3;
                                    int i4 = columnIndex2;
                                    T tRemove = map.remove(componentNameUnflattenFromString);
                                    if (cursorQuery.getPosition() == 0) {
                                        Log.d(TAG, "updateIconsPerUser: old=" + cursorQuery.getString(columnIndex5) + " new=" + this.mIconCache.getIconSystemState(packageInfo.packageName));
                                    }
                                    if (i2 == packageInfo.versionCode) {
                                        r1 = EmptySet;
                                        j = serialNumberForUser;
                                        try {
                                            if (j2 == packageInfo.lastUpdateTime && TextUtils.equals(cursorQuery.getString(columnIndex5), this.mIconCache.getIconSystemState(packageInfo.packageName))) {
                                                if (!this.mFilterMode) {
                                                    this.mItemsToDelete.put(i, false);
                                                }
                                                EmptySet = r1;
                                                columnIndex3 = i3;
                                                columnIndex2 = i4;
                                                columnIndex = columnIndex;
                                                columnIndex4 = columnIndex4;
                                                serialNumberForUser = j;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            EmptySet = stack4;
                                            if (cursorQuery == null) {
                                                throw th;
                                            }
                                            cursorQuery.close();
                                            throw th;
                                            Log.d(TAG, "updateIconsPerUser: appsToUpdate size=" + r8.size());
                                            if (map.isEmpty()) {
                                            }
                                            Stack stack6 = new Stack();
                                            stack6.addAll(map.values());
                                            new SerializedIconUpdateTask(j, userHandle, stack6, r8, cachingLogic, onUpdateCallback).scheduleNext();
                                        }
                                    } else {
                                        r1 = EmptySet;
                                        j = serialNumberForUser;
                                    }
                                    if (tRemove == null) {
                                        z = true;
                                        if (this.mFilterMode) {
                                            this.mIconCache.remove(componentNameUnflattenFromString, userHandle);
                                            this.mItemsToDelete.put(i, true);
                                        }
                                        stack2 = stack4;
                                    } else {
                                        stack = stack4;
                                        z = true;
                                        try {
                                            stack.add(tRemove);
                                            stack2 = stack;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            th = th;
                                            EmptySet = stack;
                                            if (cursorQuery == null) {
                                                throw th;
                                            }
                                            cursorQuery.close();
                                            throw th;
                                            Log.d(TAG, "updateIconsPerUser: appsToUpdate size=" + r8.size());
                                            if (map.isEmpty()) {
                                            }
                                            Stack stack7 = new Stack();
                                            stack7.addAll(map.values());
                                            new SerializedIconUpdateTask(j, userHandle, stack7, r8, cachingLogic, onUpdateCallback).scheduleNext();
                                        }
                                    }
                                    z2 = z;
                                    stack4 = stack2;
                                    columnIndex2 = i4;
                                    columnIndex = columnIndex;
                                    columnIndex4 = columnIndex4;
                                    serialNumberForUser = j;
                                    EmptySet = r1;
                                    columnIndex3 = i3;
                                }
                                z2 = true;
                            }
                        }
                        j = serialNumberForUser;
                        Stack stack8 = stack4;
                        r8 = stack8;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            r8 = stack8;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        j = serialNumberForUser;
                        stack = stack4;
                    }
                } catch (SQLiteException e) {
                    e = e;
                    Log.d(TAG, "Error reading icon cache", e);
                    r8 = EmptySet;
                }
            } catch (SQLiteException e2) {
                e = e2;
                j = serialNumberForUser;
                EmptySet = stack4;
                Log.d(TAG, "Error reading icon cache", e);
                r8 = EmptySet;
            }
        } catch (SQLiteException e3) {
            e = e3;
            j = serialNumberForUser;
            EmptySet = stack3;
        }
        Log.d(TAG, "updateIconsPerUser: appsToUpdate size=" + r8.size());
        if (map.isEmpty() || !r8.isEmpty()) {
            Stack stack9 = new Stack();
            stack9.addAll(map.values());
            new SerializedIconUpdateTask(j, userHandle, stack9, r8, cachingLogic, onUpdateCallback).scheduleNext();
        }
    }

    public void finish() {
        StringBuilder sb = new StringBuilder("rowid IN (");
        int size = this.mItemsToDelete.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mItemsToDelete.valueAt(i2)) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(this.mItemsToDelete.keyAt(i2));
                i++;
            }
        }
        sb.append(')');
        if (i > 0) {
            this.mIconCache.mIconDb.delete(sb.toString(), null);
        }
    }

    private class SerializedIconUpdateTask<T> implements Runnable {
        private final Stack<T> mAppsToAdd;
        private final Stack<T> mAppsToUpdate;
        private final CachingLogic<T> mCachingLogic;
        private final OnUpdateCallback mOnUpdateCallback;
        private final HashSet<String> mUpdatedPackages = new HashSet<>();
        private final UserHandle mUserHandle;
        private final long mUserSerial;

        SerializedIconUpdateTask(long j, UserHandle userHandle, Stack<T> stack, Stack<T> stack2, CachingLogic<T> cachingLogic, OnUpdateCallback onUpdateCallback) {
            this.mUserHandle = userHandle;
            this.mUserSerial = j;
            this.mAppsToAdd = stack;
            this.mAppsToUpdate = stack2;
            this.mCachingLogic = cachingLogic;
            this.mOnUpdateCallback = onUpdateCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mAppsToUpdate.isEmpty()) {
                T tPop = this.mAppsToUpdate.pop();
                String packageName = this.mCachingLogic.getComponent(tPop).getPackageName();
                IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(tPop, this.mCachingLogic, (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(packageName), this.mUserSerial, true);
                this.mUpdatedPackages.add(packageName);
                if (this.mAppsToUpdate.isEmpty() && !this.mUpdatedPackages.isEmpty()) {
                    this.mOnUpdateCallback.onPackageIconsUpdated(this.mUpdatedPackages, this.mUserHandle);
                }
                scheduleNext();
                return;
            }
            if (this.mAppsToAdd.isEmpty()) {
                return;
            }
            T tPop2 = this.mAppsToAdd.pop();
            PackageInfo packageInfo = (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(this.mCachingLogic.getComponent(tPop2).getPackageName());
            if (packageInfo != null) {
                IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(tPop2, this.mCachingLogic, packageInfo, this.mUserSerial, false);
            }
            if (this.mAppsToAdd.isEmpty()) {
                return;
            }
            scheduleNext();
        }

        public void scheduleNext() {
            IconCacheUpdateHandler.this.mIconCache.mWorkerHandler.postAtTime(this, IconCacheUpdateHandler.ICON_UPDATE_TOKEN, SystemClock.uptimeMillis() + 1);
        }
    }
}
