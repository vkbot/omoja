package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.WidgetListRowEntry;
import com.android.launcher3.widget.WidgetsListAdapter;
import com.android.launcher3.widget.WidgetsTable1x1Adapter;
import com.android.launcher3.widget.WidgetsTableItemViewHolder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsTable2x1Adapter extends WidgetsTable1x1Adapter {
    private static final String TAG = "WidgetsTable2x1Adapter";
    private List<ComponentName> mAppWidgetOrder;
    private final AppWidgetHostViewPool mViewPool;

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder holder, int position, List payloads) {
        onBindViewHolder((WidgetsTableItemViewHolder) holder, position, (List<Object>) payloads);
    }

    public WidgetsTable2x1Adapter(Context context, LayoutInflater layoutInflater, WidgetPreviewLoader widgetPreviewLoader, IconCache iconCache, WidgetsTable1x1Adapter.OnItemClickListener iconClickListener, View.OnLongClickListener iconLongClickListener) {
        super(context, layoutInflater, widgetPreviewLoader, iconCache, iconClickListener, iconLongClickListener);
        this.mViewPool = new AppWidgetHostViewPool(context);
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter
    public void setWidgets(ArrayList<WidgetListRowEntry> tempEntries) {
        WidgetsListAdapter.WidgetListRowEntryComparator widgetListRowEntryComparator = new WidgetsListAdapter.WidgetListRowEntryComparator();
        Collections.sort(tempEntries, widgetListRowEntryComparator);
        this.mDiffReporter.process(this.mEntries, tempEntries, widgetListRowEntryComparator);
        ArrayList arrayList = new ArrayList();
        Iterator<WidgetListRowEntry> it = this.mEntries.iterator();
        while (it.hasNext()) {
            for (WidgetItem widgetItem : it.next().widgets) {
                if (widgetItem.widgetInfo != null && widgetItem.spanX == 2) {
                    arrayList.add(widgetItem);
                }
            }
        }
        this.mWidgetsList.clear();
        this.mWidgetsList.addAll(sortAppWidgets(arrayList));
        MLog.d(TAG, "setWidgets: mWidgetsList=" + this.mWidgetsList);
    }

    private List<WidgetItem> sortAppWidgets(List<WidgetItem> widgetsList) {
        if (this.mAppWidgetOrder == null) {
            this.mAppWidgetOrder = (List) Arrays.stream(this.mContext.getResources().getStringArray(R.array.app_widget_order)).map(new Function() { // from class: com.android.launcher3.WidgetsTable2x1Adapter$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ComponentName.unflattenFromString((String) obj);
                }
            }).collect(Collectors.toList());
        }
        return (List) widgetsList.stream().sorted(new Comparator() { // from class: com.android.launcher3.WidgetsTable2x1Adapter$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.m47xc5c698f6((WidgetItem) obj, (WidgetItem) obj2);
            }
        }).collect(Collectors.toList());
    }

    /* JADX INFO: renamed from: lambda$sortAppWidgets$0$com-android-launcher3-WidgetsTable2x1Adapter, reason: not valid java name */
    /* synthetic */ int m47xc5c698f6(WidgetItem widgetItem, WidgetItem widgetItem2) {
        int iIndexOf = this.mAppWidgetOrder.indexOf(widgetItem.componentName);
        int iIndexOf2 = this.mAppWidgetOrder.indexOf(widgetItem2.componentName);
        if (iIndexOf2 == -1) {
            iIndexOf2 = Integer.MAX_VALUE;
        }
        return iIndexOf - iIndexOf2;
    }

    public void onClosed(Context context) {
        this.mViewPool.destroyAppWidgetHostViews(context);
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public WidgetsTableItemViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new WidgetsTableItemViewHolder((ViewGroup) this.mLayoutInflater.inflate(R.layout.item_table_widget_cell_2x1, parent, false));
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final WidgetsTableItemViewHolder holder, int pos) {
        super.onBindViewHolder(holder, pos);
        AppWidgetHostView appWidgetHostViewTakeOrCreate = this.mViewPool.takeOrCreate(this.mWidgetsList.get(pos));
        if (holder.liveWidgetContainer != null && holder.liveWidgetContainer.getChildAt(0) != appWidgetHostViewTakeOrCreate) {
            ViewParent parent = appWidgetHostViewTakeOrCreate.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(appWidgetHostViewTakeOrCreate);
            }
            holder.liveWidgetContainer.removeAllViews();
            holder.liveWidgetContainer.addView(appWidgetHostViewTakeOrCreate);
        }
        holder.shakeHolder.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.WidgetsTable2x1Adapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.m46x845d90b4(holder, view);
            }
        });
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfoFromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(holder.shakeHolder.getContext(), appWidgetHostViewTakeOrCreate.getAppWidgetInfo());
        PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(launcherAppWidgetProviderInfoFromProviderInfo);
        appWidgetHostViewTakeOrCreate.setTag(pendingAddWidgetInfo);
        holder.shakeHolder.setTag(pendingAddWidgetInfo);
        boolean z = isDragging(pendingAddWidgetInfo) || checkWidgetExist(pendingAddWidgetInfo);
        MLog.d(TAG, "onBindViewHolder: " + launcherAppWidgetProviderInfoFromProviderInfo + " isExist= " + z);
        setClickEvent(appWidgetHostViewTakeOrCreate, z, holder, pos, false);
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$1$com-android-launcher3-WidgetsTable2x1Adapter, reason: not valid java name */
    /* synthetic */ boolean m46x845d90b4(WidgetsTableItemViewHolder widgetsTableItemViewHolder, View view) {
        return this.mIconLongClickListener.onLongClick(widgetsTableItemViewHolder.widgetCell);
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter
    public void onBindViewHolder(WidgetsTableItemViewHolder holder, int position, List<Object> payloads) {
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, position, payloads);
            return;
        }
        Bundle bundle = (Bundle) payloads.get(0);
        for (String str : bundle.keySet()) {
            str.hashCode();
            if (str.equals(WidgetsTable1x1Adapter.WIDGET_EXIST)) {
                setClickEvent(bundle.getBoolean(str), holder, position, true);
            }
        }
    }

    @Override // com.android.launcher3.widget.WidgetsTable1x1Adapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(WidgetsTableItemViewHolder holder) {
        super.onViewRecycled(holder);
        ViewGroup viewGroup = holder.liveWidgetContainer;
        if (viewGroup == null) {
            return;
        }
        View childAt = viewGroup.getChildAt(0);
        if (childAt instanceof AppWidgetHostView) {
            AppWidgetHostView appWidgetHostView = (AppWidgetHostView) childAt;
            viewGroup.removeView(appWidgetHostView);
            this.mViewPool.recycle(appWidgetHostView);
        }
    }

    private void setClickEvent(boolean isExist, WidgetsTableItemViewHolder holder, int position, boolean animate) {
        if (holder.liveWidgetContainer == null) {
            return;
        }
        View childAt = holder.liveWidgetContainer.getChildAt(0);
        if (childAt instanceof AppWidgetHostView) {
            setClickEvent((AppWidgetHostView) childAt, isExist, holder, position, animate);
        }
    }

    private void setClickEvent(final AppWidgetHostView hostView, boolean isExist, final WidgetsTableItemViewHolder holder, final int position, boolean animate) {
        if (isExist) {
            holder.widgetAddBadge.setVisibility(8);
            holder.widgetCell.setAlpha(0.6f);
            holder.widgetCell.setOnClickListener(null);
        } else {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.launcher3.WidgetsTable2x1Adapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - WidgetsTable2x1Adapter.this.mLastClickTime < 500) {
                        return;
                    }
                    WidgetsTable2x1Adapter.this.mLastClickTime = jElapsedRealtime;
                    ImageView imageView = holder.widgetAddBadge;
                    imageView.setPivotX(imageView.getWidth() * 0.5f);
                    imageView.setPivotY(imageView.getHeight() * 0.5f);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 0.0f).setDuration(100L), ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 0.0f).setDuration(100L));
                    animatorSet.removeAllListeners();
                    animatorSet.addListener(new C00081(imageView));
                    animatorSet.start();
                }

                /* JADX INFO: renamed from: com.android.launcher3.WidgetsTable2x1Adapter$1$1, reason: invalid class name and collision with other inner class name */
                class C00081 extends AnimatorListenerAdapter {
                    final /* synthetic */ View val$targetView;

                    C00081(final View val$targetView) {
                        this.val$targetView = val$targetView;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation, boolean isReverse) {
                        super.onAnimationEnd(animation, isReverse);
                        if (WidgetsTable2x1Adapter.this.mOnItemClickListener != null) {
                            WidgetsTable2x1Adapter.this.mOnItemClickListener.onItemClick(hostView, position);
                        }
                        final View view = this.val$targetView;
                        view.postDelayed(new Runnable() { // from class: com.android.launcher3.WidgetsTable2x1Adapter$1$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                WidgetsTable2x1Adapter.AnonymousClass1.C00081.lambda$onAnimationEnd$0(view);
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
    }

    private static class AppWidgetHostViewPool {
        private final Map<Integer, AppWidgetHostView> mCache;
        private final Context mContext;
        private final Map<ComponentName, AppWidgetHostView> mPool;

        private AppWidgetHostViewPool(Context context) {
            this.mPool = new HashMap();
            this.mCache = new HashMap();
            this.mContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AppWidgetHostView takeOrCreate(WidgetItem item) {
            AppWidgetHostView appWidgetHostViewRemove = this.mPool.remove(item.componentName);
            if (appWidgetHostViewRemove != null) {
                return appWidgetHostViewRemove;
            }
            AppWidgetHostView appWidgetHostViewCreateAppWidgetHostView = createAppWidgetHostView(this.mContext, item);
            if (appWidgetHostViewCreateAppWidgetHostView != null) {
                this.mCache.put(Integer.valueOf(appWidgetHostViewCreateAppWidgetHostView.getAppWidgetId()), appWidgetHostViewCreateAppWidgetHostView);
            }
            return appWidgetHostViewCreateAppWidgetHostView;
        }

        void recycle(AppWidgetHostView view) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            this.mPool.put(view.getAppWidgetInfo().provider, view);
        }

        private AppWidgetHostView createAppWidgetHostView(Context context, WidgetItem widgetItem) {
            LauncherAppWidgetHost appWidgetHost = Launcher.getLauncher(context).getAppWidgetHost();
            int iAllocateAppWidgetId = appWidgetHost.allocateAppWidgetId();
            if (!AppWidgetManager.getInstance(context).bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, widgetItem.componentName)) {
                return null;
            }
            MLog.d(WidgetsTable2x1Adapter.TAG, "createAppWidgetHostViews: " + widgetItem.componentName + " appWidgetId=" + iAllocateAppWidgetId);
            return appWidgetHost.createView(context, iAllocateAppWidgetId, widgetItem.widgetInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroyAppWidgetHostViews(Context context) {
            LauncherAppWidgetHost appWidgetHost = Launcher.getLauncher(context).getAppWidgetHost();
            for (AppWidgetHostView appWidgetHostView : this.mCache.values()) {
                int appWidgetId = appWidgetHostView.getAppWidgetId();
                appWidgetHost.deleteAppWidgetId(appWidgetId);
                MLog.d(WidgetsTable2x1Adapter.TAG, "destroyAppWidgetHostViews: " + appWidgetHostView.getAppWidgetInfo().provider + " appWidgetId=" + appWidgetId);
            }
            this.mPool.clear();
            this.mCache.clear();
        }
    }
}
