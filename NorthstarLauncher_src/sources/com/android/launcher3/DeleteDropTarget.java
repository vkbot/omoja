package com.android.launcher3;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DeleteDropTarget extends ButtonDropTarget {
    private static final String TAG = "DeleteDropTarget";
    private int mControlType;
    private final StatsLogManager mStatsLogManager;

    @Override // com.android.launcher3.ButtonDropTarget
    public int getAccessibilityAction() {
        return R.id.action_remove;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    protected boolean supportsDrop(ItemInfo info) {
        return true;
    }

    public DeleteDropTarget(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mControlType = 0;
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.delete_target_hover_tint);
        setDrawable(R.mipmap.ic_drop_target_remove);
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
        MLog.d(TAG, "onDragStart() called with: dragObject = [" + dragObject + "], options = [" + options + "]");
        super.onDragStart(dragObject, options);
        setTextBasedOnDragSource(dragObject.dragInfo);
        setControlTypeBasedOnDragSource(dragObject.dragInfo);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public boolean supportsAccessibilityDrop(ItemInfo info, View view) {
        if (info instanceof WorkspaceItemInfo) {
            return canRemove(info);
        }
        return (info instanceof LauncherAppWidgetInfo) || (info instanceof FolderInfo);
    }

    private void setTextBasedOnDragSource(ItemInfo item) {
        if (TextUtils.isEmpty(this.mText)) {
            return;
        }
        this.mText = getResources().getString(canRemove(item) ? R.string.remove_drop_target_label : android.R.string.cancel);
        setContentDescription(this.mText);
        requestLayout();
    }

    private boolean canRemove(ItemInfo item) {
        return item.id != -1;
    }

    private void setControlTypeBasedOnDragSource(ItemInfo item) {
        this.mControlType = item.id != -1 ? 5 : 14;
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public void onDrop(DropTarget.DragObject d, DragOptions options) {
        StatsLogManager.LauncherEvent launcherEvent;
        MLog.d(TAG, "onDrop() called with: d = [" + d + "], options = [" + options + "]");
        if (canRemove(d.dragInfo)) {
            this.mLauncher.getModelWriter().prepareToUndoDelete();
            d.dragInfo.container = -1;
        }
        super.onDrop(d, options);
        StatsLogManager.StatsLogger statsLoggerWithInstanceId = this.mStatsLogManager.logger().withInstanceId(d.logInstanceId);
        if (this.mControlType == 5) {
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_REMOVE;
        } else {
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_CANCEL;
        }
        statsLoggerWithInstanceId.log(launcherEvent);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject d) {
        ItemInfo itemInfo = d.dragInfo;
        if (canRemove(itemInfo)) {
            final int currentPage = this.mLauncher.getWorkspace().getCurrentPage();
            onAccessibilityDrop(null, itemInfo);
            final ModelWriter modelWriter = this.mLauncher.getModelWriter();
            new Runnable() { // from class: com.android.launcher3.DeleteDropTarget$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m18lambda$completeDrop$0$comandroidlauncher3DeleteDropTarget(currentPage, modelWriter);
                }
            };
            modelWriter.commitDelete();
        }
    }

    /* JADX INFO: renamed from: lambda$completeDrop$0$com-android-launcher3-DeleteDropTarget, reason: not valid java name */
    /* synthetic */ void m18lambda$completeDrop$0$comandroidlauncher3DeleteDropTarget(int i, ModelWriter modelWriter) {
        this.mLauncher.setPageToBindSynchronously(i);
        modelWriter.abortDelete();
        this.mLauncher.getUserEventDispatcher().logActionOnControl(0, 20);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void onAccessibilityDrop(View view, ItemInfo item) {
        this.mLauncher.removeItem(view, item, true);
        this.mLauncher.getWorkspace().stripEmptyScreens();
        this.mLauncher.getDragLayer().announceForAccessibility(getContext().getString(R.string.item_removed));
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public LauncherLogProto.Target getDropTargetForLogging() {
        LauncherLogProto.Target targetNewTarget = LoggerUtils.newTarget(2);
        targetNewTarget.controlType = this.mControlType;
        return targetNewTarget;
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    public String toString() {
        return "DeleteDropTarget{mStatsLogManager=" + this.mStatsLogManager + ", mControlType=" + this.mControlType + ", mDropTargetBar=" + this.mDropTargetBar + ", mActive=" + this.mActive + ", mText=" + ((Object) this.mText) + '}';
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public boolean isDropEnabled() {
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState()) {
            return false;
        }
        return super.isDropEnabled();
    }
}
