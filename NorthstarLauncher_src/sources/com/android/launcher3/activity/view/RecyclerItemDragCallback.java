package com.android.launcher3.activity.view;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;
import com.android.launcher3.activity.AppListRecyclerView;
import com.android.launcher3.activity.model.AppListItemMoveListener;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerItemDragCallback extends ItemTouchHelper.Callback {
    private static final String TAG = "RecyclerItemDragCallback";
    private final AppListRecyclerView mAppListRecyclerView;
    private boolean mIsDragging;
    private AppListItemMoveListener mListener;

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
        return 0;
    }

    public RecyclerItemDragCallback(AppListRecyclerView appRecyclerView, AppListItemMoveListener listener) {
        this.mAppListRecyclerView = appRecyclerView;
        this.mListener = listener;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return makeMovementFlags(15, 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
        MLog.d(TAG, "onMove: recyclerView=" + recyclerView + " viewHolder=" + viewHolder + " target=" + target);
        if (!(recyclerView.getAdapter() instanceof AppListItemMoveListener) || this.mListener == null) {
            return true;
        }
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        int bindingAdapterPosition2 = target.getBindingAdapterPosition();
        this.mListener.onItemMove(bindingAdapterPosition, bindingAdapterPosition2);
        MLog.d(TAG, "onMove: bindingAdapterPosition = " + bindingAdapterPosition + ", targetBindingAdapterPosition = " + bindingAdapterPosition2);
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int actionState) {
        super.onSelectedChanged(viewHolder, actionState);
        MLog.d(TAG, "onSelectedChanged: " + actionState);
        if (actionState == 2) {
            if (viewHolder.itemView != null) {
                viewHolder.itemView.setScaleX(1.1f);
                viewHolder.itemView.setScaleY(1.1f);
                viewHolder.itemView.setClickable(false);
                AppListItemMoveListener appListItemMoveListener = this.mListener;
                if (appListItemMoveListener != null) {
                    appListItemMoveListener.onSelectedChanged(true);
                }
            }
            setAppNameVisibility(viewHolder, actionState == 2 ? 4 : 0);
            setDraggingState(true, viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        MLog.d(TAG, "clearView ");
        if (this.mIsDragging) {
            if (viewHolder.itemView != null) {
                viewHolder.itemView.setScaleX(1.0f);
                viewHolder.itemView.setScaleY(1.0f);
                viewHolder.itemView.setClickable(true);
                AppListItemMoveListener appListItemMoveListener = this.mListener;
                if (appListItemMoveListener != null) {
                    appListItemMoveListener.onSelectedChanged(false);
                }
            }
            setAppNameVisibility(viewHolder, 0);
            setDraggingState(false, viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas c, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float dx, float dy, int actionState, boolean isCurrentlyActive) {
        super.onChildDraw(c, recyclerView, viewHolder, dx, dy, actionState, isCurrentlyActive);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int direction) {
        MLog.d(TAG, "onSwiped() called with: viewHolder = [" + viewHolder + "], direction = [" + direction + "]");
    }

    private void setAppNameVisibility(RecyclerView.ViewHolder viewHolder, final int visibility) {
        Optional.ofNullable(viewHolder).map(new Function() { // from class: com.android.launcher3.activity.view.RecyclerItemDragCallback$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((RecyclerView.ViewHolder) obj).itemView;
            }
        }).map(new Function() { // from class: com.android.launcher3.activity.view.RecyclerItemDragCallback$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((View) obj).findViewById(R.id.list_text);
            }
        }).ifPresent(new Consumer() { // from class: com.android.launcher3.activity.view.RecyclerItemDragCallback$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((View) obj).setVisibility(visibility);
            }
        });
    }

    private void setDraggingState(boolean dragging, RecyclerView.ViewHolder viewHolder) {
        if (dragging != this.mIsDragging) {
            this.mIsDragging = dragging;
            AppListRecyclerView appListRecyclerView = this.mAppListRecyclerView;
            if (appListRecyclerView != null) {
                if (!dragging) {
                    viewHolder = null;
                }
                appListRecyclerView.setDragging(dragging, viewHolder);
            }
        }
    }
}
