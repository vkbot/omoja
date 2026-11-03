package com.android.launcher3.dragndrop;

import android.content.ClipDescription;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.R;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.widget.PendingItemDragHelper;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseItemDragListener implements View.OnDragListener, DragSource, DragOptions.PreDragCondition, ActivityTracker.SchedulerCallback<Launcher> {
    public static final String EXTRA_PIN_ITEM_DRAG_LISTENER = "pin_item_drag_listener";
    private static final String MIME_TYPE_PREFIX = "com.android.launcher3.drag_and_drop/";
    private static final String TAG = "BaseItemDragListener";
    private DragController mDragController;
    private final String mId = UUID.randomUUID().toString();
    protected Launcher mLauncher;
    private final int mPreviewBitmapWidth;
    private final Rect mPreviewRect;
    private final int mPreviewViewWidth;

    protected abstract PendingItemDragHelper createDragHelper();

    public BaseItemDragListener(Rect previewRect, int previewBitmapWidth, int previewViewWidth) {
        this.mPreviewRect = previewRect;
        this.mPreviewBitmapWidth = previewBitmapWidth;
        this.mPreviewViewWidth = previewViewWidth;
    }

    public String getMimeType() {
        return MIME_TYPE_PREFIX + this.mId;
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public boolean init(Launcher launcher, boolean alreadyOnHome) {
        AbstractFloatingView.closeAllOpenViews(launcher, alreadyOnHome);
        launcher.getStateManager().goToState(LauncherState.NORMAL, alreadyOnHome);
        launcher.getDragLayer().setOnDragListener(this);
        this.mLauncher = launcher;
        this.mDragController = launcher.getDragController();
        return false;
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent event) {
        if (this.mLauncher == null || this.mDragController == null) {
            postCleanup();
            return false;
        }
        if (event.getAction() == 1 || !this.mDragController.isDragging()) {
            if (onDragStart(event)) {
                return true;
            }
            postCleanup();
            return false;
        }
        return this.mDragController.onDragEvent(event);
    }

    protected boolean onDragStart(DragEvent event) {
        return onDragStart(event, this);
    }

    protected boolean onDragStart(DragEvent event, DragOptions.PreDragCondition preDragCondition) {
        ClipDescription clipDescription = event.getClipDescription();
        if (clipDescription == null || !clipDescription.hasMimeType(getMimeType())) {
            Log.e(TAG, "Someone started a dragAndDrop before us.");
            return false;
        }
        Point point = new Point((int) event.getX(), (int) event.getY());
        DragOptions dragOptions = new DragOptions();
        dragOptions.simulatedDndStartPoint = point;
        dragOptions.preDragCondition = preDragCondition;
        createDragHelper().startDrag(new Rect(this.mPreviewRect), this.mPreviewBitmapWidth, this.mPreviewViewWidth, point, this, dragOptions);
        return true;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public boolean shouldStartDrag(double distanceDragged) {
        return !this.mLauncher.isWorkspaceLocked();
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragStart(DropTarget.DragObject dragObject) {
        this.mLauncher.getDragLayer().setAlpha(1.0f);
        dragObject.dragView.setColor(this.mLauncher.getResources().getColor(R.color.delete_target_hover_tint));
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragEnd(DropTarget.DragObject dragObject, boolean dragStarted) {
        if (dragStarted) {
            dragObject.dragView.setColor(0);
        }
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success) {
        postCleanup();
    }

    protected void postCleanup() {
        if (this.mLauncher != null) {
            Intent intent = new Intent(this.mLauncher.getIntent());
            intent.removeExtra(EXTRA_PIN_ITEM_DRAG_LISTENER);
            this.mLauncher.setIntent(intent);
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.launcher3.dragndrop.BaseItemDragListener$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.removeListener();
            }
        });
    }

    public void removeListener() {
        Launcher launcher = this.mLauncher;
        if (launcher != null) {
            launcher.getDragLayer().setOnDragListener(null);
        }
    }
}
