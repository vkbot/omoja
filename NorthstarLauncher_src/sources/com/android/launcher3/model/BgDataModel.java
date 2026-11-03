package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.MutableInt;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.EmptyScreenInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.widget.WidgetListRowEntry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class BgDataModel {
    private static final String TAG = "BgDataModel";
    public int flags;
    public final IntSparseArrayMap<ItemInfo> itemsIdMap = new IntSparseArrayMap<>();
    public final ArrayList<ItemInfo> workspaceItems = new ArrayList<>();
    public final ArrayList<LauncherAppWidgetInfo> appWidgets = new ArrayList<>();
    public final IntSparseArrayMap<FolderInfo> folders = new IntSparseArrayMap<>();
    public final Map<ShortcutKey, MutableInt> pinnedShortcutCounts = new HashMap();
    public final ArrayList<AppInfo> cachedPredictedItems = new ArrayList<>();
    public final HashMap<ComponentKey, Integer> deepShortcutMap = new HashMap<>();
    public final WidgetsModel widgetsModel = new WidgetsModel();
    public int lastBindId = 0;
    public final ArrayList<EmptyScreenInfo> emptyScreens = new ArrayList<>();

    public interface Callbacks {
        public static final int FLAG_HAS_SHORTCUT_PERMISSION = 1;
        public static final int FLAG_QUIET_MODE_CHANGE_PERMISSION = 4;
        public static final int FLAG_QUIET_MODE_ENABLED = 2;

        void bindAllApplications(AppInfo[] apps, int flags);

        void bindAllWidgets(ArrayList<WidgetListRowEntry> widgets, boolean updateAppsOnly);

        void bindAppsAdded(IntArray newScreens, ArrayList<ItemInfo> addNotAnimated, ArrayList<ItemInfo> addAnimated);

        void bindDeepShortcutMap(HashMap<ComponentKey, Integer> deepShortcutMap);

        void bindItems(List<ItemInfo> shortcuts, boolean forceAnimateIcons);

        void bindPredictedItems(List<AppInfo> appInfos, IntArray ranks);

        void bindRestoreItemsChange(HashSet<ItemInfo> updates);

        void bindScreens(IntArray orderedScreenIds);

        void bindWidgetsRestored(ArrayList<LauncherAppWidgetInfo> widgets);

        void bindWorkspaceComponentsRemoved(ItemInfoMatcher matcher);

        void bindWorkspaceItemsChanged(ArrayList<WorkspaceItemInfo> updated);

        void clearPendingBinds();

        void executeOnNextDraw(ViewOnDrawExecutor executor);

        void finishBindingItems(int pageBoundFirst);

        void finishFirstPageBind(ViewOnDrawExecutor executor);

        int getPageToBindSynchronously();

        void onPageBoundSynchronously(int page);

        void preAddApps();

        void startBinding();
    }

    public static /* synthetic */ ArrayList $r8$lambda$E2McIAGPWBO62AkYPcfatUmDGDA() {
        return new ArrayList();
    }

    public synchronized void clear() {
        this.workspaceItems.clear();
        this.appWidgets.clear();
        this.folders.clear();
        this.itemsIdMap.clear();
        this.pinnedShortcutCounts.clear();
        this.deepShortcutMap.clear();
        this.emptyScreens.clear();
    }

    public synchronized IntArray collectWorkspaceScreens() {
        IntSet intSet;
        intSet = new IntSet();
        for (ItemInfo itemInfo : this.itemsIdMap) {
            if (itemInfo.container == -100) {
                intSet.add(itemInfo.screenId);
            }
        }
        if (intSet.isEmpty()) {
            intSet.add(0);
        }
        return intSet.getArray();
    }

    public synchronized void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        writer.println(prefix + "Data Model:");
        writer.println(prefix + " ---- workspace items ");
        for (int i = 0; i < this.workspaceItems.size(); i++) {
            writer.println(prefix + '\t' + this.workspaceItems.get(i).toString());
        }
        writer.println(prefix + " ---- appwidget items ");
        for (int i2 = 0; i2 < this.appWidgets.size(); i2++) {
            writer.println(prefix + '\t' + this.appWidgets.get(i2).toString());
        }
        writer.println(prefix + " ---- folder items ");
        for (int i3 = 0; i3 < this.folders.size(); i3++) {
            writer.println(prefix + '\t' + this.folders.valueAt(i3).toString());
        }
        writer.println(prefix + " ---- items id map ");
        for (int i4 = 0; i4 < this.itemsIdMap.size(); i4++) {
            writer.println(prefix + '\t' + this.itemsIdMap.valueAt(i4).toString());
        }
        if (args.length > 0 && TextUtils.equals(args[0], "--all")) {
            writer.println(prefix + "shortcut counts ");
            Iterator<Integer> it = this.deepShortcutMap.values().iterator();
            while (it.hasNext()) {
                writer.print(it.next() + ", ");
            }
            writer.println();
        }
    }

    public synchronized void removeItem(Context context, ItemInfo... items) {
        removeItem(context, Arrays.asList(items));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0046 A[Catch: all -> 0x00b8, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x0005, B:6:0x000b, B:38:0x00ad, B:21:0x002a, B:22:0x0031, B:24:0x003f, B:26:0x0046, B:28:0x0050, B:29:0x0054, B:30:0x005a, B:31:0x0067, B:33:0x006d, B:35:0x0079, B:36:0x00a2, B:37:0x00a8), top: B:45:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0050 A[Catch: all -> 0x00b8, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x0005, B:6:0x000b, B:38:0x00ad, B:21:0x002a, B:22:0x0031, B:24:0x003f, B:26:0x0046, B:28:0x0050, B:29:0x0054, B:30:0x005a, B:31:0x0067, B:33:0x006d, B:35:0x0079, B:36:0x00a2, B:37:0x00a8), top: B:45:0x0001 }] */
    public synchronized void removeItem(Context context, Iterable<? extends ItemInfo> items) {
        for (ItemInfo itemInfo : items) {
            int i = itemInfo.itemType;
            if (i == 0 || i == 1) {
                this.workspaceItems.remove(itemInfo);
            } else if (i == 2) {
                this.folders.remove(itemInfo.id);
                for (ItemInfo itemInfo2 : this.itemsIdMap) {
                    if (itemInfo2.container == itemInfo.id) {
                        Log.e(TAG, "deleting a folder (" + itemInfo + ") which still contains items (" + itemInfo2 + ")");
                    }
                }
                this.workspaceItems.remove(itemInfo);
            } else if (i == 4 || i == 5) {
                this.appWidgets.remove(itemInfo);
            } else if (i == 6) {
                ShortcutKey shortcutKeyFromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
                MutableInt mutableInt = this.pinnedShortcutCounts.get(shortcutKeyFromItemInfo);
                if (mutableInt != null) {
                    int i2 = mutableInt.value - 1;
                    mutableInt.value = i2;
                    if (i2 == 0) {
                        if (!InstallShortcutReceiver.getPendingShortcuts(context).contains(shortcutKeyFromItemInfo)) {
                            unpinShortcut(context, shortcutKeyFromItemInfo);
                        }
                    }
                } else if (!InstallShortcutReceiver.getPendingShortcuts(context).contains(shortcutKeyFromItemInfo)) {
                    unpinShortcut(context, shortcutKeyFromItemInfo);
                }
                this.workspaceItems.remove(itemInfo);
            } else if (i == 8) {
                this.emptyScreens.remove(itemInfo);
            }
            this.itemsIdMap.remove(itemInfo.id);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d4 A[Catch: all -> 0x00db, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0005, B:19:0x0047, B:20:0x0050, B:22:0x005e, B:25:0x0070, B:27:0x0074, B:23:0x0069, B:28:0x007d, B:29:0x0085, B:30:0x0095, B:32:0x009b, B:36:0x00a4, B:38:0x00ae, B:39:0x00c7, B:40:0x00d4), top: B:46:0x0005 }] */
    public synchronized void addItem(Context context, ItemInfo item, boolean newItem) {
        MLog.d(TAG, "addItem() called with: item = [" + item + "], newItem = [" + newItem + "]");
        this.itemsIdMap.put(item.id, item);
        int i = item.itemType;
        if (i == 0 || i == 1) {
            if (item.container != -100 || item.container == -101) {
                this.workspaceItems.add(item);
            } else if (newItem) {
                if (!this.folders.containsKey(item.container)) {
                    Log.e(TAG, "adding item: " + item + " to a folder that  doesn't exist");
                }
            } else {
                findOrMakeFolder(item.container).add((WorkspaceItemInfo) item, false);
            }
        } else if (i == 2) {
            this.folders.put(item.id, (FolderInfo) item);
            this.workspaceItems.add(item);
        } else if (i == 4 || i == 5) {
            this.appWidgets.add((LauncherAppWidgetInfo) item);
        } else if (i == 6) {
            ShortcutKey shortcutKeyFromItemInfo = ShortcutKey.fromItemInfo(item);
            MutableInt mutableInt = this.pinnedShortcutCounts.get(shortcutKeyFromItemInfo);
            if (mutableInt == null) {
                mutableInt = new MutableInt(1);
                this.pinnedShortcutCounts.put(shortcutKeyFromItemInfo, mutableInt);
            } else {
                mutableInt.value++;
            }
            if (newItem && mutableInt.value == 1) {
                updatePinnedShortcuts(context, shortcutKeyFromItemInfo, new BiConsumer() { // from class: com.android.launcher3.model.BgDataModel$$ExternalSyntheticLambda1
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ((List) obj).add((String) obj2);
                    }
                });
            }
            if (item.container != -100) {
                this.workspaceItems.add(item);
            } else {
                this.workspaceItems.add(item);
            }
        } else if (i == 8) {
            this.emptyScreens.add((EmptyScreenInfo) item);
        }
    }

    public void unpinShortcut(Context context, ShortcutKey key) {
        updatePinnedShortcuts(context, key, new BiConsumer() { // from class: com.android.launcher3.model.BgDataModel$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((List) obj).remove((String) obj2);
            }
        });
    }

    private void updatePinnedShortcuts(Context context, ShortcutKey key, BiConsumer<List<String>, String> idOp) {
        String packageName = key.componentName.getPackageName();
        String id = key.getId();
        UserHandle userHandle = key.user;
        List<String> list = (List) new ShortcutRequest(context, userHandle).forPackage(packageName).query(2).stream().map(new Function() { // from class: com.android.launcher3.model.BgDataModel$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ShortcutInfo) obj).getId();
            }
        }).collect(Collectors.toCollection(new Supplier() { // from class: com.android.launcher3.model.BgDataModel$$ExternalSyntheticLambda3
            @Override // java.util.function.Supplier
            public final Object get() {
                return BgDataModel.$r8$lambda$E2McIAGPWBO62AkYPcfatUmDGDA();
            }
        }));
        idOp.accept(list, id);
        try {
            ((LauncherApps) context.getSystemService(LauncherApps.class)).pinShortcuts(packageName, list, userHandle);
        } catch (IllegalStateException | SecurityException e) {
            Log.w(TAG, "Failed to pin shortcut", e);
        }
    }

    public synchronized FolderInfo findOrMakeFolder(int id) {
        FolderInfo folderInfo;
        folderInfo = this.folders.get(id);
        if (folderInfo == null) {
            folderInfo = new FolderInfo();
            this.folders.put(id, folderInfo);
        }
        return folderInfo;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b A[Catch: all -> 0x0083, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x000d, B:7:0x0013, B:9:0x0025, B:11:0x002d, B:12:0x0031, B:13:0x0035, B:15:0x003b, B:17:0x0047, B:19:0x004d, B:21:0x0053, B:23:0x0059, B:27:0x0079, B:26:0x0074), top: B:34:0x0003 }] */
    public synchronized void updateDeepShortcutCounts(String packageName, UserHandle user, List<ShortcutInfo> shortcuts) {
        if (packageName != null) {
            Iterator<ComponentKey> it = this.deepShortcutMap.keySet().iterator();
            while (it.hasNext()) {
                ComponentKey next = it.next();
                if (next.componentName.getPackageName().equals(packageName) && next.user.equals(user)) {
                    it.remove();
                }
            }
            for (ShortcutInfo shortcutInfo : shortcuts) {
                if (!shortcutInfo.isEnabled() && (shortcutInfo.isDeclaredInManifest() || shortcutInfo.isDynamic())) {
                    if (shortcutInfo.getActivity() != null) {
                        ComponentKey componentKey = new ComponentKey(shortcutInfo.getActivity(), shortcutInfo.getUserHandle());
                        Integer num = this.deepShortcutMap.get(componentKey);
                        HashMap<ComponentKey, Integer> map = this.deepShortcutMap;
                        int iIntValue = 1;
                        if (num != null) {
                            iIntValue = 1 + num.intValue();
                        }
                        map.put(componentKey, Integer.valueOf(iIntValue));
                    }
                }
            }
        } else {
            while (r4.hasNext()) {
                if (!shortcutInfo.isEnabled()) {
                }
            }
        }
        throw th;
    }
}
