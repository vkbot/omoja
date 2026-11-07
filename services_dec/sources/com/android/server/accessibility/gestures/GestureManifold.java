package com.android.server.accessibility.gestures;

import android.accessibilityservice.AccessibilityGestureEvent;
import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class GestureManifold implements GestureMatcher.StateChangeListener {
    private static final String LOG_TAG = "GestureManifold";
    private final Context mContext;
    private final Handler mHandler;
    private Listener mListener;
    private TouchState mState;
    private final List<GestureMatcher> mGestures = new ArrayList();
    private boolean mServiceHandlesDoubleTap = false;
    private final List<GestureMatcher> mMultiFingerGestures = new ArrayList();
    private final List<GestureMatcher> mTwoFingerSwipes = new ArrayList();
    boolean mMultiFingerGesturesEnabled = false;
    private boolean mTwoFingerPassthroughEnabled = false;

    public interface Listener {
        boolean onDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, int i);

        void onDoubleTapAndHold(MotionEvent motionEvent, MotionEvent motionEvent2, int i);

        boolean onGestureCancelled(MotionEvent motionEvent, MotionEvent motionEvent2, int i);

        boolean onGestureCompleted(AccessibilityGestureEvent accessibilityGestureEvent);

        boolean onGestureStarted();
    }

    GestureManifold(Context context, Listener listener, TouchState state, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
        this.mListener = listener;
        this.mState = state;
        this.mGestures.add(new MultiTap(context, 2, 17, this));
        this.mGestures.add(new MultiTapAndHold(context, 2, 18, this));
        this.mGestures.add(new SecondFingerMultiTap(context, 2, 17, this));
        this.mGestures.add(new Swipe(context, 1, 4, this));
        this.mGestures.add(new Swipe(context, 0, 3, this));
        this.mGestures.add(new Swipe(context, 2, 1, this));
        this.mGestures.add(new Swipe(context, 3, 2, this));
        this.mGestures.add(new Swipe(context, 0, 1, 5, this));
        this.mGestures.add(new Swipe(context, 0, 2, 9, this));
        this.mGestures.add(new Swipe(context, 0, 3, 10, this));
        this.mGestures.add(new Swipe(context, 1, 2, 11, this));
        this.mGestures.add(new Swipe(context, 1, 3, 12, this));
        this.mGestures.add(new Swipe(context, 1, 0, 6, this));
        this.mGestures.add(new Swipe(context, 3, 2, 8, this));
        this.mGestures.add(new Swipe(context, 3, 0, 15, this));
        this.mGestures.add(new Swipe(context, 3, 1, 16, this));
        this.mGestures.add(new Swipe(context, 2, 3, 7, this));
        this.mGestures.add(new Swipe(context, 2, 0, 13, this));
        this.mGestures.add(new Swipe(context, 2, 1, 14, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 2, 1, 19, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 2, 2, 20, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTapAndHold(this.mContext, 2, 2, 40, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 2, 3, 21, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 3, 1, 22, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 3, 2, 23, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTapAndHold(this.mContext, 3, 2, 41, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 3, 3, 24, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 4, 1, 37, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 4, 2, 38, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTapAndHold(this.mContext, 4, 2, 42, this));
        this.mMultiFingerGestures.add(new MultiFingerMultiTap(this.mContext, 4, 3, 39, this));
        this.mTwoFingerSwipes.add(new MultiFingerSwipe(context, 2, 3, 26, this));
        this.mTwoFingerSwipes.add(new MultiFingerSwipe(context, 2, 0, 27, this));
        this.mTwoFingerSwipes.add(new MultiFingerSwipe(context, 2, 1, 28, this));
        this.mTwoFingerSwipes.add(new MultiFingerSwipe(context, 2, 2, 25, this));
        this.mMultiFingerGestures.addAll(this.mTwoFingerSwipes);
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 3, 3, 30, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 3, 0, 31, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 3, 1, 32, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 3, 2, 29, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 4, 3, 34, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 4, 0, 35, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 4, 1, 36, this));
        this.mMultiFingerGestures.add(new MultiFingerSwipe(context, 4, 2, 33, this));
    }

    boolean onMotionEvent(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (this.mState.isClear()) {
            if (event.getActionMasked() != 0) {
                return false;
            }
            clear();
        }
        for (GestureMatcher matcher : this.mGestures) {
            if (matcher.getState() != 3) {
                matcher.onMotionEvent(event, rawEvent, policyFlags);
                if (matcher.getState() == 2) {
                    clear();
                    return true;
                }
            }
        }
        return false;
    }

    public void clear() {
        for (GestureMatcher matcher : this.mGestures) {
            matcher.clear();
        }
    }

    @Override // com.android.server.accessibility.gestures.GestureMatcher.StateChangeListener
    public void onStateChanged(int gestureId, int state, MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (state == 1 && !this.mState.isGestureDetecting()) {
            if (gestureId == 17 || gestureId == 18) {
                if (this.mServiceHandlesDoubleTap) {
                    this.mListener.onGestureStarted();
                    return;
                }
                return;
            }
            this.mListener.onGestureStarted();
            return;
        }
        if (state == 2) {
            onGestureCompleted(gestureId, event, rawEvent, policyFlags);
            return;
        }
        if (state == 3 && this.mState.isGestureDetecting()) {
            for (GestureMatcher matcher : this.mGestures) {
                if (matcher.getState() == 1) {
                    return;
                }
            }
            this.mListener.onGestureCancelled(event, rawEvent, policyFlags);
        }
    }

    private void onGestureCompleted(int gestureId, MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        if (gestureId == 17) {
            if (this.mServiceHandlesDoubleTap) {
                AccessibilityGestureEvent gestureEvent = new AccessibilityGestureEvent(gestureId, event.getDisplayId());
                this.mListener.onGestureCompleted(gestureEvent);
            } else {
                this.mListener.onDoubleTap(event, rawEvent, policyFlags);
            }
            clear();
            return;
        }
        if (gestureId == 18) {
            if (this.mServiceHandlesDoubleTap) {
                AccessibilityGestureEvent gestureEvent2 = new AccessibilityGestureEvent(gestureId, event.getDisplayId());
                this.mListener.onGestureCompleted(gestureEvent2);
            } else {
                this.mListener.onDoubleTapAndHold(event, rawEvent, policyFlags);
            }
            clear();
            return;
        }
        AccessibilityGestureEvent gestureEvent3 = new AccessibilityGestureEvent(gestureId, event.getDisplayId());
        this.mListener.onGestureCompleted(gestureEvent3);
    }

    public boolean isMultiFingerGesturesEnabled() {
        return this.mMultiFingerGesturesEnabled;
    }

    public void setMultiFingerGesturesEnabled(boolean mode) {
        if (this.mMultiFingerGesturesEnabled != mode) {
            this.mMultiFingerGesturesEnabled = mode;
            if (mode) {
                this.mGestures.addAll(this.mMultiFingerGestures);
            } else {
                this.mGestures.removeAll(this.mMultiFingerGestures);
            }
        }
    }

    public boolean isTwoFingerPassthroughEnabled() {
        return this.mTwoFingerPassthroughEnabled;
    }

    public void setTwoFingerPassthroughEnabled(boolean mode) {
        if (this.mTwoFingerPassthroughEnabled != mode) {
            this.mTwoFingerPassthroughEnabled = mode;
            if (!mode) {
                this.mMultiFingerGestures.addAll(this.mTwoFingerSwipes);
                if (this.mMultiFingerGesturesEnabled) {
                    this.mGestures.addAll(this.mTwoFingerSwipes);
                    return;
                }
                return;
            }
            this.mMultiFingerGestures.removeAll(this.mTwoFingerSwipes);
            this.mGestures.removeAll(this.mTwoFingerSwipes);
        }
    }

    public void setServiceHandlesDoubleTap(boolean mode) {
        this.mServiceHandlesDoubleTap = mode;
    }

    public boolean isServiceHandlesDoubleTapEnabled() {
        return this.mServiceHandlesDoubleTap;
    }
}
