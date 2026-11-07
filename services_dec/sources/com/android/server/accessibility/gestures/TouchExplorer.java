package com.android.server.accessibility.gestures;

import android.accessibilityservice.AccessibilityGestureEvent;
import android.content.Context;
import android.graphics.Region;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Slog;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.server.accessibility.AccessibilityManagerService;
import com.android.server.accessibility.BaseEventStreamTransformation;
import com.android.server.accessibility.EventStreamTransformation;
import com.android.server.usb.descriptors.UsbACInterface;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TouchExplorer extends BaseEventStreamTransformation implements GestureManifold.Listener {
    static final boolean DEBUG = false;
    private static final float EDGE_SWIPE_HEIGHT_CM = 0.25f;
    private static final int EXIT_GESTURE_DETECTION_TIMEOUT = 2000;
    private static final String LOG_TAG = "TouchExplorer";
    private static final float MAX_DRAGGING_ANGLE_COS = 0.52532196f;
    private final AccessibilityManagerService mAms;
    private final Context mContext;
    private final int mDetermineUserIntentTimeout;
    private final EventDispatcher mDispatcher;
    private final int mDoubleTapSlop;
    private int mDraggingPointerId;
    private final float mEdgeSwipeHeightPixels;
    private final ExitGestureDetectionModeDelayed mExitGestureDetectionModeDelayed;
    private Region mGestureDetectionPassthroughRegion;
    private final GestureManifold mGestureDetector;
    private final Handler mHandler;
    private final TouchState.ReceivedPointerTracker mReceivedPointerTracker;
    private final SendHoverEnterAndMoveDelayed mSendHoverEnterAndMoveDelayed;
    private final SendHoverExitDelayed mSendHoverExitDelayed;
    private final SendAccessibilityEventDelayed mSendTouchExplorationEndDelayed;
    private final SendAccessibilityEventDelayed mSendTouchInteractionEndDelayed;
    private TouchState mState;
    private Region mTouchExplorationPassthroughRegion;
    private final int mTouchSlop;

    public TouchExplorer(Context context, AccessibilityManagerService service) {
        this(context, service, null);
    }

    public TouchExplorer(Context context, AccessibilityManagerService service, GestureManifold detector) {
        this.mContext = context;
        this.mAms = service;
        TouchState touchState = new TouchState();
        this.mState = touchState;
        this.mReceivedPointerTracker = touchState.getReceivedPointerTracker();
        this.mDispatcher = new EventDispatcher(context, this.mAms, super.getNext(), this.mState);
        this.mDetermineUserIntentTimeout = ViewConfiguration.getDoubleTapTimeout();
        this.mDoubleTapSlop = ViewConfiguration.get(context).getScaledDoubleTapSlop();
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        DisplayMetrics metrics = this.mContext.getResources().getDisplayMetrics();
        this.mEdgeSwipeHeightPixels = (metrics.ydpi / GestureUtils.CM_PER_INCH) * EDGE_SWIPE_HEIGHT_CM;
        this.mHandler = new Handler(context.getMainLooper());
        this.mExitGestureDetectionModeDelayed = new ExitGestureDetectionModeDelayed();
        this.mSendHoverEnterAndMoveDelayed = new SendHoverEnterAndMoveDelayed();
        this.mSendHoverExitDelayed = new SendHoverExitDelayed();
        this.mSendTouchExplorationEndDelayed = new SendAccessibilityEventDelayed(1024, this.mDetermineUserIntentTimeout);
        this.mSendTouchInteractionEndDelayed = new SendAccessibilityEventDelayed(2097152, this.mDetermineUserIntentTimeout);
        if (detector == null) {
            this.mGestureDetector = new GestureManifold(context, this, this.mState, this.mHandler);
        } else {
            this.mGestureDetector = detector;
        }
        this.mGestureDetectionPassthroughRegion = new Region();
        this.mTouchExplorationPassthroughRegion = new Region();
    }

    @Override // com.android.server.accessibility.EventStreamTransformation
    public void clearEvents(int inputSource) {
        if (inputSource == 4098) {
            clear();
        }
        super.clearEvents(inputSource);
    }

    @Override // com.android.server.accessibility.EventStreamTransformation
    public void onDestroy() {
        clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clear() {
        MotionEvent event = this.mState.getLastReceivedEvent();
        if (event != null) {
            clear(event, 33554432);
        }
    }

    private void clear(MotionEvent event, int policyFlags) {
        if (this.mState.isTouchExploring()) {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
        }
        this.mDraggingPointerId = -1;
        this.mDispatcher.sendUpForInjectedDownPointers(event, policyFlags);
        this.mSendHoverEnterAndMoveDelayed.cancel();
        this.mSendHoverExitDelayed.cancel();
        this.mExitGestureDetectionModeDelayed.cancel();
        this.mSendTouchExplorationEndDelayed.cancel();
        this.mSendTouchInteractionEndDelayed.cancel();
        this.mGestureDetector.clear();
        this.mDispatcher.clear();
        this.mState.clear();
        this.mAms.onTouchInteractionEnd();
    }

    @Override // com.android.server.accessibility.EventStreamTransformation
    public void onMotionEvent(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (!event.isFromSource(UsbACInterface.FORMAT_II_AC3)) {
            super.onMotionEvent(event, rawEvent, policyFlags);
            return;
        }
        this.mState.onReceivedMotionEvent(rawEvent);
        if (shouldPerformGestureDetection(event) && this.mGestureDetector.onMotionEvent(event, rawEvent, policyFlags)) {
            return;
        }
        if (event.getActionMasked() == 3) {
            clear(event, policyFlags);
            return;
        }
        if (this.mState.isClear()) {
            handleMotionEventStateClear(event, rawEvent, policyFlags);
            return;
        }
        if (this.mState.isTouchInteracting()) {
            handleMotionEventStateTouchInteracting(event, rawEvent, policyFlags);
            return;
        }
        if (this.mState.isTouchExploring()) {
            handleMotionEventStateTouchExploring(event, rawEvent, policyFlags);
            return;
        }
        if (this.mState.isDragging()) {
            handleMotionEventStateDragging(event, rawEvent, policyFlags);
            return;
        }
        if (this.mState.isDelegating()) {
            handleMotionEventStateDelegating(event, rawEvent, policyFlags);
            return;
        }
        if (this.mState.isGestureDetecting()) {
            this.mSendTouchInteractionEndDelayed.cancel();
            return;
        }
        Slog.e(LOG_TAG, "Illegal state: " + this.mState);
        clear(event, policyFlags);
    }

    @Override // com.android.server.accessibility.EventStreamTransformation
    public void onAccessibilityEvent(AccessibilityEvent event) {
        int eventType = event.getEventType();
        if (eventType == 256) {
            sendsPendingA11yEventsIfNeed();
        }
        this.mState.onReceivedAccessibilityEvent(event);
        super.onAccessibilityEvent(event);
    }

    private void sendsPendingA11yEventsIfNeed() {
        if (this.mSendHoverExitDelayed.isPending()) {
            return;
        }
        if (this.mSendTouchExplorationEndDelayed.isPending()) {
            this.mSendTouchExplorationEndDelayed.cancel();
            this.mDispatcher.sendAccessibilityEvent(1024);
        }
        if (this.mSendTouchInteractionEndDelayed.isPending()) {
            this.mSendTouchInteractionEndDelayed.cancel();
            this.mDispatcher.sendAccessibilityEvent(2097152);
        }
    }

    @Override // com.android.server.accessibility.gestures.GestureManifold.Listener
    public void onDoubleTapAndHold(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (this.mDispatcher.longPressWithTouchEvents(event, policyFlags)) {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
            this.mState.startDelegating();
        }
    }

    @Override // com.android.server.accessibility.gestures.GestureManifold.Listener
    public boolean onDoubleTap(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        this.mAms.onTouchInteractionEnd();
        this.mSendHoverEnterAndMoveDelayed.cancel();
        this.mSendHoverExitDelayed.cancel();
        if (this.mSendTouchExplorationEndDelayed.isPending()) {
            this.mSendTouchExplorationEndDelayed.forceSendAndRemove();
        }
        this.mDispatcher.sendAccessibilityEvent(2097152);
        this.mSendTouchInteractionEndDelayed.cancel();
        if (this.mAms.performActionOnAccessibilityFocusedItem(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK)) {
            return true;
        }
        Slog.e(LOG_TAG, "ACTION_CLICK failed. Dispatching motion events to simulate click.");
        this.mDispatcher.clickWithTouchEvents(event, rawEvent, policyFlags);
        return true;
    }

    @Override // com.android.server.accessibility.gestures.GestureManifold.Listener
    public boolean onGestureStarted() {
        this.mSendHoverEnterAndMoveDelayed.cancel();
        this.mSendHoverExitDelayed.cancel();
        this.mExitGestureDetectionModeDelayed.post();
        this.mDispatcher.sendAccessibilityEvent(262144);
        return false;
    }

    @Override // com.android.server.accessibility.gestures.GestureManifold.Listener
    public boolean onGestureCompleted(AccessibilityGestureEvent gestureEvent) {
        endGestureDetection(true);
        this.mSendTouchInteractionEndDelayed.cancel();
        this.mAms.onGesture(gestureEvent);
        return true;
    }

    @Override // com.android.server.accessibility.gestures.GestureManifold.Listener
    public boolean onGestureCancelled(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (this.mState.isGestureDetecting()) {
            endGestureDetection(event.getActionMasked() == 1);
            return true;
        }
        if (!this.mState.isTouchExploring() || event.getActionMasked() != 2) {
            return false;
        }
        int pointerId = this.mReceivedPointerTracker.getPrimaryPointerId();
        int pointerIdBits = 1 << pointerId;
        this.mSendHoverEnterAndMoveDelayed.addEvent(event, this.mState.getLastReceivedEvent());
        this.mSendHoverEnterAndMoveDelayed.forceSendAndRemove();
        this.mSendHoverExitDelayed.cancel();
        this.mDispatcher.sendMotionEvent(event, 7, this.mState.getLastReceivedEvent(), pointerIdBits, policyFlags);
        return true;
    }

    private void handleMotionEventStateClear(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (event.getActionMasked() == 0) {
            handleActionDown(event, rawEvent, policyFlags);
        }
    }

    private void handleActionDown(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        this.mAms.onTouchInteractionStart();
        this.mSendHoverEnterAndMoveDelayed.cancel();
        this.mSendHoverExitDelayed.cancel();
        if (this.mState.isTouchExploring()) {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
        }
        if (!this.mState.isClear()) {
            this.mSendTouchInteractionEndDelayed.cancel();
            return;
        }
        if (!this.mSendHoverEnterAndMoveDelayed.isPending()) {
            int pointerId = this.mReceivedPointerTracker.getPrimaryPointerId();
            int pointerIdBits = 1 << pointerId;
            this.mSendHoverEnterAndMoveDelayed.post(event, rawEvent, pointerIdBits, policyFlags);
        } else {
            this.mSendHoverEnterAndMoveDelayed.addEvent(event, rawEvent);
        }
        this.mSendTouchExplorationEndDelayed.forceSendAndRemove();
        this.mSendTouchInteractionEndDelayed.forceSendAndRemove();
        this.mDispatcher.sendAccessibilityEvent(1048576);
        if (this.mTouchExplorationPassthroughRegion.contains((int) event.getX(), (int) event.getY())) {
            this.mState.startDelegating();
            MotionEvent event2 = MotionEvent.obtainNoHistory(event);
            this.mDispatcher.sendMotionEvent(event2, event2.getAction(), rawEvent, -1, policyFlags);
            this.mSendHoverEnterAndMoveDelayed.cancel();
            return;
        }
        if (this.mGestureDetectionPassthroughRegion.contains((int) event.getX(), (int) event.getY())) {
            this.mSendHoverEnterAndMoveDelayed.forceSendAndRemove();
        }
    }

    private void handleMotionEventStateTouchInteracting(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.mSendTouchInteractionEndDelayed.cancel();
            handleActionDown(event, rawEvent, policyFlags);
        } else if (actionMasked == 1) {
            handleActionUp(event, rawEvent, policyFlags);
        } else if (actionMasked == 2) {
            handleActionMoveStateTouchInteracting(event, rawEvent, policyFlags);
        } else if (actionMasked == 5) {
            handleActionPointerDown(event, rawEvent, policyFlags);
        }
    }

    private void handleMotionEventStateTouchExploring(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 1) {
            handleActionUp(event, rawEvent, policyFlags);
        } else if (actionMasked == 2) {
            handleActionMoveStateTouchExploring(event, rawEvent, policyFlags);
        } else if (actionMasked == 5) {
            handleActionPointerDown(event, rawEvent, policyFlags);
        }
    }

    private void handleActionPointerDown(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (this.mSendHoverEnterAndMoveDelayed.isPending()) {
            this.mSendHoverEnterAndMoveDelayed.cancel();
            this.mSendHoverExitDelayed.cancel();
        } else {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
        }
    }

    private void handleActionMoveStateTouchInteracting(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int pointerIdBits;
        int pointerIdBits2;
        int pointerId = this.mReceivedPointerTracker.getPrimaryPointerId();
        int pointerIndex = event.findPointerIndex(pointerId);
        int pointerIdBits3 = 1 << pointerId;
        int pointerCount = event.getPointerCount();
        if (pointerCount == 1) {
            pointerIdBits = pointerIdBits3;
            if (this.mSendHoverEnterAndMoveDelayed.isPending()) {
                this.mSendHoverEnterAndMoveDelayed.addEvent(event, rawEvent);
            }
        } else {
            if (pointerCount == 2) {
                if (this.mGestureDetector.isMultiFingerGesturesEnabled() && !this.mGestureDetector.isTwoFingerPassthroughEnabled()) {
                    return;
                }
                this.mSendHoverEnterAndMoveDelayed.cancel();
                this.mSendHoverExitDelayed.cancel();
                if (!this.mGestureDetector.isMultiFingerGesturesEnabled() || !this.mGestureDetector.isTwoFingerPassthroughEnabled()) {
                    pointerIdBits2 = pointerIdBits3;
                } else {
                    if (pointerIndex < 0) {
                        return;
                    }
                    int index = 0;
                    while (index < event.getPointerCount()) {
                        int id = event.getPointerId(index);
                        if (!this.mReceivedPointerTracker.isReceivedPointerDown(id)) {
                            Slog.e(LOG_TAG, "Invalid pointer id: " + id);
                        }
                        float deltaX = this.mReceivedPointerTracker.getReceivedPointerDownX(id) - rawEvent.getX(index);
                        float deltaY = this.mReceivedPointerTracker.getReceivedPointerDownY(id) - rawEvent.getY(index);
                        int pointerIdBits4 = pointerIdBits3;
                        double moveDelta = Math.hypot(deltaX, deltaY);
                        if (moveDelta >= this.mTouchSlop * 2) {
                            index++;
                            pointerIdBits3 = pointerIdBits4;
                        } else {
                            return;
                        }
                    }
                    pointerIdBits2 = pointerIdBits3;
                }
                MotionEvent event2 = MotionEvent.obtainNoHistory(event);
                if (isDraggingGesture(event2)) {
                    computeDraggingPointerIdIfNeeded(event2);
                    int pointerIdBits5 = 1 << this.mDraggingPointerId;
                    event2.setEdgeFlags(this.mReceivedPointerTracker.getLastReceivedDownEdgeFlags());
                    MotionEvent downEvent = computeDownEventForDrag(event2);
                    if (downEvent != null) {
                        this.mDispatcher.sendMotionEvent(downEvent, 0, rawEvent, pointerIdBits5, policyFlags);
                        this.mDispatcher.sendMotionEvent(event2, 2, rawEvent, pointerIdBits5, policyFlags);
                    } else {
                        this.mDispatcher.sendMotionEvent(event2, 0, rawEvent, pointerIdBits5, policyFlags);
                    }
                    this.mState.startDragging();
                    return;
                }
                this.mState.startDelegating();
                this.mDispatcher.sendDownForAllNotInjectedPointers(event2, policyFlags);
                return;
            }
            if (this.mGestureDetector.isMultiFingerGesturesEnabled()) {
                if (!this.mGestureDetector.isTwoFingerPassthroughEnabled() || event.getPointerCount() != 3 || !allPointersDownOnBottomEdge(event)) {
                    pointerIdBits = pointerIdBits3;
                } else {
                    this.mState.startDelegating();
                    if (this.mState.isTouchExploring()) {
                        this.mDispatcher.sendDownForAllNotInjectedPointers(event, policyFlags);
                        pointerIdBits = pointerIdBits3;
                    } else {
                        this.mDispatcher.sendDownForAllNotInjectedPointersWithOriginalDown(event, policyFlags);
                        pointerIdBits = pointerIdBits3;
                    }
                }
            } else {
                this.mState.startDelegating();
                this.mDispatcher.sendDownForAllNotInjectedPointers(MotionEvent.obtainNoHistory(event), policyFlags);
            }
        }
    }

    private void handleActionUp(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        this.mAms.onTouchInteractionEnd();
        int pointerId = event.getPointerId(event.getActionIndex());
        int pointerIdBits = 1 << pointerId;
        if (this.mSendHoverEnterAndMoveDelayed.isPending()) {
            this.mSendHoverExitDelayed.post(event, rawEvent, pointerIdBits, policyFlags);
        } else {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
        }
        if (!this.mSendTouchInteractionEndDelayed.isPending()) {
            this.mSendTouchInteractionEndDelayed.post();
        }
    }

    private void handleActionMoveStateTouchExploring(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int pointerId = this.mReceivedPointerTracker.getPrimaryPointerId();
        int pointerIdBits = 1 << pointerId;
        int pointerIndex = event.findPointerIndex(pointerId);
        int pointerCount = event.getPointerCount();
        if (pointerCount == 1) {
            sendTouchExplorationGestureStartAndHoverEnterIfNeeded(policyFlags);
            this.mDispatcher.sendMotionEvent(event, 7, rawEvent, pointerIdBits, policyFlags);
            return;
        }
        if (pointerCount == 2) {
            if (this.mGestureDetector.isMultiFingerGesturesEnabled() && !this.mGestureDetector.isTwoFingerPassthroughEnabled()) {
                return;
            }
            if (this.mSendHoverEnterAndMoveDelayed.isPending()) {
                this.mSendHoverEnterAndMoveDelayed.cancel();
                this.mSendHoverExitDelayed.cancel();
            }
            float deltaX = this.mReceivedPointerTracker.getReceivedPointerDownX(pointerId) - rawEvent.getX(pointerIndex);
            float deltaY = this.mReceivedPointerTracker.getReceivedPointerDownY(pointerId) - rawEvent.getY(pointerIndex);
            double moveDelta = Math.hypot(deltaX, deltaY);
            if (moveDelta > this.mDoubleTapSlop) {
                handleActionMoveStateTouchInteracting(event, rawEvent, policyFlags);
                return;
            } else {
                sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
                return;
            }
        }
        if (this.mGestureDetector.isMultiFingerGesturesEnabled()) {
            return;
        }
        if (this.mSendHoverEnterAndMoveDelayed.isPending()) {
            this.mSendHoverEnterAndMoveDelayed.cancel();
            this.mSendHoverExitDelayed.cancel();
        } else {
            sendHoverExitAndTouchExplorationGestureEndIfNeeded(policyFlags);
        }
        handleActionMoveStateTouchInteracting(event, rawEvent, policyFlags);
    }

    private void handleMotionEventStateDragging(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int pointerCount;
        if (this.mGestureDetector.isMultiFingerGesturesEnabled() && !this.mGestureDetector.isTwoFingerPassthroughEnabled()) {
            return;
        }
        int pointerIdBits = 0;
        if (event.findPointerIndex(this.mDraggingPointerId) == -1) {
            Slog.e(LOG_TAG, "mDraggingPointerId doesn't match any pointers on current event. mDraggingPointerId: " + Integer.toString(this.mDraggingPointerId) + ", Event: " + event);
            this.mDraggingPointerId = -1;
        } else {
            pointerIdBits = 1 << this.mDraggingPointerId;
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            Slog.e(LOG_TAG, "Dragging state can be reached only if two pointers are already down");
            clear(event, policyFlags);
            return;
        }
        if (actionMasked == 1) {
            int pointerId = event.getPointerId(event.getActionIndex());
            if (pointerId == this.mDraggingPointerId) {
                this.mDispatcher.sendMotionEvent(event, 1, rawEvent, pointerIdBits, policyFlags);
            }
            this.mAms.onTouchInteractionEnd();
            this.mDispatcher.sendAccessibilityEvent(2097152);
            return;
        }
        if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.mState.startDelegating();
                if (this.mDraggingPointerId != -1) {
                    this.mDispatcher.sendMotionEvent(event, 1, rawEvent, pointerIdBits, policyFlags);
                }
                this.mDispatcher.sendDownForAllNotInjectedPointers(event, policyFlags);
                return;
            }
            if (actionMasked == 6) {
                int pointerId2 = event.getPointerId(event.getActionIndex());
                if (pointerId2 == this.mDraggingPointerId) {
                    this.mDraggingPointerId = -1;
                    this.mDispatcher.sendMotionEvent(event, 1, rawEvent, pointerIdBits, policyFlags);
                    return;
                }
                return;
            }
            return;
        }
        if (this.mDraggingPointerId == -1 || (pointerCount = event.getPointerCount()) == 1) {
            return;
        }
        if (pointerCount == 2) {
            if (isDraggingGesture(event)) {
                computeDraggingPointerIdIfNeeded(event);
                this.mDispatcher.sendMotionEvent(event, 2, rawEvent, pointerIdBits, policyFlags);
                return;
            }
            this.mState.startDelegating();
            this.mDraggingPointerId = -1;
            MotionEvent event2 = MotionEvent.obtainNoHistory(event);
            this.mDispatcher.sendMotionEvent(event2, 1, rawEvent, pointerIdBits, policyFlags);
            this.mDispatcher.sendDownForAllNotInjectedPointers(event2, policyFlags);
            return;
        }
        this.mState.startDelegating();
        this.mDraggingPointerId = -1;
        MotionEvent event3 = MotionEvent.obtainNoHistory(event);
        this.mDispatcher.sendMotionEvent(event3, 1, rawEvent, pointerIdBits, policyFlags);
        this.mDispatcher.sendDownForAllNotInjectedPointers(event3, policyFlags);
    }

    private void handleMotionEventStateDelegating(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            Slog.e(LOG_TAG, "Delegating state can only be reached if there is at least one pointer down!");
            clear(event, policyFlags);
        } else {
            if (actionMasked == 1) {
                this.mDispatcher.sendMotionEvent(event, event.getAction(), rawEvent, -1, policyFlags);
                this.mAms.onTouchInteractionEnd();
                this.mDispatcher.clear();
                this.mDispatcher.sendAccessibilityEvent(2097152);
                return;
            }
            this.mDispatcher.sendMotionEvent(event, event.getAction(), rawEvent, -1, policyFlags);
        }
    }

    private void endGestureDetection(boolean interactionEnd) {
        this.mAms.onTouchInteractionEnd();
        this.mDispatcher.sendAccessibilityEvent(524288);
        if (interactionEnd) {
            this.mDispatcher.sendAccessibilityEvent(2097152);
        }
        this.mExitGestureDetectionModeDelayed.cancel();
    }

    private void sendHoverExitAndTouchExplorationGestureEndIfNeeded(int policyFlags) {
        MotionEvent event = this.mState.getLastInjectedHoverEvent();
        if (event != null && event.getActionMasked() != 10) {
            int pointerIdBits = event.getPointerIdBits();
            if (!this.mSendTouchExplorationEndDelayed.isPending()) {
                this.mSendTouchExplorationEndDelayed.post();
            }
            this.mDispatcher.sendMotionEvent(event, 10, this.mState.getLastReceivedEvent(), pointerIdBits, policyFlags);
        }
    }

    private void sendTouchExplorationGestureStartAndHoverEnterIfNeeded(int policyFlags) {
        MotionEvent event = this.mState.getLastInjectedHoverEvent();
        if (event != null && event.getActionMasked() == 10) {
            int pointerIdBits = event.getPointerIdBits();
            this.mDispatcher.sendMotionEvent(event, 9, this.mState.getLastReceivedEvent(), pointerIdBits, policyFlags);
        }
    }

    private boolean isDraggingGesture(MotionEvent event) {
        float firstPtrX = event.getX(0);
        float firstPtrY = event.getY(0);
        float secondPtrX = event.getX(1);
        float secondPtrY = event.getY(1);
        float firstPtrDownX = this.mReceivedPointerTracker.getReceivedPointerDownX(0);
        float firstPtrDownY = this.mReceivedPointerTracker.getReceivedPointerDownY(0);
        float secondPtrDownX = this.mReceivedPointerTracker.getReceivedPointerDownX(1);
        float secondPtrDownY = this.mReceivedPointerTracker.getReceivedPointerDownY(1);
        return GestureUtils.isDraggingGesture(firstPtrDownX, firstPtrDownY, secondPtrDownX, secondPtrDownY, firstPtrX, firstPtrY, secondPtrX, secondPtrY, MAX_DRAGGING_ANGLE_COS);
    }

    private void computeDraggingPointerIdIfNeeded(MotionEvent event) {
        int i = this.mDraggingPointerId;
        if (i != -1) {
            int pointerIndex = event.findPointerIndex(i);
            if (event.findPointerIndex(pointerIndex) >= 0) {
                return;
            }
        }
        float firstPtrX = event.getX(0);
        float firstPtrY = event.getY(0);
        int firstPtrId = event.getPointerId(0);
        float secondPtrX = event.getX(1);
        float secondPtrY = event.getY(1);
        int secondPtrId = event.getPointerId(1);
        this.mDraggingPointerId = getDistanceToClosestEdge(firstPtrX, firstPtrY) < getDistanceToClosestEdge(secondPtrX, secondPtrY) ? firstPtrId : secondPtrId;
    }

    private float getDistanceToClosestEdge(float x, float y) {
        float distance;
        long width = this.mContext.getResources().getDisplayMetrics().widthPixels;
        long height = this.mContext.getResources().getDisplayMetrics().heightPixels;
        if (x < width - x) {
            distance = x;
        } else {
            distance = width - x;
        }
        if (distance > y) {
            distance = y;
        }
        if (distance > height - y) {
            float distance2 = height - y;
            return distance2;
        }
        return distance;
    }

    private MotionEvent computeDownEventForDrag(MotionEvent event) {
        int i;
        if (this.mState.isTouchExploring() || (i = this.mDraggingPointerId) == -1 || event == null) {
            return null;
        }
        float x = this.mReceivedPointerTracker.getReceivedPointerDownX(i);
        float y = this.mReceivedPointerTracker.getReceivedPointerDownY(this.mDraggingPointerId);
        long time = this.mReceivedPointerTracker.getReceivedPointerDownTime(this.mDraggingPointerId);
        MotionEvent.PointerCoords[] coords = {new MotionEvent.PointerCoords()};
        coords[0].x = x;
        coords[0].y = y;
        MotionEvent.PointerProperties[] properties = {new MotionEvent.PointerProperties()};
        properties[0].id = this.mDraggingPointerId;
        properties[0].toolType = 1;
        MotionEvent downEvent = MotionEvent.obtain(time, time, 0, 1, properties, coords, event.getMetaState(), event.getButtonState(), event.getXPrecision(), event.getYPrecision(), event.getDeviceId(), event.getEdgeFlags(), event.getSource(), event.getFlags());
        event.setDownTime(time);
        return downEvent;
    }

    private boolean allPointersDownOnBottomEdge(MotionEvent event) {
        long screenHeight = this.mContext.getResources().getDisplayMetrics().heightPixels;
        for (int i = 0; i < event.getPointerCount(); i++) {
            int pointerId = event.getPointerId(i);
            float pointerDownY = this.mReceivedPointerTracker.getReceivedPointerDownY(pointerId);
            if (pointerDownY < screenHeight - this.mEdgeSwipeHeightPixels) {
                return false;
            }
        }
        return true;
    }

    public TouchState getState() {
        return this.mState;
    }

    @Override // com.android.server.accessibility.BaseEventStreamTransformation, com.android.server.accessibility.EventStreamTransformation
    public void setNext(EventStreamTransformation next) {
        this.mDispatcher.setReceiver(next);
        super.setNext(next);
    }

    public void setServiceHandlesDoubleTap(boolean mode) {
        this.mGestureDetector.setServiceHandlesDoubleTap(mode);
    }

    public void setMultiFingerGesturesEnabled(boolean enabled) {
        this.mGestureDetector.setMultiFingerGesturesEnabled(enabled);
    }

    public void setTwoFingerPassthroughEnabled(boolean enabled) {
        this.mGestureDetector.setTwoFingerPassthroughEnabled(enabled);
    }

    public void setGestureDetectionPassthroughRegion(Region region) {
        this.mGestureDetectionPassthroughRegion = region;
    }

    public void setTouchExplorationPassthroughRegion(Region region) {
        this.mTouchExplorationPassthroughRegion = region;
    }

    private boolean shouldPerformGestureDetection(MotionEvent event) {
        if (this.mState.isDelegating() || this.mState.isDragging()) {
            return false;
        }
        if (event.getActionMasked() == 0) {
            int x = (int) event.getX();
            int y = (int) event.getY();
            return (this.mTouchExplorationPassthroughRegion.contains(x, y) || this.mGestureDetectionPassthroughRegion.contains(x, y)) ? false : true;
        }
        return true;
    }

    private final class ExitGestureDetectionModeDelayed implements Runnable {
        private ExitGestureDetectionModeDelayed() {
        }

        public void post() {
            TouchExplorer.this.mHandler.postDelayed(this, 2000L);
        }

        public void cancel() {
            TouchExplorer.this.mHandler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            TouchExplorer.this.mDispatcher.sendAccessibilityEvent(524288);
            TouchExplorer.this.clear();
        }
    }

    class SendHoverEnterAndMoveDelayed implements Runnable {
        private int mPointerIdBits;
        private int mPolicyFlags;
        private final String LOG_TAG_SEND_HOVER_DELAYED = "SendHoverEnterAndMoveDelayed";
        private final List<MotionEvent> mEvents = new ArrayList();
        private final List<MotionEvent> mRawEvents = new ArrayList();

        SendHoverEnterAndMoveDelayed() {
        }

        public void post(MotionEvent event, MotionEvent rawEvent, int pointerIdBits, int policyFlags) {
            cancel();
            addEvent(event, rawEvent);
            this.mPointerIdBits = pointerIdBits;
            this.mPolicyFlags = policyFlags;
            TouchExplorer.this.mHandler.postDelayed(this, TouchExplorer.this.mDetermineUserIntentTimeout);
        }

        public void addEvent(MotionEvent event, MotionEvent rawEvent) {
            this.mEvents.add(MotionEvent.obtain(event));
            this.mRawEvents.add(MotionEvent.obtain(rawEvent));
        }

        public void cancel() {
            if (isPending()) {
                TouchExplorer.this.mHandler.removeCallbacks(this);
                clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPending() {
            return TouchExplorer.this.mHandler.hasCallbacks(this);
        }

        private void clear() {
            this.mPointerIdBits = -1;
            this.mPolicyFlags = 0;
            int eventCount = this.mEvents.size();
            for (int i = eventCount - 1; i >= 0; i--) {
                this.mEvents.remove(i).recycle();
            }
            int rawEventcount = this.mRawEvents.size();
            for (int i2 = rawEventcount - 1; i2 >= 0; i2--) {
                this.mRawEvents.remove(i2).recycle();
            }
        }

        public void forceSendAndRemove() {
            if (isPending()) {
                run();
                cancel();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TouchExplorer.this.mReceivedPointerTracker.getReceivedPointerDownCount() <= 1) {
                TouchExplorer.this.mDispatcher.sendAccessibilityEvent(512);
                if (!this.mEvents.isEmpty() && !this.mRawEvents.isEmpty()) {
                    TouchExplorer.this.mDispatcher.sendMotionEvent(this.mEvents.get(0), 9, this.mRawEvents.get(0), this.mPointerIdBits, this.mPolicyFlags);
                    int eventCount = this.mEvents.size();
                    for (int i = 1; i < eventCount; i++) {
                        TouchExplorer.this.mDispatcher.sendMotionEvent(this.mEvents.get(i), 7, this.mRawEvents.get(i), this.mPointerIdBits, this.mPolicyFlags);
                    }
                }
                clear();
                return;
            }
            Slog.e(TouchExplorer.LOG_TAG, "Attempted touch exploration with " + TouchExplorer.this.mReceivedPointerTracker.getReceivedPointerDownCount() + " pointers down.");
        }
    }

    class SendHoverExitDelayed implements Runnable {
        private final String LOG_TAG_SEND_HOVER_DELAYED = "SendHoverExitDelayed";
        private int mPointerIdBits;
        private int mPolicyFlags;
        private MotionEvent mPrototype;
        private MotionEvent mRawEvent;

        SendHoverExitDelayed() {
        }

        public void post(MotionEvent prototype, MotionEvent rawEvent, int pointerIdBits, int policyFlags) {
            cancel();
            this.mPrototype = MotionEvent.obtain(prototype);
            this.mRawEvent = MotionEvent.obtain(rawEvent);
            this.mPointerIdBits = pointerIdBits;
            this.mPolicyFlags = policyFlags;
            TouchExplorer.this.mHandler.postDelayed(this, TouchExplorer.this.mDetermineUserIntentTimeout);
        }

        public void cancel() {
            if (isPending()) {
                TouchExplorer.this.mHandler.removeCallbacks(this);
                clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPending() {
            return TouchExplorer.this.mHandler.hasCallbacks(this);
        }

        private void clear() {
            MotionEvent motionEvent = this.mPrototype;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
            MotionEvent motionEvent2 = this.mRawEvent;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.mPrototype = null;
            this.mRawEvent = null;
            this.mPointerIdBits = -1;
            this.mPolicyFlags = 0;
        }

        public void forceSendAndRemove() {
            if (isPending()) {
                run();
                cancel();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            TouchExplorer.this.mDispatcher.sendMotionEvent(this.mPrototype, 10, this.mRawEvent, this.mPointerIdBits, this.mPolicyFlags);
            if (!TouchExplorer.this.mSendTouchExplorationEndDelayed.isPending()) {
                TouchExplorer.this.mSendTouchExplorationEndDelayed.cancel();
                TouchExplorer.this.mSendTouchExplorationEndDelayed.post();
            }
            if (TouchExplorer.this.mSendTouchInteractionEndDelayed.isPending()) {
                TouchExplorer.this.mSendTouchInteractionEndDelayed.cancel();
                TouchExplorer.this.mSendTouchInteractionEndDelayed.post();
            }
            clear();
        }
    }

    private class SendAccessibilityEventDelayed implements Runnable {
        private final int mDelay;
        private final int mEventType;

        public SendAccessibilityEventDelayed(int eventType, int delay) {
            this.mEventType = eventType;
            this.mDelay = delay;
        }

        public void cancel() {
            TouchExplorer.this.mHandler.removeCallbacks(this);
        }

        public void post() {
            TouchExplorer.this.mHandler.postDelayed(this, this.mDelay);
        }

        public boolean isPending() {
            return TouchExplorer.this.mHandler.hasCallbacks(this);
        }

        public void forceSendAndRemove() {
            if (isPending()) {
                run();
                cancel();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            TouchExplorer.this.mDispatcher.sendAccessibilityEvent(this.mEventType);
        }
    }

    public String toString() {
        return "TouchExplorer { mTouchState: " + this.mState + ", mDetermineUserIntentTimeout: " + this.mDetermineUserIntentTimeout + ", mDoubleTapSlop: " + this.mDoubleTapSlop + ", mDraggingPointerId: " + this.mDraggingPointerId + " }";
    }
}
