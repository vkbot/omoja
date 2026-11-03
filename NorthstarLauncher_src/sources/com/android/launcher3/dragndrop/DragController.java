package com.android.launcher3.dragndrop;

import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.TouchController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DragController implements DragDriver.EventListener, TouchController {
    private static final int DEEP_PRESS_DISTANCE_FACTOR = 3;
    private static final boolean PROFILE_DRAWING_DURING_DRAG = false;
    private static final String TAG = "DragController";
    private DropTarget.DragObject mDragObject;
    private final FlingToDeleteHelper mFlingToDeleteHelper;
    private boolean mIsInPreDrag;
    private DropTarget mLastDropTarget;
    private int mLastTouchClassification;
    private final Launcher mLauncher;
    private DragOptions mOptions;
    private final Rect mRectTemp = new Rect();
    private final int[] mCoordinatesTemp = new int[2];
    private DragDriver mDragDriver = null;
    private final Point mMotionDown = new Point();
    private final Point mLastTouch = new Point();
    private final Point mTmpPoint = new Point();
    private final ArrayList<DropTarget> mDropTargets = new ArrayList<>();
    private final ArrayList<DragListener> mListeners = new ArrayList<>();
    private int mDistanceSinceScroll = 0;

    public interface DragListener {
        void onDragEnd();

        void onDragStart(DropTarget.DragObject dragObject, DragOptions options);
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.mDragDriver != null;
    }

    public float getDistanceDragged() {
        return this.mDistanceSinceScroll;
    }

    public DragController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mFlingToDeleteHelper = new FlingToDeleteHelper(launcher);
    }

    public DragView startDrag(Bitmap b, DraggableView originalView, int dragLayerX, int dragLayerY, DragSource source, ItemInfo dragInfo, Point dragOffset, Rect dragRegion, float initialDragViewScale, float dragViewScaleOnDrop, DragOptions options) {
        MLog.e(TAG, "startDrag() called with: b = [" + b + "], originalView = [" + originalView + "], dragLayerX = [" + dragLayerX + "], dragLayerY = [" + dragLayerY + "], source = [" + source + "], dragInfo = [" + dragInfo + "], dragOffset = [" + dragOffset + "], dragRegion = [" + dragRegion + "], initialDragViewScale = [" + initialDragViewScale + "], dragViewScaleOnDrop = [" + dragViewScaleOnDrop + "], options = [" + options + "]");
        this.mLauncher.hideKeyboard();
        AbstractFloatingView.closeOpenViews(this.mLauncher, false, 64);
        this.mOptions = options;
        if (options.simulatedDndStartPoint != null) {
            Point point = this.mLastTouch;
            Point point2 = this.mMotionDown;
            int i = this.mOptions.simulatedDndStartPoint.x;
            point2.x = i;
            point.x = i;
            Point point3 = this.mLastTouch;
            Point point4 = this.mMotionDown;
            int i2 = this.mOptions.simulatedDndStartPoint.y;
            point4.y = i2;
            point3.y = i2;
        }
        int i3 = this.mMotionDown.x - dragLayerX;
        int i4 = this.mMotionDown.y - dragLayerY;
        int i5 = dragRegion == null ? 0 : dragRegion.left;
        int i6 = dragRegion == null ? 0 : dragRegion.top;
        this.mLastDropTarget = null;
        DropTarget.DragObject dragObject = new DropTarget.DragObject(this.mLauncher.getApplicationContext());
        this.mDragObject = dragObject;
        dragObject.originalView = originalView;
        this.mIsInPreDrag = (this.mOptions.preDragCondition == null || this.mOptions.preDragCondition.shouldStartDrag(0.0d)) ? false : true;
        float dimensionPixelSize = this.mIsInPreDrag ? this.mLauncher.getResources().getDimensionPixelSize(R.dimen.pre_drag_view_scale) : 0.0f;
        DropTarget.DragObject dragObject2 = this.mDragObject;
        DragView dragView = new DragView(this.mLauncher, b, i3, i4, initialDragViewScale, dragViewScaleOnDrop, dimensionPixelSize);
        dragObject2.dragView = dragView;
        this.mDragObject.dragComplete = false;
        this.mDragObject.xOffset = this.mMotionDown.x - (dragLayerX + i5);
        this.mDragObject.yOffset = this.mMotionDown.y - (dragLayerY + i6);
        DragOptions dragOptions = this.mOptions;
        final FlingToDeleteHelper flingToDeleteHelper = this.mFlingToDeleteHelper;
        Objects.requireNonNull(flingToDeleteHelper);
        this.mDragDriver = DragDriver.create(this, dragOptions, new Consumer() { // from class: com.android.launcher3.dragndrop.DragController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                flingToDeleteHelper.recordMotionEvent((MotionEvent) obj);
            }
        });
        if (!this.mOptions.isAccessibleDrag) {
            this.mDragObject.stateAnnouncer = DragViewStateAnnouncer.createFor(dragView);
        }
        this.mDragObject.dragSource = source;
        this.mDragObject.dragInfo = dragInfo;
        DropTarget.DragObject dragObject3 = this.mDragObject;
        dragObject3.originalDragInfo = dragObject3.dragInfo.makeShallowCopy();
        if (dragOffset != null) {
            dragView.setDragVisualizeOffset(new Point(dragOffset));
        }
        if (dragRegion != null) {
            dragView.setDragRegion(new Rect(dragRegion));
        }
        this.mLauncher.getDragLayer().performHapticFeedback(0);
        dragView.show(this.mLastTouch.x, this.mLastTouch.y);
        this.mDistanceSinceScroll = 0;
        if (!this.mIsInPreDrag) {
            callOnDragStart();
        } else if (this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragStart(this.mDragObject);
        }
        handleMoveEvent(this.mLastTouch.x, this.mLastTouch.y);
        this.mLauncher.getUserEventDispatcher().resetActionDurationMillis();
        if (!this.mLauncher.isTouchInProgress() && options.simulatedDndStartPoint == null) {
            Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: com.android.launcher3.dragndrop.DragController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.cancelDrag();
                }
            });
        }
        return dragView;
    }

    private void callOnDragStart() {
        if (this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragEnd(this.mDragObject, true);
        }
        this.mIsInPreDrag = false;
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragStart(this.mDragObject, this.mOptions);
        }
    }

    public void addFirstFrameAnimationHelper(ValueAnimator anim) {
        DropTarget.DragObject dragObject = this.mDragObject;
        if (dragObject == null || dragObject.dragView == null) {
            return;
        }
        this.mDragObject.dragView.mFirstFrameAnimatorHelper.addTo(anim);
    }

    public boolean isDragging() {
        DragOptions dragOptions;
        return this.mDragDriver != null || ((dragOptions = this.mOptions) != null && dragOptions.isAccessibleDrag);
    }

    public void cancelDrag() {
        MLog.d(TAG, "cancelDrag() called");
        if (isDragging()) {
            DropTarget dropTarget = this.mLastDropTarget;
            if (dropTarget != null) {
                dropTarget.onDragExit(this.mDragObject);
            }
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
            this.mDragObject.cancelled = true;
            this.mDragObject.dragComplete = true;
            if (!this.mIsInPreDrag) {
                dispatchDropComplete(null, false);
            }
        }
        endDrag();
    }

    private void dispatchDropComplete(View dropTarget, boolean accepted) {
        if (!accepted) {
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
        }
        this.mDragObject.dragSource.onDropCompleted(dropTarget, this.mDragObject, accepted);
    }

    public void onAppsRemoved(ItemInfoMatcher matcher) {
        ComponentName targetComponent;
        MLog.d(TAG, "onAppsRemoved: matcher = " + matcher);
        DropTarget.DragObject dragObject = this.mDragObject;
        if (dragObject != null) {
            ItemInfo itemInfo = dragObject.dragInfo;
            if ((itemInfo instanceof WorkspaceItemInfo) && (targetComponent = itemInfo.getTargetComponent()) != null && matcher.matches(itemInfo, targetComponent)) {
                cancelDrag();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    private void endDrag() {
        if (isDragging()) {
            this.mDragDriver = null;
            if (this.mDragObject.dragView != null) {
                boolean z = this.mDragObject.deferDragViewCleanupPostAnimation;
                if (!z) {
                    this.mDragObject.dragView.remove();
                } else if (this.mIsInPreDrag) {
                    animateDragViewToOriginalPosition(null, null, -1);
                }
                this.mDragObject.dragView = null;
                if (!z) {
                    callOnDragEnd();
                }
            } else {
                callOnDragEnd();
            }
        }
        this.mFlingToDeleteHelper.releaseVelocityTracker();
    }

    public void animateDragViewToOriginalPosition(final Runnable onComplete, final View originalIcon, int duration) {
        MLog.d(TAG, "animateDragViewToOriginalPosition() called with: onComplete = [" + onComplete + "], originalIcon = [" + originalIcon + "], duration = [" + duration + "]");
        this.mDragObject.dragView.animateTo(this.mMotionDown.x, this.mMotionDown.y, new Runnable() { // from class: com.android.launcher3.dragndrop.DragController.1
            @Override // java.lang.Runnable
            public void run() {
                View view = originalIcon;
                if (view != null) {
                    view.setVisibility(0);
                }
                Runnable runnable = onComplete;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }, duration);
    }

    private void callOnDragEnd() {
        if (this.mIsInPreDrag && this.mOptions.preDragCondition != null) {
            this.mOptions.preDragCondition.onPreDragEnd(this.mDragObject, false);
        }
        this.mIsInPreDrag = false;
        this.mOptions = null;
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragEnd();
        }
    }

    void onDeferredEndDrag(DragView dragView) {
        dragView.remove();
        if (this.mDragObject.deferDragViewCleanupPostAnimation) {
            callOnDragEnd();
        }
    }

    private Point getClampedDragLayerPos(float x, float y) {
        this.mLauncher.getDragLayer().getLocalVisibleRect(this.mRectTemp);
        this.mTmpPoint.x = (int) Math.max(this.mRectTemp.left, Math.min(x, this.mRectTemp.right - 1));
        this.mTmpPoint.y = (int) Math.max(this.mRectTemp.top, Math.min(y, this.mRectTemp.bottom - 1));
        return this.mTmpPoint;
    }

    @Override // com.android.launcher3.dragndrop.DragDriver.EventListener
    public void onDriverDragMove(float x, float y) {
        MLog.d(TAG, "onDriverDragMove() called with: x = [" + x + "], y = [" + y + "]");
        Point clampedDragLayerPos = getClampedDragLayerPos(x, y);
        handleMoveEvent(clampedDragLayerPos.x, clampedDragLayerPos.y);
    }

    @Override // com.android.launcher3.dragndrop.DragDriver.EventListener
    public void onDriverDragExitWindow() {
        MLog.d(TAG, "onDriverDragExitWindow() called");
        DropTarget dropTarget = this.mLastDropTarget;
        if (dropTarget != null) {
            dropTarget.onDragExit(this.mDragObject);
            this.mLastDropTarget = null;
        }
    }

    @Override // com.android.launcher3.dragndrop.DragDriver.EventListener
    public void onDriverDragEnd(float x, float y) {
        DropTarget dropTargetFindDropTarget;
        MLog.d(TAG, "onDriverDragEnd() called with: x = [" + x + "], y = [" + y + "]");
        Runnable flingAnimation = this.mFlingToDeleteHelper.getFlingAnimation(this.mDragObject, this.mOptions);
        if (flingAnimation != null) {
            dropTargetFindDropTarget = this.mFlingToDeleteHelper.getDropTarget();
        } else {
            dropTargetFindDropTarget = findDropTarget((int) x, (int) y, this.mCoordinatesTemp);
        }
        this.mDragObject.dropTarget = dropTargetFindDropTarget;
        drop(dropTargetFindDropTarget, flingAnimation);
        endDrag();
    }

    @Override // com.android.launcher3.dragndrop.DragDriver.EventListener
    public void onDriverDragCancel() {
        MLog.d(TAG, "onDriverDragCancel() called");
        cancelDrag();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        DragOptions dragOptions = this.mOptions;
        if (dragOptions != null && dragOptions.isAccessibleDrag) {
            return false;
        }
        Point clampedDragLayerPos = getClampedDragLayerPos(ev.getX(), ev.getY());
        this.mLastTouch.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
        if (ev.getAction() == 0) {
            this.mMotionDown.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
        }
        if (Utilities.ATLEAST_Q) {
            this.mLastTouchClassification = ev.getClassification();
        }
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onInterceptTouchEvent(ev);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent ev) {
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onTouchEvent(ev);
    }

    public boolean onDragEvent(DragEvent event) {
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onDragEvent(event);
    }

    private void handleMoveEvent(int x, int y) {
        this.mDragObject.dragView.move(x, y);
        int[] iArr = this.mCoordinatesTemp;
        DropTarget dropTargetFindDropTarget = findDropTarget(x, y, iArr);
        this.mDragObject.dropTarget = dropTargetFindDropTarget;
        MLog.d(TAG, "handleMoveEvent() called with: x = [" + x + "], y = [" + y + "], dropTarget = [" + dropTargetFindDropTarget + "]");
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        checkTouchMove(dropTargetFindDropTarget);
        this.mDistanceSinceScroll = (int) (((double) this.mDistanceSinceScroll) + Math.hypot(this.mLastTouch.x - x, this.mLastTouch.y - y));
        this.mLastTouch.set(x, y);
        int i = this.mDistanceSinceScroll;
        if (Utilities.ATLEAST_Q && this.mLastTouchClassification == 2) {
            i /= 3;
        }
        if (this.mIsInPreDrag && this.mOptions.preDragCondition != null && this.mOptions.preDragCondition.shouldStartDrag(i)) {
            callOnDragStart();
        }
    }

    public void forceTouchMove() {
        int[] iArr = this.mCoordinatesTemp;
        DropTarget dropTargetFindDropTarget = findDropTarget(this.mLastTouch.x, this.mLastTouch.y, iArr);
        this.mDragObject.dropTarget = dropTargetFindDropTarget;
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        checkTouchMove(dropTargetFindDropTarget);
    }

    private void checkTouchMove(DropTarget dropTarget) {
        if (dropTarget != null) {
            DropTarget dropTarget2 = this.mLastDropTarget;
            if (dropTarget2 != dropTarget) {
                if (dropTarget2 != null) {
                    dropTarget2.onDragExit(this.mDragObject);
                }
                dropTarget.onDragEnter(this.mDragObject);
            }
            dropTarget.onDragOver(this.mDragObject);
        } else {
            DropTarget dropTarget3 = this.mLastDropTarget;
            if (dropTarget3 != null) {
                dropTarget3.onDragExit(this.mDragObject);
            }
        }
        this.mLastDropTarget = dropTarget;
    }

    public void completeAccessibleDrag(int[] location) {
        int[] iArr = this.mCoordinatesTemp;
        DropTarget dropTargetFindDropTarget = findDropTarget(location[0], location[1], iArr);
        this.mDragObject.dropTarget = dropTargetFindDropTarget;
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        checkTouchMove(dropTargetFindDropTarget);
        if (dropTargetFindDropTarget != null) {
            dropTargetFindDropTarget.prepareAccessibilityDrop();
        }
        drop(dropTargetFindDropTarget, null);
        endDrag();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void drop(DropTarget dropTarget, Runnable flingAnimation) {
        int[] iArr = this.mCoordinatesTemp;
        boolean z = false;
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        DropTarget dropTarget2 = this.mLastDropTarget;
        if (dropTarget != dropTarget2) {
            if (dropTarget2 != null) {
                dropTarget2.onDragExit(this.mDragObject);
            }
            this.mLastDropTarget = dropTarget;
            if (dropTarget != 0) {
                dropTarget.onDragEnter(this.mDragObject);
            }
        }
        this.mDragObject.dragComplete = true;
        if (this.mIsInPreDrag) {
            if (dropTarget != 0) {
                dropTarget.onDragExit(this.mDragObject);
                return;
            }
            return;
        }
        if (dropTarget != 0) {
            this.mDragObject.deferRemoveShadowView = true;
            dropTarget.onDragExit(this.mDragObject);
            if (dropTarget.acceptDrop(this.mDragObject)) {
                if (flingAnimation != null) {
                    flingAnimation.run();
                } else {
                    dropTarget.onDrop(this.mDragObject, this.mOptions);
                }
                z = true;
            }
        }
        View view = dropTarget instanceof View ? (View) dropTarget : null;
        this.mLauncher.getUserEventDispatcher().logDragNDrop(this.mDragObject, view);
        dispatchDropComplete(view, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DropTarget findDropTarget(int x, int y, int[] dropCoordinates) {
        this.mDragObject.x = x;
        this.mDragObject.y = y;
        Rect rect = this.mRectTemp;
        ArrayList<DropTarget> arrayList = this.mDropTargets;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DropTarget dropTarget = arrayList.get(size);
            if (dropTarget.isDropEnabled()) {
                dropTarget.getHitRectRelativeToDragLayer(rect);
                if (rect.contains(x, y)) {
                    dropCoordinates[0] = x;
                    dropCoordinates[1] = y;
                    this.mLauncher.getDragLayer().mapCoordInSelfToDescendant((View) dropTarget, dropCoordinates);
                    return dropTarget;
                }
            }
        }
        this.mLauncher.getWorkspace().getHitRectRelativeToDragLayer(rect);
        if (!rect.contains(x, y)) {
            return null;
        }
        dropCoordinates[0] = x;
        dropCoordinates[1] = y;
        this.mLauncher.getDragLayer().mapCoordInSelfToDescendant((View) this.mLauncher.getWorkspace(), dropCoordinates);
        return this.mLauncher.getWorkspace();
    }

    public void addDragListener(DragListener l) {
        this.mListeners.add(l);
    }

    public void removeDragListener(DragListener l) {
        this.mListeners.remove(l);
    }

    public void addDropTarget(DropTarget target) {
        MLog.d(TAG, "addDropTarget: " + target);
        this.mDropTargets.add(target);
    }

    public void removeDropTarget(DropTarget target) {
        MLog.d(TAG, "removeDropTarget: " + target);
        this.mDropTargets.remove(target);
    }
}
