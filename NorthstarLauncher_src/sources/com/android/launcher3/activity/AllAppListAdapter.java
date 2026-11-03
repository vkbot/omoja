package com.android.launcher3.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.BadgeRepository;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.activity.model.AllAppInfo;
import com.android.launcher3.activity.model.AppListItemMoveListener;
import com.android.launcher3.activity.model.AppListSort;
import com.android.launcher3.activity.model.DownloadAppInfo;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.activity.view.DownloadProgress;
import com.android.launcher3.activity.view.ShakeFrameLayout;
import com.android.launcher3.util.OnSingleClickListener;
import com.android.launcher3.util.ViewExKt;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.launcher.model.AppIcon;
import com.mega.launcher.model.AppUtils;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AllAppListAdapter extends RecyclerView.Adapter<ListViewHolder> implements AppListItemMoveListener {
    private static final int APP_UPDATE_STATE_CANCEL = 2;
    private static final int APP_UPDATE_STATE_DOWNLOADING = 0;
    private static final int APP_UPDATE_STATE_FAILED = -1;
    private static final int APP_UPDATE_STATE_INSTALLED = 1;
    private static final String TAG = "AllAppListAdapter";
    private final Context mContext;
    private OnItemClickListener mOnItemClickListener;
    private final List<AllAppInfo> mInfos = new ArrayList();
    private final List<AllAppInfo> mDownAppList = new ArrayList();
    private final Map<String, DownloadProgress> mTmpProgressMap = new ArrayMap();
    private boolean mUpgradeShow = false;
    private boolean mIsEditMode = false;
    private final List<String> mEditPckNames = new ArrayList();

    public interface OnItemClickListener {
        void onItemClick(View view, ResolveInfo info, AllAppInfo appInfo);

        void onItemLongClick(View view, int position);

        void onSelectedChanged(boolean select);
    }

    static /* synthetic */ AllAppInfo lambda$setListData$2(AllAppInfo allAppInfo) {
        return allAppInfo;
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mOnItemClickListener = listener;
    }

    public AllAppListAdapter(Context context) {
        this.mContext = context;
    }

    public void setListData(List<AllAppInfo> info, Set<String> removeFromDownload) {
        AllAppInfo allAppInfo;
        ViewExKt.checkMainThreadNoThrow();
        this.mInfos.clear();
        this.mInfos.addAll(info);
        if (removeFromDownload != null && !removeFromDownload.isEmpty()) {
            MLog.d(TAG, "setListData: installed=" + removeFromDownload + " removed=" + removeFromDownloading(removeFromDownload) + " after=" + Utilities.joinToString(this.mDownAppList, new Function() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((AllAppInfo) obj).getPackageName();
                }
            }));
        }
        if (this.mDownAppList.isEmpty()) {
            return;
        }
        Map map = (Map) this.mDownAppList.stream().filter(new Predicate() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AllAppListAdapter.lambda$setListData$0((AllAppInfo) obj);
            }
        }).collect(Collectors.toMap(new Function() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AllAppInfo) obj).getDownloadInfo().getPackageName();
            }
        }, new Function() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AllAppListAdapter.lambda$setListData$2((AllAppInfo) obj);
            }
        }));
        for (AllAppInfo allAppInfo2 : info) {
            ResolveInfo resolveInfo = allAppInfo2.getResolveInfo();
            if (resolveInfo != null && (allAppInfo = (AllAppInfo) map.get(resolveInfo.activityInfo.packageName)) != null) {
                allAppInfo2.setDownloadInfo(allAppInfo.getDownloadInfo());
                this.mDownAppList.remove(allAppInfo);
            }
        }
    }

    static /* synthetic */ boolean lambda$setListData$0(AllAppInfo allAppInfo) {
        return allAppInfo.getDownloadInfo() != null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ListViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.mega_icon_layout, parent, false);
        final View viewFindViewById = viewInflate.findViewById(R.id.list_icon);
        viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AllAppListAdapter.lambda$onCreateViewHolder$3(viewFindViewById, view, motionEvent);
            }
        });
        return new ListViewHolder(viewInflate);
    }

    static /* synthetic */ boolean lambda$onCreateViewHolder$3(View view, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            view.animate().scaleX(0.9f).scaleY(0.9f).setDuration(150L).start();
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ListViewHolder holder, final int position) {
        final AllAppInfo allAppInfo;
        if (position >= this.mInfos.size() + this.mDownAppList.size()) {
            return;
        }
        resetViewHolder(holder);
        if (position < this.mInfos.size()) {
            allAppInfo = this.mInfos.get(position);
        } else {
            allAppInfo = this.mDownAppList.get(position - this.mInfos.size());
        }
        final ResolveInfo resolveInfo = allAppInfo.getResolveInfo();
        Bitmap downloadIcon = allAppInfo.getDownloadIcon();
        String downloadIconUrl = allAppInfo.getDownloadIconUrl();
        DownloadAppInfo downloadInfo = allAppInfo.getDownloadInfo();
        String packageName = allAppInfo.getPackageName();
        boolean z = position < this.mInfos.size() && this.mInfos.get(position).isDownloading();
        if (resolveInfo != null && !z) {
            Drawable drawableUpdateSpecialAppIcon = updateSpecialAppIcon(resolveInfo);
            ImageView imageView = holder.imageView;
            if (drawableUpdateSpecialAppIcon == null) {
                drawableUpdateSpecialAppIcon = allAppInfo.getIcon();
            }
            imageView.setImageDrawable(drawableUpdateSpecialAppIcon);
            holder.downloadProgress.setVisibility(8);
            holder.imageView.setVisibility(0);
            holder.textView.setText(allAppInfo.getTitle());
            holder.shakeFrameLayout.stopShake();
            holder.itemView.setAlpha(1.0f);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m54xa6c3ed01(resolveInfo, allAppInfo, view);
                }
            });
            if (BadgeRepository.INSTANCE.getBadge(packageName, resolveInfo.activityInfo.name) > 0 || (AppUtils.isUpgradeApp(resolveInfo.activityInfo.packageName) && this.mUpgradeShow)) {
                holder.redHot.setVisibility(0);
                return;
            } else {
                holder.redHot.setVisibility(4);
                return;
            }
        }
        holder.downloadProgress.setVisibility(0);
        holder.imageView.setVisibility(4);
        if (downloadInfo != null) {
            holder.textView.setText(downloadInfo.getSoftwareName());
            holder.downloadProgress.setProgress(downloadInfo.getProgress());
            this.mTmpProgressMap.put(packageName, holder.downloadProgress);
        }
        updateDownloadIcon(holder.downloadProgress, downloadIcon, downloadIconUrl);
        holder.itemView.setOnClickListener(new OnSingleClickListener() { // from class: com.android.launcher3.activity.AllAppListAdapter.1
            @Override // com.android.launcher3.util.OnSingleClickListener
            public void onSingleClick(View view) {
                MLog.d(AllAppListAdapter.TAG, "onClick: downloading app position=" + position);
                ToastViewUtils.makeCenterText(AllAppListAdapter.this.mContext, AllAppListAdapter.this.mContext.getResources().getString(R.string.txt_app_list_downloading), 3000L).show();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$4$com-android-launcher3-activity-AllAppListAdapter, reason: not valid java name */
    /* synthetic */ void m54xa6c3ed01(ResolveInfo resolveInfo, AllAppInfo allAppInfo, View view) {
        OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(view, resolveInfo, allAppInfo);
        }
    }

    private void updateDownloadIcon(final DownloadProgress downloadProgress, Bitmap downloadIcon, final String downloadIconUrl) {
        if (downloadIcon != null) {
            downloadProgress.setImageBitmap(downloadIcon);
        } else {
            if (TextUtils.isEmpty(downloadIconUrl)) {
                return;
            }
            downloadProgress.setTag(R.id.download_url, downloadIconUrl);
            Glide.with(downloadProgress).asBitmap().load(downloadIconUrl).into(new CustomTarget<Bitmap>() { // from class: com.android.launcher3.activity.AllAppListAdapter.2
                @Override // com.bumptech.glide.request.target.Target
                public void onLoadCleared(Drawable placeholder) {
                }

                @Override // com.bumptech.glide.request.target.Target
                public /* bridge */ /* synthetic */ void onResourceReady(Object resource, Transition transition) {
                    onResourceReady((Bitmap) resource, (Transition<? super Bitmap>) transition);
                }

                public void onResourceReady(Bitmap resource, Transition<? super Bitmap> transition) {
                    Object tag = downloadProgress.getTag(R.id.download_url);
                    if (tag == null || !tag.equals(downloadIconUrl)) {
                        return;
                    }
                    downloadProgress.setImageBitmap(resource);
                }
            });
        }
    }

    private static void resetViewHolder(ListViewHolder holder) {
        holder.itemView.setAlpha(1.0f);
        holder.itemView.setAlpha(1.0f);
        holder.itemView.setOnClickListener(null);
        holder.imageView.setImageDrawable(null);
        holder.imageView.setVisibility(0);
        holder.redHot.setVisibility(4);
        holder.downloadProgress.setVisibility(8);
    }

    private Drawable updateSpecialAppIcon(ResolveInfo info) {
        if (info.activityInfo.packageName.equals("com.mega.carplay")) {
            return AppIcon.getInstance().getCarPlayIcon(this.mContext, MegaLinkManager.getInstance().isCarPlayConnected());
        }
        if (info.activityInfo.packageName.equals("com.mega.androidauto")) {
            return AppIcon.getInstance().getAndroidAutoIcon(this.mContext, MegaLinkManager.getInstance().getAndroidAutoConnectionStatus() == 2);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.mIsEditMode) {
            return this.mInfos.size();
        }
        if (this.mInfos.isEmpty()) {
            return 0;
        }
        return this.mInfos.size() + this.mDownAppList.size();
    }

    @Override // com.android.launcher3.activity.model.AppListItemMoveListener
    public void onItemMove(int current, int target) {
        ViewExKt.checkMainThreadNoThrow();
        MLog.d("onItemMove: current=" + current + ", target=" + target);
        if (current != target && Utilities.checkPosition(this.mInfos, current) && Utilities.checkPosition(this.mInfos, target)) {
            AllAppInfo allAppInfo = this.mInfos.get(current);
            this.mInfos.remove(current);
            this.mInfos.add(target, allAppInfo);
            notifyItemMoved(current, target);
            AppListSort.get().saveAppList(this.mInfos);
        }
    }

    @Override // com.android.launcher3.activity.model.AppListItemMoveListener
    public void onSelectedChanged(boolean isSelect) {
        MLog.d("onSelectedChanged: " + isSelect);
        OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onSelectedChanged(isSelect);
        }
    }

    public int getItemPosition(String packageName) {
        if (this.mInfos.isEmpty()) {
            return -1;
        }
        for (int i = 0; i < this.mInfos.size(); i++) {
            ResolveInfo resolveInfo = this.mInfos.get(i).getResolveInfo();
            if (resolveInfo != null && resolveInfo.activityInfo.packageName.equals(packageName)) {
                return i;
            }
        }
        return -1;
    }

    public int getItemPosition(String packageName, String className) {
        if (this.mInfos.isEmpty()) {
            return -1;
        }
        int i = -1;
        for (int i2 = 0; i2 < this.mInfos.size(); i2++) {
            ResolveInfo resolveInfo = this.mInfos.get(i2).getResolveInfo();
            if (resolveInfo != null && Objects.equals(packageName, resolveInfo.activityInfo.packageName)) {
                if (i == -1) {
                    i = i2;
                }
                if (Objects.equals(className, resolveInfo.activityInfo.name)) {
                    return i2;
                }
            }
        }
        return i;
    }

    public void setAppEditMode(boolean isEdit) {
        MLog.d("setAppEditMode: " + isEdit + " curEditMode " + this.mIsEditMode);
        if (isEdit == this.mIsEditMode) {
            return;
        }
        this.mIsEditMode = isEdit;
        if (!isEdit) {
            sendExitMode();
        }
        notifyDataSetChanged();
    }

    public void setEditPckInfo(String editPckInfo) {
        synchronized (this) {
            MLog.d("handlerEditPkgInfo: " + editPckInfo);
            if (!TextUtils.isEmpty(editPckInfo)) {
                String[] strArrSplit = editPckInfo.split(",");
                if (strArrSplit.length > 0) {
                    this.mEditPckNames.clear();
                    this.mEditPckNames.addAll(Arrays.asList(strArrSplit));
                }
            }
        }
    }

    private boolean isEditPackage(String pckName) {
        boolean z;
        synchronized (this) {
            for (String str : this.mEditPckNames) {
                if (!TextUtils.isEmpty(str) && str.contains(pckName)) {
                    MLog.i("dock edit package name: " + pckName);
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public boolean getAppEditMode() {
        boolean z;
        synchronized (this) {
            z = this.mIsEditMode;
        }
        return z;
    }

    public void setUpgradeRedHotState(boolean show) {
        MLog.d("setUpgradeRedHotState: " + show);
        synchronized (this) {
            this.mUpgradeShow = show;
        }
    }

    private void sendExitMode() {
        MLog.d("sendExitMode");
        Intent intent = new Intent();
        intent.setAction(Utils.BROADCAST_SYSTEM_UI);
        intent.setPackage(Utils.SYSTEM_PACKAGE);
        intent.putExtra("package", "exitMode");
        intent.putExtra("activity", "exitMode");
        this.mContext.sendBroadcast(intent);
    }

    private void sendAddAppInfo(ResolveInfo info) {
        String str = info.activityInfo.packageName;
        String str2 = info.activityInfo.name;
        MLog.d("sendAddAppInfo " + str + " " + str2);
        Intent intent = new Intent();
        intent.setAction(Utils.BROADCAST_SYSTEM_UI);
        intent.setPackage(Utils.SYSTEM_PACKAGE);
        intent.putExtra("package", str);
        intent.putExtra("activity", str2);
        this.mContext.sendBroadcast(intent);
    }

    private List<AllAppInfo> getAppInfoByPackage(String packageName) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mInfos.size(); i++) {
            AllAppInfo allAppInfo = this.mInfos.get(i);
            ResolveInfo resolveInfo = allAppInfo.getResolveInfo();
            if (resolveInfo != null && TextUtils.equals(resolveInfo.activityInfo.packageName, packageName)) {
                arrayList.add(allAppInfo);
            }
        }
        return arrayList;
    }

    private AllAppInfo getDownloadInfo(String softwareId) {
        for (int i = 0; i < this.mDownAppList.size(); i++) {
            AllAppInfo allAppInfo = this.mDownAppList.get(i);
            DownloadAppInfo downloadInfo = allAppInfo.getDownloadInfo();
            if (downloadInfo != null && TextUtils.equals(downloadInfo.getSoftwareId(), softwareId)) {
                return allAppInfo;
            }
        }
        return null;
    }

    public void addOrUpdate(DownloadAppInfo info) {
        ViewExKt.checkMainThreadNoThrow();
        MLog.i(TAG, "addOrUpdate: " + info.toDebugStr());
        int status = info.getStatus();
        if (status != -1) {
            if (status == 0) {
                List<AllAppInfo> appInfoByPackage = getAppInfoByPackage(info.getPackageName());
                if (!appInfoByPackage.isEmpty()) {
                    removeFromDownloading(info);
                    for (AllAppInfo allAppInfo : appInfoByPackage) {
                        if (allAppInfo.getDownloadInfo() == null) {
                            allAppInfo.setDownloadInfo(info);
                            MLog.i(TAG, "addOrUpdate: package start update");
                        } else {
                            DownloadProgress downloadProgress = this.mTmpProgressMap.get(info.getPackageName());
                            if (downloadProgress != null) {
                                downloadProgress.setProgress(info.getProgress());
                                downloadProgress.invalidate();
                            }
                        }
                    }
                } else {
                    AllAppInfo downloadInfo = getDownloadInfo(info.getSoftwareId());
                    if (downloadInfo == null) {
                        this.mDownAppList.add(new AllAppInfo(info, this.mDownAppList.size()));
                        MLog.i(TAG, "addOrUpdate: package start download");
                    } else {
                        downloadInfo.getDownloadInfo().setProgress(info.getProgress());
                        DownloadProgress downloadProgress2 = this.mTmpProgressMap.get(downloadInfo.getPackageName());
                        if (downloadProgress2 != null) {
                            downloadProgress2.setProgress(info.getProgress());
                            updateDownloadIcon(downloadProgress2, downloadInfo.getDownloadIcon(), downloadInfo.getDownloadIconUrl());
                            downloadProgress2.invalidate();
                        }
                    }
                }
                notifyDataSetChanged();
                return;
            }
            if (status != 1 && status != 2) {
                return;
            }
        }
        List<AllAppInfo> appInfoByPackage2 = getAppInfoByPackage(info.getPackageName());
        boolean z = false;
        if (!appInfoByPackage2.isEmpty()) {
            for (AllAppInfo allAppInfo2 : appInfoByPackage2) {
                if (allAppInfo2.getDownloadInfo() != null) {
                    allAppInfo2.setDownloadInfo(null);
                    MLog.i(TAG, "addOrUpdate: package stop update");
                    z = true;
                }
            }
        }
        if (removeFromDownloading(info)) {
            MLog.i(TAG, "addOrUpdate: package stop download");
        } else if (!z) {
            return;
        }
        notifyDataSetChanged();
    }

    static /* synthetic */ boolean lambda$removeFromDownloading$5(Set set, AllAppInfo allAppInfo) {
        return allAppInfo.getDownloadInfo() == null || set.contains(allAppInfo.getDownloadInfo().getPackageName());
    }

    private boolean removeFromDownloading(final Set<String> packages) {
        return packages != null && this.mDownAppList.removeIf(new Predicate() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AllAppListAdapter.lambda$removeFromDownloading$5(packages, (AllAppInfo) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$removeFromDownloading$6(DownloadAppInfo downloadAppInfo, AllAppInfo allAppInfo) {
        return allAppInfo.getDownloadInfo() == null || TextUtils.equals(allAppInfo.getDownloadInfo().getSoftwareId(), downloadAppInfo.getSoftwareId());
    }

    private boolean removeFromDownloading(final DownloadAppInfo info) {
        if (info == null) {
            return false;
        }
        return this.mDownAppList.removeIf(new Predicate() { // from class: com.android.launcher3.activity.AllAppListAdapter$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AllAppListAdapter.lambda$removeFromDownloading$6(info, (AllAppInfo) obj);
            }
        });
    }

    public boolean hasDownloadApp() {
        List<AllAppInfo> list = this.mDownAppList;
        return list != null && list.size() > 0;
    }

    static class ListViewHolder extends RecyclerView.ViewHolder {
        DownloadProgress downloadProgress;
        ImageView imageView;
        ImageView redHot;
        ShakeFrameLayout shakeFrameLayout;
        TextView textView;

        public ListViewHolder(View itemView) {
            super(itemView);
            this.shakeFrameLayout = (ShakeFrameLayout) itemView.findViewById(R.id.root_view);
            this.imageView = (ImageView) itemView.findViewById(R.id.list_icon);
            this.textView = (TextView) itemView.findViewById(R.id.list_text);
            this.redHot = (ImageView) itemView.findViewById(R.id.icon_red_hot);
            this.downloadProgress = (DownloadProgress) itemView.findViewById(R.id.download_progress);
            this.imageView.setClipToOutline(true);
            this.imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.activity.AllAppListAdapter.ListViewHolder.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 32.0f);
                }
            });
            this.downloadProgress.setClipToOutline(true);
            this.downloadProgress.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.activity.AllAppListAdapter.ListViewHolder.2
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 32.0f);
                }
            });
        }
    }
}
