package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.SafeCloseable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class PackageUpdatedTask extends BaseModelUpdateTask {
    private static final boolean DEBUG = false;
    public static final int OP_ADD = 1;
    public static final int OP_NONE = 0;
    public static final int OP_REMOVE = 3;
    public static final int OP_SUSPEND = 5;
    public static final int OP_UNAVAILABLE = 4;
    public static final int OP_UNSUSPEND = 6;
    public static final int OP_UPDATE = 2;
    public static final int OP_USER_AVAILABILITY_CHANGE = 7;
    private static final String TAG = "PackageUpdatedTask";
    private final int mOp;
    private final String[] mPackages;
    private final UserHandle mUser;

    public PackageUpdatedTask(int op, UserHandle user, String... packages) {
        this.mOp = op;
        this.mUser = user;
        this.mPackages = packages;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:119:0x02b0 A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:126:0x02d8 A[PHI: r5 r20 r21 r22 r23
  0x02d8: PHI (r5v27 boolean) = (r5v26 boolean), (r5v34 boolean) binds: [B:125:0x02cc, B:123:0x02c8] A[DONT_GENERATE, DONT_INLINE]
  0x02d8: PHI (r20v6 com.android.launcher3.util.ItemInfoMatcher) = (r20v5 com.android.launcher3.util.ItemInfoMatcher), (r20v8 com.android.launcher3.util.ItemInfoMatcher) binds: [B:125:0x02cc, B:123:0x02c8] A[DONT_GENERATE, DONT_INLINE]
  0x02d8: PHI (r21v7 java.lang.Boolean) = (r21v6 java.lang.Boolean), (r21v10 java.lang.Boolean) binds: [B:125:0x02cc, B:123:0x02c8] A[DONT_GENERATE, DONT_INLINE]
  0x02d8: PHI (r22v3 java.util.ArrayList) = (r22v2 java.util.ArrayList), (r22v7 java.util.ArrayList) binds: [B:125:0x02cc, B:123:0x02c8] A[DONT_GENERATE, DONT_INLINE]
  0x02d8: PHI (r23v3 java.util.HashSet) = (r23v2 java.util.HashSet), (r23v7 java.util.HashSet) binds: [B:125:0x02cc, B:123:0x02c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:128:0x02db A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:129:0x02dd A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02e2 A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x02f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:144:0x0337 A[PHI: r18 r20 r21 r22 r23
  0x0337: PHI (r18v6 java.lang.String[]) = 
  (r18v2 java.lang.String[])
  (r18v2 java.lang.String[])
  (r18v2 java.lang.String[])
  (r18v2 java.lang.String[])
  (r18v7 java.lang.String[])
  (r18v7 java.lang.String[])
 binds: [B:134:0x02f6, B:135:0x02f8, B:137:0x0304, B:139:0x030b, B:130:0x02e0, B:131:0x02e2] A[DONT_GENERATE, DONT_INLINE]
  0x0337: PHI (r20v4 com.android.launcher3.util.ItemInfoMatcher) = 
  (r20v0 com.android.launcher3.util.ItemInfoMatcher)
  (r20v0 com.android.launcher3.util.ItemInfoMatcher)
  (r20v0 com.android.launcher3.util.ItemInfoMatcher)
  (r20v0 com.android.launcher3.util.ItemInfoMatcher)
  (r20v7 com.android.launcher3.util.ItemInfoMatcher)
  (r20v7 com.android.launcher3.util.ItemInfoMatcher)
 binds: [B:134:0x02f6, B:135:0x02f8, B:137:0x0304, B:139:0x030b, B:130:0x02e0, B:131:0x02e2] A[DONT_GENERATE, DONT_INLINE]
  0x0337: PHI (r21v5 java.lang.Boolean) = 
  (r21v1 java.lang.Boolean)
  (r21v1 java.lang.Boolean)
  (r21v1 java.lang.Boolean)
  (r21v1 java.lang.Boolean)
  (r21v8 java.lang.Boolean)
  (r21v8 java.lang.Boolean)
 binds: [B:134:0x02f6, B:135:0x02f8, B:137:0x0304, B:139:0x030b, B:130:0x02e0, B:131:0x02e2] A[DONT_GENERATE, DONT_INLINE]
  0x0337: PHI (r22v1 java.util.ArrayList) = 
  (r22v0 java.util.ArrayList)
  (r22v0 java.util.ArrayList)
  (r22v0 java.util.ArrayList)
  (r22v0 java.util.ArrayList)
  (r22v4 java.util.ArrayList)
  (r22v4 java.util.ArrayList)
 binds: [B:134:0x02f6, B:135:0x02f8, B:137:0x0304, B:139:0x030b, B:130:0x02e0, B:131:0x02e2] A[DONT_GENERATE, DONT_INLINE]
  0x0337: PHI (r23v1 java.util.HashSet) = 
  (r23v0 java.util.HashSet)
  (r23v0 java.util.HashSet)
  (r23v0 java.util.HashSet)
  (r23v0 java.util.HashSet)
  (r23v4 java.util.HashSet)
  (r23v4 java.util.HashSet)
 binds: [B:134:0x02f6, B:135:0x02f8, B:137:0x0304, B:139:0x030b, B:130:0x02e0, B:131:0x02e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:152:0x035b  */
    /* JADX WARN: Code duplicated, block: B:155:0x036a  */
    /* JADX WARN: Code duplicated, block: B:158:0x037c  */
    /* JADX WARN: Code duplicated, block: B:159:0x0382  */
    /* JADX WARN: Code duplicated, block: B:161:0x0387  */
    /* JADX WARN: Code duplicated, block: B:163:0x0394  */
    /* JADX WARN: Code duplicated, block: B:165:0x039e  */
    /* JADX WARN: Code duplicated, block: B:170:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:174:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:177:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:187:0x0161 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x03a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x02ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x02cc A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x00ad A[LOOP:1: B:19:0x00ab->B:20:0x00ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:221:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0140  */
    /* JADX WARN: Code duplicated, block: B:51:0x014b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0159  */
    /* JADX WARN: Code duplicated, block: B:57:0x015f  */
    /* JADX WARN: Code duplicated, block: B:62:0x016d A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x017d A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0189 A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x018f A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b3 A[Catch: all -> 0x0401, TryCatch #0 {, blocks: (B:59:0x0161, B:60:0x0167, B:62:0x016d, B:64:0x017d, B:66:0x0189, B:68:0x018f, B:70:0x0199, B:72:0x01a8, B:74:0x01ad, B:76:0x01b3, B:78:0x01b9, B:80:0x01c9, B:84:0x01d9, B:87:0x01e1, B:89:0x01e6, B:98:0x023d, B:100:0x0244, B:119:0x02b0, B:121:0x02b4, B:122:0x02bc, B:131:0x02e2, B:129:0x02dd, B:103:0x024b, B:105:0x0251, B:108:0x026d, B:109:0x0294, B:92:0x020f, B:94:0x021d, B:96:0x022d, B:112:0x029e, B:114:0x02a4, B:133:0x02ec, B:136:0x02fa, B:138:0x0306, B:140:0x030d, B:142:0x031b, B:149:0x0351), top: B:187:0x0161 }] */
    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList appsList) {
        IntSparseArrayMap intSparseArrayMap;
        ArrayList<WorkspaceItemInfo> arrayList;
        ArrayList arrayList2;
        int i;
        boolean z;
        Iterator<ItemInfo> it;
        String[] strArr;
        int i2;
        final ArrayList arrayList3;
        Boolean bool;
        ItemInfo next;
        String[] strArr2;
        HashSet hashSet;
        ItemInfoMatcher itemInfoMatcher;
        ArrayList arrayList4;
        Boolean bool2;
        HashSet hashSet2;
        ArrayList arrayList5;
        WorkspaceItemInfo workspaceItemInfo;
        boolean z2;
        ComponentName targetComponent;
        boolean z3;
        boolean z4;
        int i3;
        boolean zIsActivityEnabled;
        HashSet hashSet3;
        int i4;
        String[] strArr3;
        LauncherApps launcherApps;
        int i5;
        int i6;
        int i7;
        FlagOp flagOpRemoveFlag;
        int i8;
        FlagOp flagOpRemoveFlag2;
        Context context = app.getContext();
        IconCache iconCache = app.getIconCache();
        String[] strArr4 = this.mPackages;
        int length = strArr4.length;
        FlagOp flagOpAddFlag = FlagOp.NO_OP;
        HashSet hashSet4 = new HashSet(Arrays.asList(strArr4));
        ItemInfoMatcher itemInfoMatcherOfPackages = ItemInfoMatcher.ofPackages(hashSet4, this.mUser);
        final HashSet hashSet5 = new HashSet();
        int i9 = this.mOp;
        Boolean bool3 = false;
        switch (i9) {
            case 1:
                for (int i10 = 0; i10 < length; i10++) {
                    iconCache.updateIconsForPkg(strArr4[i10], this.mUser);
                    if (FeatureFlags.PROMISE_APPS_IN_ALL_APPS.get()) {
                        appsList.removePackage(strArr4[i10], this.mUser);
                    }
                    appsList.addPackage(context, strArr4[i10], this.mUser);
                }
                flagOpRemoveFlag = FlagOp.removeFlag(2);
                flagOpAddFlag = flagOpRemoveFlag;
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1 && flagOpAddFlag == FlagOp.NO_OP) {
                    strArr = strArr4;
                    i2 = length;
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1 || i == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null && hashSet4.contains(workspaceItemInfo.iconResource.packageName)) {
                                        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(context);
                                        BitmapInfo bitmapInfoCreateIconBitmap = launcherIconsObtain.createIconBitmap(workspaceItemInfo.iconResource);
                                        launcherIconsObtain.recycle();
                                        if (bitmapInfoCreateIconBitmap != null) {
                                            workspaceItemInfo.bitmap = bitmapInfoCreateIconBitmap;
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null && itemInfoMatcherOfPackages.matches(workspaceItemInfo, targetComponent)) {
                                        boolean z5 = z2;
                                        String packageName = targetComponent.getPackageName();
                                        itemInfoMatcher = itemInfoMatcherOfPackages;
                                        if (workspaceItemInfo.hasStatusFlag(16)) {
                                            intSparseArrayMap.put(workspaceItemInfo.id, bool3);
                                            bool2 = bool3;
                                            if (this.mOp == 3) {
                                                strArr4 = strArr2;
                                                itemInfoMatcherOfPackages = itemInfoMatcher;
                                                bool3 = bool2;
                                            }
                                        } else {
                                            bool2 = bool3;
                                        }
                                        if (workspaceItemInfo.isPromise() && z) {
                                            if (workspaceItemInfo.itemType == 6) {
                                                arrayList4 = arrayList2;
                                                hashSet = hashSet4;
                                                boolean z6 = false;
                                                ShortcutRequest.QueryResult queryResultQuery = new ShortcutRequest(context, this.mUser).forPackage(targetComponent.getPackageName(), workspaceItemInfo.getDeepShortcutId()).query(2);
                                                if (!queryResultQuery.isEmpty()) {
                                                    workspaceItemInfo.updateFromDeepShortcutInfo(queryResultQuery.get(0), context);
                                                    z6 = true;
                                                    z5 = true;
                                                }
                                                zIsActivityEnabled = z6;
                                            } else {
                                                hashSet = hashSet4;
                                                arrayList4 = arrayList2;
                                                zIsActivityEnabled = !targetComponent.getClassName().equals(BaseIconCache.EMPTY_CLASS_NAME) ? ((LauncherApps) context.getSystemService(LauncherApps.class)).isActivityEnabled(targetComponent, this.mUser) : true;
                                            }
                                            if (workspaceItemInfo.hasStatusFlag(3)) {
                                                if (!updateWorkspaceItemIntent(context, workspaceItemInfo, packageName)) {
                                                    if (workspaceItemInfo.hasPromiseIconUi()) {
                                                        intSparseArrayMap.put(workspaceItemInfo.id, true);
                                                        strArr4 = strArr2;
                                                        itemInfoMatcherOfPackages = itemInfoMatcher;
                                                        bool3 = bool2;
                                                        arrayList2 = arrayList4;
                                                        hashSet4 = hashSet;
                                                    } else {
                                                        if (z) {
                                                            iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                                                            z3 = true;
                                                        }
                                                        i3 = workspaceItemInfo.runtimeStatusFlags;
                                                        workspaceItemInfo.runtimeStatusFlags = flagOpAddFlag.apply(workspaceItemInfo.runtimeStatusFlags);
                                                        if (workspaceItemInfo.runtimeStatusFlags != i3) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (!z3) {
                                                            arrayList.add(workspaceItemInfo);
                                                        } else {
                                                            arrayList.add(workspaceItemInfo);
                                                        }
                                                        if (z3) {
                                                            getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                                        }
                                                        arrayList5 = arrayList4;
                                                        hashSet2 = hashSet;
                                                        arrayList2 = arrayList5;
                                                        hashSet4 = hashSet2;
                                                        strArr4 = strArr2;
                                                        itemInfoMatcherOfPackages = itemInfoMatcher;
                                                        bool3 = bool2;
                                                    }
                                                } else {
                                                    if (z) {
                                                        iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                                                        z3 = true;
                                                    }
                                                    i3 = workspaceItemInfo.runtimeStatusFlags;
                                                    workspaceItemInfo.runtimeStatusFlags = flagOpAddFlag.apply(workspaceItemInfo.runtimeStatusFlags);
                                                    if (workspaceItemInfo.runtimeStatusFlags != i3) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    if (!z3) {
                                                        arrayList.add(workspaceItemInfo);
                                                    } else {
                                                        arrayList.add(workspaceItemInfo);
                                                    }
                                                    if (z3) {
                                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                                    }
                                                    arrayList5 = arrayList4;
                                                    hashSet2 = hashSet;
                                                    arrayList2 = arrayList5;
                                                    hashSet4 = hashSet2;
                                                    strArr4 = strArr2;
                                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                                    bool3 = bool2;
                                                }
                                            } else if (!zIsActivityEnabled) {
                                                intSparseArrayMap.put(workspaceItemInfo.id, true);
                                                FileLog.e(TAG, "Restored shortcut no longer valid " + workspaceItemInfo.getIntent());
                                                strArr4 = strArr2;
                                                itemInfoMatcherOfPackages = itemInfoMatcher;
                                                bool3 = bool2;
                                                arrayList2 = arrayList4;
                                                hashSet4 = hashSet;
                                            } else {
                                                workspaceItemInfo.status = 0;
                                                if (z) {
                                                    iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                                                    z3 = true;
                                                }
                                                i3 = workspaceItemInfo.runtimeStatusFlags;
                                                workspaceItemInfo.runtimeStatusFlags = flagOpAddFlag.apply(workspaceItemInfo.runtimeStatusFlags);
                                                if (workspaceItemInfo.runtimeStatusFlags != i3) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                if (!z3) {
                                                    arrayList.add(workspaceItemInfo);
                                                } else {
                                                    arrayList.add(workspaceItemInfo);
                                                }
                                                if (z3) {
                                                    getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                                }
                                                arrayList5 = arrayList4;
                                                hashSet2 = hashSet;
                                                arrayList2 = arrayList5;
                                                hashSet4 = hashSet2;
                                                strArr4 = strArr2;
                                                itemInfoMatcherOfPackages = itemInfoMatcher;
                                                bool3 = bool2;
                                            }
                                        } else {
                                            hashSet = hashSet4;
                                            arrayList4 = arrayList2;
                                            z3 = (z && hashSet5.contains(targetComponent) && updateWorkspaceItemIntent(context, workspaceItemInfo, packageName)) ? true : z5;
                                            if (z && workspaceItemInfo.itemType == 0) {
                                                iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                                                z3 = true;
                                            }
                                            i3 = workspaceItemInfo.runtimeStatusFlags;
                                            workspaceItemInfo.runtimeStatusFlags = flagOpAddFlag.apply(workspaceItemInfo.runtimeStatusFlags);
                                            if (workspaceItemInfo.runtimeStatusFlags != i3) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            if (!z3) {
                                                arrayList.add(workspaceItemInfo);
                                            } else {
                                                arrayList.add(workspaceItemInfo);
                                            }
                                            if (z3) {
                                                getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                            }
                                            arrayList5 = arrayList4;
                                            hashSet2 = hashSet;
                                            arrayList2 = arrayList5;
                                            hashSet4 = hashSet2;
                                            strArr4 = strArr2;
                                            itemInfoMatcherOfPackages = itemInfoMatcher;
                                            bool3 = bool2;
                                        }
                                    } else {
                                        hashSet = hashSet4;
                                        itemInfoMatcher = itemInfoMatcherOfPackages;
                                        arrayList4 = arrayList2;
                                        bool2 = bool3;
                                        z3 = z2;
                                        z4 = false;
                                        if (!z3 || z4) {
                                            arrayList.add(workspaceItemInfo);
                                        }
                                        if (z3) {
                                            getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                        }
                                        arrayList5 = arrayList4;
                                        hashSet2 = hashSet;
                                        arrayList2 = arrayList5;
                                        hashSet4 = hashSet2;
                                        strArr4 = strArr2;
                                        itemInfoMatcherOfPackages = itemInfoMatcher;
                                        bool3 = bool2;
                                    }
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if ((next instanceof LauncherAppWidgetInfo) || !z) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) next;
                                if (this.mUser.equals(launcherAppWidgetInfo.user) && launcherAppWidgetInfo.hasRestoreFlag(2)) {
                                    hashSet2 = hashSet;
                                    if (hashSet2.contains(launcherAppWidgetInfo.providerName.getPackageName())) {
                                        launcherAppWidgetInfo.restoreStatus &= -11;
                                        launcherAppWidgetInfo.restoreStatus |= 4;
                                        arrayList5 = arrayList4;
                                        arrayList5.add(launcherAppWidgetInfo);
                                        getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
                                    } else {
                                        arrayList5 = arrayList4;
                                    }
                                } else {
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                }
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        break;
                    }
                    bindUpdatedWorkspaceItems(arrayList);
                    if (!intSparseArrayMap.isEmpty()) {
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                    }
                    if (!arrayList3.isEmpty()) {
                        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                            @Override // com.android.launcher3.LauncherModel.CallbackTask
                            public final void execute(BgDataModel.Callbacks callbacks) {
                                callbacks.bindWidgetsRestored(arrayList3);
                            }
                        });
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        for (i6 = 0; i6 < i5; i6++) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty() || !hashSet5.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                    }
                    if (Utilities.ATLEAST_OREO || this.mOp != i7) {
                        return;
                    }
                    for (int i11 = 0; i11 < i5; i11++) {
                        dataModel.widgetsModel.update(app, new PackageUserKey(strArr3[i11], this.mUser), appsList);
                    }
                    bindUpdatedWidgets(dataModel, false);
                    return;
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            case 2:
                SafeCloseable safeCloseableTrackRemoves = appsList.trackRemoves(new Consumer() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        hashSet5.add(((AppInfo) obj).componentName);
                    }
                });
                for (int i12 = 0; i12 < length; i12++) {
                    try {
                        iconCache.updateIconsForPkg(strArr4[i12], this.mUser);
                        appsList.updatePackage(context, strArr4[i12], this.mUser);
                        app.getWidgetCache().removePackage(strArr4[i12], this.mUser);
                    } catch (Throwable th) {
                        if (safeCloseableTrackRemoves == null) {
                            throw th;
                        }
                        try {
                            safeCloseableTrackRemoves.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
                if (safeCloseableTrackRemoves != null) {
                    safeCloseableTrackRemoves.close();
                }
                flagOpRemoveFlag = FlagOp.removeFlag(2);
                flagOpAddFlag = flagOpRemoveFlag;
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            case 3:
                for (int i13 = 0; i13 < length; i13++) {
                    FileLog.d(TAG, "Removing app icon" + strArr4[i13]);
                    iconCache.removeIconsForPkg(strArr4[i13], this.mUser);
                }
                for (i8 = 0; i8 < length; i8++) {
                    appsList.removePackage(strArr4[i8], this.mUser);
                    app.getWidgetCache().removePackage(strArr4[i8], this.mUser);
                }
                flagOpAddFlag = FlagOp.addFlag(2);
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            case 4:
                while (i8 < length) {
                    appsList.removePackage(strArr4[i8], this.mUser);
                    app.getWidgetCache().removePackage(strArr4[i8], this.mUser);
                }
                flagOpAddFlag = FlagOp.addFlag(2);
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            case 5:
            case 6:
                if (i9 == 5) {
                    flagOpAddFlag = FlagOp.addFlag(4);
                } else {
                    flagOpAddFlag = FlagOp.removeFlag(4);
                }
                appsList.updateDisabledFlags(itemInfoMatcherOfPackages, flagOpAddFlag);
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            case 7:
                UserManagerState userManagerState = new UserManagerState();
                userManagerState.init(UserCache.INSTANCE.m166x39265fe7(context), (UserManager) context.getSystemService(UserManager.class));
                if (userManagerState.isUserQuiet(this.mUser)) {
                    flagOpRemoveFlag2 = FlagOp.addFlag(8);
                } else {
                    flagOpRemoveFlag2 = FlagOp.removeFlag(8);
                }
                ItemInfoMatcher itemInfoMatcherOfUser = ItemInfoMatcher.ofUser(this.mUser);
                appsList.updateDisabledFlags(itemInfoMatcherOfUser, flagOpRemoveFlag2);
                appsList.setFlags(2, userManagerState.isAnyProfileQuietModeEnabled());
                flagOpAddFlag = flagOpRemoveFlag2;
                itemInfoMatcherOfPackages = itemInfoMatcherOfUser;
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
            default:
                bindApplicationsIfNeeded();
                intSparseArrayMap = new IntSparseArrayMap();
                if (this.mOp == 1) {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                } else {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.mOp;
                    if (i != 1) {
                        z = true;
                    } else {
                        z = true;
                    }
                    synchronized (dataModel) {
                        it = dataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            it = it;
                            next = it.next();
                            length = length;
                            if (next instanceof WorkspaceItemInfo) {
                                strArr2 = strArr4;
                                if (this.mUser.equals(next.user)) {
                                    workspaceItemInfo = (WorkspaceItemInfo) next;
                                    if (workspaceItemInfo.iconResource == null) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    targetComponent = workspaceItemInfo.getTargetComponent();
                                    if (targetComponent == null) {
                                    }
                                    hashSet = hashSet4;
                                    itemInfoMatcher = itemInfoMatcherOfPackages;
                                    arrayList4 = arrayList2;
                                    bool2 = bool3;
                                    z3 = z2;
                                    z4 = false;
                                    if (!z3) {
                                        arrayList.add(workspaceItemInfo);
                                    } else {
                                        arrayList.add(workspaceItemInfo);
                                    }
                                    if (z3) {
                                        getModelWriter().updateItemInDatabase(workspaceItemInfo);
                                    }
                                    arrayList5 = arrayList4;
                                    hashSet2 = hashSet;
                                    arrayList2 = arrayList5;
                                    hashSet4 = hashSet2;
                                    strArr4 = strArr2;
                                    itemInfoMatcherOfPackages = itemInfoMatcher;
                                    bool3 = bool2;
                                }
                            } else {
                                strArr2 = strArr4;
                            }
                            hashSet = hashSet4;
                            itemInfoMatcher = itemInfoMatcherOfPackages;
                            arrayList4 = arrayList2;
                            bool2 = bool3;
                            if (next instanceof LauncherAppWidgetInfo) {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            } else {
                                arrayList5 = arrayList4;
                                hashSet2 = hashSet;
                            }
                            arrayList2 = arrayList5;
                            hashSet4 = hashSet2;
                            strArr4 = strArr2;
                            itemInfoMatcherOfPackages = itemInfoMatcher;
                            bool3 = bool2;
                        }
                        strArr = strArr4;
                        i2 = length;
                        arrayList3 = arrayList2;
                        bool = bool3;
                        bindUpdatedWorkspaceItems(arrayList);
                        if (!intSparseArrayMap.isEmpty()) {
                            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofItemIds(intSparseArrayMap, bool));
                        }
                        if (!arrayList3.isEmpty()) {
                            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.PackageUpdatedTask$$ExternalSyntheticLambda1
                                @Override // com.android.launcher3.LauncherModel.CallbackTask
                                public final void execute(BgDataModel.Callbacks callbacks) {
                                    callbacks.bindWidgetsRestored(arrayList3);
                                }
                            });
                        }
                    }
                }
                hashSet3 = new HashSet();
                i4 = this.mOp;
                if (i4 == 3) {
                    strArr3 = strArr;
                    Collections.addAll(hashSet3, strArr3);
                } else {
                    strArr3 = strArr;
                    if (i4 == 2) {
                        launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
                        i5 = i2;
                        while (i6 < i5) {
                            if (!launcherApps.isPackageEnabled(strArr3[i6], this.mUser)) {
                                hashSet3.add(strArr3[i6]);
                            }
                        }
                    }
                    if (hashSet3.isEmpty()) {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    } else {
                        i7 = 1;
                        deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                        InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                    }
                    if (Utilities.ATLEAST_OREO) {
                        return;
                    } else {
                        return;
                    }
                }
                i5 = i2;
                if (hashSet3.isEmpty()) {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                } else {
                    i7 = 1;
                    deleteAndBindComponentsRemoved(ItemInfoMatcher.ofPackages(hashSet3, this.mUser).or(ItemInfoMatcher.ofComponents(hashSet5, this.mUser)).and(ItemInfoMatcher.ofItemIds(intSparseArrayMap, true)));
                    InstallShortcutReceiver.removeFromInstallQueue(context, hashSet3, this.mUser);
                }
                if (Utilities.ATLEAST_OREO) {
                    return;
                } else {
                    return;
                }
        }
    }

    private boolean updateWorkspaceItemIntent(Context context, WorkspaceItemInfo si, String packageName) {
        Intent appLaunchIntent = new PackageManagerHelper(context).getAppLaunchIntent(packageName, this.mUser);
        if (appLaunchIntent == null) {
            return false;
        }
        si.intent = appLaunchIntent;
        si.status = 0;
        return true;
    }
}
