package com.android.launcher3.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.WidgetPreviewLoader;
import com.android.launcher3.activity.model.AppListSort;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsTable1x1Adapter extends RecyclerView.Adapter<WidgetsTableItemViewHolder> {
    protected static final long CLICK_INTERVAL = 500;
    protected static final boolean DEBUG = false;
    protected static final String TAG = "WidgetsTableAdapter";
    public static final String WIDGET_EXIST = "exist";
    private boolean mApplyBitmapDeferred;
    protected Context mContext;
    protected final WidgetsDiffReporter mDiffReporter;
    private ItemInfo mDragInfo;
    protected final View.OnLongClickListener mIconLongClickListener;
    protected long mLastClickTime;
    protected final LayoutInflater mLayoutInflater;
    protected final OnItemClickListener mOnItemClickListener;
    protected final WidgetPreviewLoader mWidgetPreviewLoader;
    protected ArrayList<WidgetListRowEntry> mEntries = new ArrayList<>();
    protected final List<WidgetItem> mWidgetsList = new ArrayList();

    public interface OnItemClickListener {
        void onItemClick(View view, int position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int pos) {
        return pos;
    }

    public boolean onFailedToRecycleView(WidgetsRowViewHolder holder) {
        return true;
    }

    public void setDraggingInfo(ItemInfo itemInfo) {
        this.mDragInfo = itemInfo;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder holder, int position, List payloads) {
        onBindViewHolder((WidgetsTableItemViewHolder) holder, position, (List<Object>) payloads);
    }

    public WidgetsTable1x1Adapter(Context context, LayoutInflater layoutInflater, WidgetPreviewLoader widgetPreviewLoader, IconCache iconCache, OnItemClickListener iconClickListener, View.OnLongClickListener iconLongClickListener) {
        this.mContext = context;
        this.mLayoutInflater = layoutInflater;
        this.mWidgetPreviewLoader = widgetPreviewLoader;
        this.mOnItemClickListener = iconClickListener;
        this.mIconLongClickListener = iconLongClickListener;
        this.mDiffReporter = new WidgetsDiffReporter(iconCache, this);
    }

    public void setApplyBitmapDeferred(boolean isDeferred, RecyclerView rv) {
        this.mApplyBitmapDeferred = isDeferred;
        for (int childCount = rv.getChildCount() - 1; childCount >= 0; childCount--) {
            ((WidgetsTableItemViewHolder) rv.getChildViewHolder(rv.getChildAt(childCount))).widgetCell.setApplyBitmapDeferred(this.mApplyBitmapDeferred);
        }
    }

    protected boolean isDragging(ItemInfo itemInfo) {
        ItemInfo itemInfo2;
        if (itemInfo == null || (itemInfo2 = this.mDragInfo) == null) {
            return false;
        }
        return WidgetsTableSheet.isSameWith(itemInfo, itemInfo2);
    }

    public void setWidgets(ArrayList<WidgetListRowEntry> tempEntries) {
        tempEntries.sort(new WidgetsListAdapter.WidgetListRowEntryComparator());
        this.mEntries.clear();
        this.mEntries.addAll(tempEntries);
        ArrayList arrayList = new ArrayList();
        Iterator<WidgetListRowEntry> it = this.mEntries.iterator();
        while (it.hasNext()) {
            for (WidgetItem widgetItem : it.next().widgets) {
                if (widgetItem.spanX == 1 && widgetItem.appInfo != null && widgetItem.appInfo.getTargetComponent() != null) {
                    arrayList.add(widgetItem);
                }
            }
        }
        this.mWidgetsList.clear();
        this.mWidgetsList.addAll(AppListSort.get().sortWidgetItems(arrayList));
        notifyDataSetChanged();
        MLog.d(TAG, "setWidgets: mWidgetsList=" + this.mWidgetsList);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mWidgetsList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(WidgetsTableItemViewHolder holder, int pos) {
        WidgetItem widgetItem = this.mWidgetsList.get(pos);
        holder.widgetCell.setOnLongClickListener(this.mIconLongClickListener);
        holder.widgetCell.applyFromCellItem(widgetItem, this.mWidgetPreviewLoader);
        holder.widgetCell.setApplyBitmapDeferred(this.mApplyBitmapDeferred);
        holder.widgetCell.ensurePreview();
        ItemInfo itemInfo = (ItemInfo) holder.widgetCell.getTag();
        boolean z = isDragging(itemInfo) || checkWidgetExist(itemInfo);
        MLog.d(TAG, "onBindViewHolder: " + widgetItem + " isExist= " + z);
        setClickEvent(z, holder, pos, false);
        holder.widgetCell.setVisibility(0);
    }

    public void onBindViewHolder(WidgetsTableItemViewHolder holder, int position, List<Object> payloads) {
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, position, payloads);
            return;
        }
        Bundle bundle = (Bundle) payloads.get(0);
        for (String str : bundle.keySet()) {
            str.hashCode();
            if (str.equals(WIDGET_EXIST)) {
                setClickEvent(bundle.getBoolean(str), holder, position, true);
            }
        }
    }

    private void setClickEvent(boolean isExist, final WidgetsTableItemViewHolder holder, final int position, boolean animate) {
        if (isExist) {
            holder.widgetAddBadge.setVisibility(8);
            if (animate) {
                holder.widgetCell.animate().alpha(0.6f).start();
            } else {
                holder.widgetCell.setAlpha(0.6f);
            }
            holder.widgetCell.setOnClickListener(null);
            return;
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.launcher3.widget.WidgetsTable1x1Adapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - WidgetsTable1x1Adapter.this.mLastClickTime < WidgetsTable1x1Adapter.CLICK_INTERVAL) {
                    return;
                }
                WidgetsTable1x1Adapter.this.mLastClickTime = jElapsedRealtime;
                ImageView imageView = holder.widgetAddBadge;
                imageView.setPivotX(imageView.getWidth() * 0.5f);
                imageView.setPivotY(imageView.getHeight() * 0.5f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 0.0f).setDuration(100L), ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 0.0f).setDuration(100L));
                animatorSet.removeAllListeners();
                animatorSet.addListener(new C00101(imageView));
                animatorSet.start();
            }

            /* JADX INFO: renamed from: com.android.launcher3.widget.WidgetsTable1x1Adapter$1$1, reason: invalid class name and collision with other inner class name */
            class C00101 extends AnimatorListenerAdapter {
                final /* synthetic */ View val$targetView;

                C00101(final View val$targetView) {
                    this.val$targetView = val$targetView;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation, boolean isReverse) {
                    super.onAnimationEnd(animation, isReverse);
                    if (WidgetsTable1x1Adapter.this.mOnItemClickListener != null) {
                        WidgetsTable1x1Adapter.this.mOnItemClickListener.onItemClick(holder.widgetCell, position);
                    }
                    final View view = this.val$targetView;
                    view.postDelayed(new Runnable() { // from class: com.android.launcher3.widget.WidgetsTable1x1Adapter$1$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            WidgetsTable1x1Adapter.AnonymousClass1.C00101.lambda$onAnimationEnd$0(view);
                        }
                    }, 200L);
                }

                static /* synthetic */ void lambda$onAnimationEnd$0(View view) {
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                }
            }
        };
        holder.widgetAddBadge.setVisibility(0);
        holder.widgetAddBadge.setOnClickListener(onClickListener);
        holder.widgetCell.setAlpha(1.0f);
        holder.widgetCell.setOnClickListener(onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public WidgetsTableItemViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new WidgetsTableItemViewHolder((ViewGroup) this.mLayoutInflater.inflate(R.layout.item_table_widget_cell_1x1, parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(WidgetsTableItemViewHolder holder) {
        holder.widgetCell.clear();
        holder.shakeHolder.stopShake();
    }

    protected boolean checkWidgetExist(ItemInfo item) {
        Iterator<FolderInfo> it = Launcher.getLauncher(this.mContext).getModel().getBgDataModel().folders.iterator();
        while (it.hasNext()) {
            if (WidgetsTableSheet.hasSameWidgetInfo(item, it.next().contents)) {
                return true;
            }
        }
        if (item.itemType == 0) {
            return WidgetsTableSheet.hasSameWidgetInfo(item, Launcher.getLauncher(this.mContext).getModel().getBgDataModel().workspaceItems);
        }
        if (item.itemType == 4) {
            return WidgetsTableSheet.hasSameWidgetInfo(item, Launcher.getLauncher(this.mContext).getModel().getBgDataModel().appWidgets);
        }
        return false;
    }

    public void onAndroidAutoConnectionChanged(boolean connected) {
        MLog.d(TAG, "onAndroidAutoConnectionChanged: " + connected);
        notifyItemChangedForPackage("com.mega.androidauto");
    }

    public void onCarPlayConnectionChanged(boolean connected) {
        MLog.d(TAG, "onCarPlayConnectionChanged: " + connected);
        notifyItemChangedForPackage("com.mega.carplay");
    }

    private void notifyItemChangedForPackage(String packageName) {
        for (int i = 0; i < this.mWidgetsList.size(); i++) {
            if (Objects.equals(this.mWidgetsList.get(i).componentName.getPackageName(), packageName)) {
                notifyItemChanged(i);
            }
        }
    }
}
