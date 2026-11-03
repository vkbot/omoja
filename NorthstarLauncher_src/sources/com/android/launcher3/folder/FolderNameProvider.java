package com.android.launcher3.folder;

import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.R;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.util.ResourceBasedOverride;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class FolderNameProvider implements ResourceBasedOverride {
    private static final boolean DEBUG = true;
    public static final int SUGGEST_MAX = 4;
    private static final String TAG = "FolderNameProvider";
    protected List<AppInfo> mAppInfos;
    protected IntSparseArrayMap<FolderInfo> mFolderInfos;

    private void load(List<AppInfo> appInfos, IntSparseArrayMap<FolderInfo> folderInfos) {
        this.mAppInfos = appInfos;
        this.mFolderInfos = folderInfos;
    }

    public static FolderNameProvider newInstance(Context context) {
        FolderNameProvider folderNameProvider = (FolderNameProvider) ResourceBasedOverride.Overrides.getObject(FolderNameProvider.class, context.getApplicationContext(), R.string.folder_name_provider_class);
        Preconditions.assertWorkerThread();
        folderNameProvider.load(context);
        return folderNameProvider;
    }

    public static FolderNameProvider newInstance(Context context, List<AppInfo> appInfos, IntSparseArrayMap<FolderInfo> folderInfos) {
        Preconditions.assertWorkerThread();
        FolderNameProvider folderNameProvider = (FolderNameProvider) ResourceBasedOverride.Overrides.getObject(FolderNameProvider.class, context.getApplicationContext(), R.string.folder_name_provider_class);
        folderNameProvider.load(appInfos, folderInfos);
        return folderNameProvider;
    }

    private void load(Context context) {
        LauncherAppState.getInstance(context).getModel().enqueueModelUpdateTask(new FolderNameWorker());
    }

    public void getSuggestedFolderName(Context context, ArrayList<WorkspaceItemInfo> workspaceItemInfos, final FolderNameInfos nameInfos) {
        Preconditions.assertWorkerThread();
        Log.d(TAG, "getSuggestedFolderName:" + nameInfos.toString());
        Set set = (Set) workspaceItemInfos.stream().map(new Function() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkspaceItemInfo) obj).user;
            }
        }).collect(Collectors.toSet());
        if (set.size() == 1 && !set.contains(Process.myUserHandle())) {
            setAsLastSuggestion(nameInfos, context.getResources().getString(R.string.work_folder_name));
        }
        Set set2 = (Set) workspaceItemInfos.stream().map(new Function() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkspaceItemInfo) obj).getTargetComponent();
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((ComponentName) obj);
            }
        }).map(new Function() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).getPackageName();
            }
        }).collect(Collectors.toSet());
        if (set2.size() == 1) {
            getAppInfoByPackageName((String) set2.iterator().next()).ifPresent(new Consumer() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.m96x45da2ab1(nameInfos, (AppInfo) obj);
                }
            });
        }
        Log.d(TAG, "getSuggestedFolderName:" + nameInfos.toString());
    }

    /* JADX INFO: renamed from: lambda$getSuggestedFolderName$1$com-android-launcher3-folder-FolderNameProvider, reason: not valid java name */
    /* synthetic */ void m96x45da2ab1(FolderNameInfos folderNameInfos, AppInfo appInfo) {
        setAsFirstSuggestion(folderNameInfos, appInfo.title.toString());
    }

    private Optional<AppInfo> getAppInfoByPackageName(final String packageName) {
        List<AppInfo> list = this.mAppInfos;
        if (list == null || list.isEmpty()) {
            return Optional.empty();
        }
        return this.mAppInfos.stream().filter(new Predicate() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return FolderNameProvider.lambda$getAppInfoByPackageName$2((AppInfo) obj);
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.folder.FolderNameProvider$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AppInfo) obj).componentName.getPackageName().equals(packageName);
            }
        }).findAny();
    }

    static /* synthetic */ boolean lambda$getAppInfoByPackageName$2(AppInfo appInfo) {
        return appInfo.componentName != null;
    }

    private void setAsFirstSuggestion(FolderNameInfos nameInfos, CharSequence label) {
        if (nameInfos == null || nameInfos.contains(label)) {
            return;
        }
        nameInfos.setStatus(2);
        nameInfos.setStatus(4);
        CharSequence[] labels = nameInfos.getLabels();
        Float[] scores = nameInfos.getScores();
        for (int length = labels.length - 1; length > 0; length--) {
            int i = length - 1;
            CharSequence charSequence = labels[i];
            if (charSequence != null && !TextUtils.isEmpty(charSequence)) {
                nameInfos.setLabel(length, labels[i], scores[i]);
            }
        }
        nameInfos.setLabel(0, label, Float.valueOf(1.0f));
    }

    private void setAsLastSuggestion(FolderNameInfos nameInfos, CharSequence label) {
        if (nameInfos == null || nameInfos.contains(label)) {
            return;
        }
        nameInfos.setStatus(2);
        nameInfos.setStatus(4);
        CharSequence[] labels = nameInfos.getLabels();
        for (int i = 0; i < labels.length; i++) {
            CharSequence charSequence = labels[i];
            if (charSequence == null || TextUtils.isEmpty(charSequence)) {
                nameInfos.setLabel(i, label, Float.valueOf(1.0f));
                return;
            }
        }
        nameInfos.setLabel(labels.length - 1, label, Float.valueOf(1.0f));
    }

    private class FolderNameWorker extends BaseModelUpdateTask {
        private FolderNameWorker() {
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
            FolderNameProvider.this.mFolderInfos = dataModel.folders.clone();
            FolderNameProvider.this.mAppInfos = Arrays.asList(apps.copyData());
        }
    }
}
