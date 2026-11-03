package com.android.launcher3.model;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ModelWriter {
    private static final String TAG = "ModelWriter";
    private final BgDataModel mBgDataModel;
    private final Context mContext;
    private final boolean mHasVerticalHotseat;
    private final LauncherModel mModel;
    private boolean mPreparingToUndo;
    private final boolean mVerifyChanges;
    private final List<Runnable> mDeleteRunnables = new ArrayList();
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public ModelWriter(Context context, LauncherModel model, BgDataModel dataModel, boolean hasVerticalHotseat, boolean verifyChanges) {
        this.mContext = context;
        this.mModel = model;
        this.mBgDataModel = dataModel;
        this.mHasVerticalHotseat = hasVerticalHotseat;
        this.mVerifyChanges = verifyChanges;
    }

    private void updateItemInfoProps(ItemInfo item, int container, int screenId, int cellX, int cellY) {
        MLog.d(TAG, "updateItemInfoProps() called with: item = [" + item + "], container = [" + container + "], screenId = [" + screenId + "], cellX = [" + cellX + "], cellY = [" + cellY + "]");
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        if (container != -101) {
            item.screenId = screenId;
            return;
        }
        if (this.mHasVerticalHotseat) {
            cellX = (LauncherAppState.getIDP(this.mContext).numHotseatIcons - cellY) - 1;
        }
        item.screenId = cellX;
    }

    public void addOrMoveItemInDatabase(ItemInfo item, int container, int screenId, int cellX, int cellY) {
        MLog.d(TAG, "addOrMoveItemInDatabase() called with: item = [" + item + "], container = [" + container + "], screenId = [" + screenId + "], cellX = [" + cellX + "], cellY = [" + cellY + "]");
        if (item.id == -1) {
            addItemToDatabase(item, container, screenId, cellX, cellY);
        } else {
            moveItemInDatabase(item, container, screenId, cellX, cellY);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkItemInfoLocked(int itemId, ItemInfo item, StackTraceElement[] stackTrace) {
        ItemInfo itemInfo = this.mBgDataModel.itemsIdMap.get(itemId);
        if (itemInfo == null || item == itemInfo) {
            return;
        }
        boolean z = Utilities.IS_DEBUG_DEVICE;
        RuntimeException runtimeException = new RuntimeException("item: " + (item != null ? item.toString() : "null") + "modelItem: " + (itemInfo != null ? itemInfo.toString() : "null") + "Error: ItemInfo passed to checkItemInfo doesn't match original");
        if (stackTrace != null) {
            runtimeException.setStackTrace(stackTrace);
            throw runtimeException;
        }
        throw runtimeException;
    }

    public void moveItemInDatabase(final ItemInfo item, int container, int screenId, int cellX, int cellY) {
        updateItemInfoProps(item, container, screenId, cellX, cellY);
        enqueueDeleteRunnable(new UpdateItemRunnable(item, new Supplier() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda5
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m119x23989edd(item);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$moveItemInDatabase$0$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ ContentWriter m119x23989edd(ItemInfo itemInfo) {
        return new ContentWriter(this.mContext).put(LauncherSettings.Favorites.CONTAINER, Integer.valueOf(itemInfo.container)).put(LauncherSettings.Favorites.CELLX, Integer.valueOf(itemInfo.cellX)).put(LauncherSettings.Favorites.CELLY, Integer.valueOf(itemInfo.cellY)).put(LauncherSettings.Favorites.RANK, Integer.valueOf(itemInfo.rank)).put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(itemInfo.screenId));
    }

    public void moveItemsInDatabase(final ArrayList<ItemInfo> items, int container, int screen) {
        MLog.d(TAG, "moveItemsInDatabase() called with: items = [" + items + "], container = [" + container + "], screen = [" + screen + "]");
        ArrayList arrayList = new ArrayList();
        int size = items.size();
        for (int i = 0; i < size; i++) {
            ItemInfo itemInfo = items.get(i);
            updateItemInfoProps(itemInfo, container, screen, itemInfo.cellX, itemInfo.cellY);
            ContentValues contentValues = new ContentValues();
            contentValues.put(LauncherSettings.Favorites.CONTAINER, Integer.valueOf(itemInfo.container));
            contentValues.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(itemInfo.cellX));
            contentValues.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(itemInfo.cellY));
            contentValues.put(LauncherSettings.Favorites.RANK, Integer.valueOf(itemInfo.rank));
            contentValues.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(itemInfo.screenId));
            arrayList.add(contentValues);
        }
        enqueueDeleteRunnable(new UpdateItemsRunnable(items, arrayList));
    }

    public void modifyItemInDatabase(final ItemInfo item, int container, int screenId, int cellX, int cellY, int spanX, int spanY) {
        updateItemInfoProps(item, container, screenId, cellX, cellY);
        item.spanX = spanX;
        item.spanY = spanY;
        Executors.MODEL_EXECUTOR.execute(new UpdateItemRunnable(item, new Supplier() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m118x5ff3c87(item);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$modifyItemInDatabase$1$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ ContentWriter m118x5ff3c87(ItemInfo itemInfo) {
        return new ContentWriter(this.mContext).put(LauncherSettings.Favorites.CONTAINER, Integer.valueOf(itemInfo.container)).put(LauncherSettings.Favorites.CELLX, Integer.valueOf(itemInfo.cellX)).put(LauncherSettings.Favorites.CELLY, Integer.valueOf(itemInfo.cellY)).put(LauncherSettings.Favorites.RANK, Integer.valueOf(itemInfo.rank)).put(LauncherSettings.Favorites.SPANX, Integer.valueOf(itemInfo.spanX)).put(LauncherSettings.Favorites.SPANY, Integer.valueOf(itemInfo.spanY)).put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(itemInfo.screenId));
    }

    public void updateItemInDatabase(final ItemInfo item) {
        Executors.MODEL_EXECUTOR.execute(new UpdateItemRunnable(item, new Supplier() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m120x2ec0ae97(item);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$updateItemInDatabase$2$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ ContentWriter m120x2ec0ae97(ItemInfo itemInfo) {
        ContentWriter contentWriter = new ContentWriter(this.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        return contentWriter;
    }

    public void addItemToDatabase(final ItemInfo item, int container, int screenId, int cellX, int cellY) {
        MLog.d(TAG, "addItemToDatabase() called with: item = [" + item + "], container = [" + container + "], screenId = [" + screenId + "], cellX = [" + cellX + "], cellY = [" + cellY + "]");
        updateItemInfoProps(item, container, screenId, cellX, cellY);
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        item.id = LauncherSettings.Settings.call(contentResolver, LauncherSettings.Settings.METHOD_NEW_ITEM_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
        final ModelVerifier modelVerifier = new ModelVerifier();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m115x3d4cb96c(item, contentResolver, stackTrace, modelVerifier);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addItemToDatabase$3$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ void m115x3d4cb96c(ItemInfo itemInfo, ContentResolver contentResolver, StackTraceElement[] stackTraceElementArr, ModelVerifier modelVerifier) {
        ContentWriter contentWriter = new ContentWriter(this.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        contentWriter.put("_id", Integer.valueOf(itemInfo.id));
        contentResolver.insert(LauncherSettings.Favorites.CONTENT_URI, contentWriter.getValues(this.mContext));
        synchronized (this.mBgDataModel) {
            checkItemInfoLocked(itemInfo.id, itemInfo, stackTraceElementArr);
            this.mBgDataModel.addItem(this.mContext, itemInfo, true);
            modelVerifier.verifyModel();
        }
    }

    public void deleteItemFromDatabase(ItemInfo item) {
        deleteItemsFromDatabase(Arrays.asList(item));
    }

    public void deleteItemsFromDatabase(ItemInfoMatcher matcher) {
        deleteItemsFromDatabase(matcher.filterItemInfos(this.mBgDataModel.itemsIdMap));
    }

    public void deleteItemsFromDatabase(final Collection<? extends ItemInfo> items) {
        MLog.d(TAG, "deleteItemsFromDatabase: items = " + items);
        final ModelVerifier modelVerifier = new ModelVerifier();
        FileLog.d(TAG, "removing items from db " + ((String) items.stream().map(new Function() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ModelWriter.lambda$deleteItemsFromDatabase$4((ItemInfo) obj);
            }
        }).collect(Collectors.joining(","))), new Exception());
        enqueueDeleteRunnable(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m117x3548c65e(items, modelVerifier);
            }
        });
    }

    static /* synthetic */ String lambda$deleteItemsFromDatabase$4(ItemInfo itemInfo) {
        return itemInfo.getTargetComponent() == null ? "" : itemInfo.getTargetComponent().getPackageName();
    }

    /* JADX INFO: renamed from: lambda$deleteItemsFromDatabase$5$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ void m117x3548c65e(Collection collection, ModelVerifier modelVerifier) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            this.mContext.getContentResolver().delete(LauncherSettings.Favorites.getContentUri(itemInfo.id), null, null);
            this.mBgDataModel.removeItem(this.mContext, itemInfo);
            modelVerifier.verifyModel();
        }
    }

    public void deleteFolderAndContentsFromDatabase(final FolderInfo info) {
        MLog.d(TAG, "deleteFolderAndContentsFromDatabase() called with: info = [" + info + "]");
        final ModelVerifier modelVerifier = new ModelVerifier();
        enqueueDeleteRunnable(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m116x45fb0222(info, modelVerifier);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$deleteFolderAndContentsFromDatabase$6$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ void m116x45fb0222(FolderInfo folderInfo, ModelVerifier modelVerifier) {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        contentResolver.delete(LauncherSettings.Favorites.CONTENT_URI, "container=" + folderInfo.id, null);
        this.mBgDataModel.removeItem(this.mContext, folderInfo.contents);
        folderInfo.contents.clear();
        contentResolver.delete(LauncherSettings.Favorites.getContentUri(folderInfo.id), null, null);
        this.mBgDataModel.removeItem(this.mContext, folderInfo);
        modelVerifier.verifyModel();
    }

    public void deleteWidgetInfo(final LauncherAppWidgetInfo info, final LauncherAppWidgetHost host) {
        if (host != null && !info.isCustomWidget() && info.isWidgetIdAllocated()) {
            enqueueDeleteRunnable(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    host.deleteAppWidgetId(info.appWidgetId);
                }
            });
        }
        deleteItemFromDatabase(info);
    }

    public void prepareToUndoDelete() {
        MLog.d(TAG, "prepareToUndoDelete() called");
        if (this.mPreparingToUndo) {
            return;
        }
        if (!this.mDeleteRunnables.isEmpty()) {
            throw new IllegalStateException("There are still uncommitted delete operations!");
        }
        this.mDeleteRunnables.clear();
        this.mPreparingToUndo = true;
    }

    private void enqueueDeleteRunnable(Runnable r) {
        MLog.d(TAG, "enqueueDeleteRunnable() called with: mPreparingToUndo = [" + this.mPreparingToUndo + "], r = [" + r + "]");
        if (this.mPreparingToUndo) {
            this.mDeleteRunnables.add(r);
        } else {
            Executors.MODEL_EXECUTOR.execute(r);
        }
    }

    public void commitDelete() {
        MLog.d(TAG, "commitDelete() called");
        this.mPreparingToUndo = false;
        Iterator<Runnable> it = this.mDeleteRunnables.iterator();
        while (it.hasNext()) {
            Executors.MODEL_EXECUTOR.execute(it.next());
        }
        this.mDeleteRunnables.clear();
    }

    public void abortDelete() {
        MLog.d(TAG, "abortDelete() called");
        this.mPreparingToUndo = false;
        this.mDeleteRunnables.clear();
        this.mModel.forceReload();
    }

    private class UpdateItemRunnable extends UpdateItemBaseRunnable {
        private final ItemInfo mItem;
        private final int mItemId;
        private final Supplier<ContentWriter> mWriter;

        UpdateItemRunnable(ItemInfo item, Supplier<ContentWriter> writer) {
            super();
            this.mItem = item;
            this.mWriter = writer;
            this.mItemId = item.id;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModelWriter.this.mContext.getContentResolver().update(LauncherSettings.Favorites.getContentUri(this.mItemId), this.mWriter.get().getValues(ModelWriter.this.mContext), null, null);
            updateItemArrays(this.mItem, this.mItemId);
        }
    }

    private class UpdateItemsRunnable extends UpdateItemBaseRunnable {
        private final ArrayList<ItemInfo> mItems;
        private final ArrayList<ContentValues> mValues;

        UpdateItemsRunnable(ArrayList<ItemInfo> items, ArrayList<ContentValues> values) {
            super();
            this.mValues = values;
            this.mItems = items;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            int size = this.mItems.size();
            for (int i = 0; i < size; i++) {
                ItemInfo itemInfo = this.mItems.get(i);
                int i2 = itemInfo.id;
                Uri contentUri = LauncherSettings.Favorites.getContentUri(i2);
                arrayList.add(ContentProviderOperation.newUpdate(contentUri).withValues(this.mValues.get(i)).build());
                updateItemArrays(itemInfo, i2);
            }
            try {
                ModelWriter.this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, arrayList);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private abstract class UpdateItemBaseRunnable implements Runnable {
        private final StackTraceElement[] mStackTrace = new Throwable().getStackTrace();
        private final ModelVerifier mVerifier;

        UpdateItemBaseRunnable() {
            this.mVerifier = ModelWriter.this.new ModelVerifier();
        }

        protected void updateItemArrays(ItemInfo item, int itemId) {
            synchronized (ModelWriter.this.mBgDataModel) {
                ModelWriter.this.checkItemInfoLocked(itemId, item, this.mStackTrace);
                if (item.container != -100 && item.container != -101 && !ModelWriter.this.mBgDataModel.folders.containsKey(item.container)) {
                    Log.e(ModelWriter.TAG, "item: " + item + " container being set to: " + item.container + ", not in the list of folders");
                }
                ItemInfo itemInfo = ModelWriter.this.mBgDataModel.itemsIdMap.get(itemId);
                if (itemInfo == null || (itemInfo.container != -100 && itemInfo.container != -101)) {
                    ModelWriter.this.mBgDataModel.workspaceItems.remove(itemInfo);
                } else {
                    int i = itemInfo.itemType;
                    if ((i == 0 || i == 1 || i == 2 || i == 6) && !ModelWriter.this.mBgDataModel.workspaceItems.contains(itemInfo)) {
                        ModelWriter.this.mBgDataModel.workspaceItems.add(itemInfo);
                    }
                }
                this.mVerifier.verifyModel();
            }
        }
    }

    public class ModelVerifier {
        final int startId;

        ModelVerifier() {
            this.startId = ModelWriter.this.mBgDataModel.lastBindId;
        }

        void verifyModel() {
            if (ModelWriter.this.mVerifyChanges && ModelWriter.this.mModel.hasCallbacks()) {
                final int i = ModelWriter.this.mBgDataModel.lastBindId;
                ModelWriter.this.mUiHandler.post(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$ModelVerifier$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m121x44d192ea(i);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$verifyModel$0$com-android-launcher3-model-ModelWriter$ModelVerifier, reason: not valid java name */
        /* synthetic */ void m121x44d192ea(int i) {
            if (ModelWriter.this.mBgDataModel.lastBindId <= i && i != this.startId) {
                ModelWriter.this.mModel.rebindCallbacks();
            }
        }
    }

    public void addEmptyScreenToDatabase(final ItemInfo item, int container, int screenId) {
        MLog.d(TAG, "addEmptyScreenToDatabase() called with: item = [" + item + "], container = [" + container + "], screenId = [" + screenId + "].");
        item.container = container;
        item.screenId = screenId;
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        item.id = LauncherSettings.Settings.call(contentResolver, LauncherSettings.Settings.METHOD_NEW_ITEM_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
        final ModelVerifier modelVerifier = new ModelVerifier();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.model.ModelWriter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m114xfb83dd2f(item, contentResolver, stackTrace, modelVerifier);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addEmptyScreenToDatabase$8$com-android-launcher3-model-ModelWriter, reason: not valid java name */
    /* synthetic */ void m114xfb83dd2f(ItemInfo itemInfo, ContentResolver contentResolver, StackTraceElement[] stackTraceElementArr, ModelVerifier modelVerifier) {
        ContentWriter contentWriter = new ContentWriter(this.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        contentWriter.put("_id", Integer.valueOf(itemInfo.id));
        contentResolver.insert(LauncherSettings.Favorites.CONTENT_URI, contentWriter.getValues(this.mContext));
        synchronized (this.mBgDataModel) {
            checkItemInfoLocked(itemInfo.id, itemInfo, stackTraceElementArr);
            this.mBgDataModel.addItem(this.mContext, itemInfo, true);
            modelVerifier.verifyModel();
        }
    }
}
