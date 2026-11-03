package com.android.launcher3.views.dragableviews;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.R;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.views.OptionsPopupView;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ItemTouchListener extends ItemTouchHelper.Callback {
    private static final String TAG = "ItemTouchListener";
    private int mCurrentScrollX;
    private Paint mPaint;

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getBoundingBoxMargin() {
        return 1440;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int direction) {
    }

    public ItemTouchListener(Context context) {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(context.getColor(R.color.bg_workspace_bubbletext_outline));
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(10.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return makeMovementFlags(15, 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int actionState) {
        super.onSelectedChanged(viewHolder, actionState);
        MLog.i(TAG, "onSelectedChanged: " + actionState + " " + viewHolder);
        if (actionState != 2 || viewHolder == null) {
            return;
        }
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "onWorkspaceItemLongClick");
        final Launcher launcher = Launcher.getLauncher(viewHolder.itemView.getContext());
        if (ItemLongClickListener.canStartDrag(launcher)) {
            if (launcher.isInState(LauncherState.NORMAL) || launcher.isInState(LauncherState.OVERVIEW) || launcher.isInState(LauncherState.WIDGET_SPRING_LOADED)) {
                launcher.setWaitingForResult(null);
                if (viewHolder instanceof DraggableRecyclerView.BaseViewHolder) {
                    ((DraggableRecyclerView.BaseViewHolder) viewHolder).enterDragState();
                }
                viewHolder.itemView.postDelayed(new Runnable() { // from class: com.android.launcher3.views.dragableviews.ItemTouchListener$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        OptionsPopupView.openWidgets(launcher);
                    }
                }, 100L);
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        MLog.d(TAG, "clearView: " + viewHolder);
        if (viewHolder instanceof DraggableRecyclerView.BaseViewHolder) {
            ((DraggableRecyclerView.BaseViewHolder) viewHolder).exitDragState();
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
        MLog.i(TAG, "onMove viewHolder " + viewHolder + " target " + target);
        if (recyclerView.getAdapter() instanceof ItemMoveListener) {
            ((ItemMoveListener) recyclerView.getAdapter()).onItemMove(viewHolder.getBindingAdapterPosition(), target.getBindingAdapterPosition());
        }
        if (!(recyclerView instanceof DraggableRecyclerView)) {
            return true;
        }
        ((DraggableRecyclerView) recyclerView).updateDataBaseAfterSwitch();
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas c, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float x, float y, int actionState, boolean isCurrentlyActive) {
        super.onChildDraw(c, recyclerView, viewHolder, x, y, actionState, isCurrentlyActive);
        if (isCurrentlyActive) {
            c.drawRoundRect(viewHolder.itemView.getLeft() + 24, viewHolder.itemView.getTop() + 41, viewHolder.itemView.getRight() - 24, viewHolder.itemView.getBottom() - 41, 32.0f, 32.0f, this.mPaint);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
        int iInterpolateOutOfBoundsScroll = super.interpolateOutOfBoundsScroll(recyclerView, viewSize, viewSizeOutOfBounds, totalSize, msSinceStartScroll);
        if (totalSize == 2560) {
            this.mCurrentScrollX = viewSizeOutOfBounds;
        }
        return iInterpolateOutOfBoundsScroll;
    }
}
