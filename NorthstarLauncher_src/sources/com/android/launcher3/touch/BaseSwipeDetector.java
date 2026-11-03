package com.android.launcher3.touch;

import android.graphics.PointF;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.launcher3.testing.TestProtocol;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseSwipeDetector {
    private static final float ANIMATION_DURATION = 1200.0f;
    private static final boolean DBG = false;
    private static final float RELEASE_VELOCITY_PX_MS = 1.0f;
    private static final String TAG = "BaseSwipeDetector";
    private static final PointF sTempPoint = new PointF();
    protected boolean mIgnoreSlopWhenSettling;
    protected final boolean mIsRtl;
    private boolean mIsSettingState;
    protected final float mMaxVelocity;
    protected final float mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private final PointF mDownPos = new PointF();
    private final PointF mLastPos = new PointF();
    private final Queue<Runnable> mSetStateQueue = new LinkedList();
    private int mActivePointerId = -1;
    private PointF mLastDisplacement = new PointF();
    private PointF mDisplacement = new PointF();
    protected PointF mSubtractDisplacement = new PointF();
    ScrollState mState = ScrollState.IDLE;

    /* JADX INFO: Access modifiers changed from: private */
    enum ScrollState {
        IDLE,
        DRAGGING,
        SETTLING
    }

    protected abstract void reportDragEndInternal(PointF velocity);

    protected abstract void reportDragStartInternal(boolean recatch);

    protected abstract void reportDraggingInternal(PointF displacement, MotionEvent event);

    protected abstract boolean shouldScrollStart(PointF displacement);

    protected BaseSwipeDetector(ViewConfiguration config, boolean isRtl) {
        this.mTouchSlop = config.getScaledTouchSlop();
        this.mMaxVelocity = config.getScaledMaximumFlingVelocity();
        this.mIsRtl = isRtl;
    }

    public static long calculateDuration(float velocity, float progressNeeded) {
        float fMax = Math.max(2.0f, Math.abs(velocity * 0.5f));
        return (long) Math.max(100.0f, (ANIMATION_DURATION / fMax) * Math.max(0.2f, progressNeeded));
    }

    public int getDownX() {
        return (int) this.mDownPos.x;
    }

    public int getDownY() {
        return (int) this.mDownPos.y;
    }

    public boolean isIdleState() {
        return this.mState == ScrollState.IDLE;
    }

    public boolean isSettlingState() {
        return this.mState == ScrollState.SETTLING;
    }

    public boolean isDraggingState() {
        return this.mState == ScrollState.DRAGGING;
    }

    public boolean isDraggingOrSettling() {
        return this.mState == ScrollState.DRAGGING || this.mState == ScrollState.SETTLING;
    }

    public void finishedScrolling() {
        m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(ScrollState.IDLE);
    }

    public boolean isFling(float velocity) {
        return Math.abs(velocity) > 1.0f;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00da  */
    public boolean onTouchEvent(MotionEvent ev) {
        VelocityTracker velocityTracker;
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.mVelocityTracker) != null) {
            velocityTracker.clear();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        if (actionMasked == 0) {
            this.mActivePointerId = ev.getPointerId(0);
            this.mDownPos.set(ev.getX(), ev.getY());
            this.mLastPos.set(this.mDownPos);
            this.mLastDisplacement.set(0.0f, 0.0f);
            this.mDisplacement.set(0.0f, 0.0f);
            if (this.mState == ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
                m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(ScrollState.DRAGGING);
            }
        } else if (actionMasked == 1) {
            if (this.mState == ScrollState.DRAGGING) {
                m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(ScrollState.SETTLING);
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        } else if (actionMasked == 2) {
            int iFindPointerIndex = ev.findPointerIndex(this.mActivePointerId);
            if (iFindPointerIndex != -1) {
                this.mDisplacement.set(ev.getX(iFindPointerIndex) - this.mDownPos.x, ev.getY(iFindPointerIndex) - this.mDownPos.y);
                if (this.mIsRtl) {
                    PointF pointF = this.mDisplacement;
                    pointF.x = -pointF.x;
                }
                if (this.mState != ScrollState.DRAGGING && shouldScrollStart(this.mDisplacement)) {
                    m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(ScrollState.DRAGGING);
                }
                if (TestProtocol.sDebugTracing) {
                    Log.d(TestProtocol.PAUSE_NOT_DETECTED, "before report dragging");
                }
                if (this.mState == ScrollState.DRAGGING) {
                    reportDragging(ev);
                }
                this.mLastPos.set(ev.getX(iFindPointerIndex), ev.getY(iFindPointerIndex));
            }
        } else if (actionMasked == 3) {
            if (this.mState == ScrollState.DRAGGING) {
                m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(ScrollState.SETTLING);
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        } else if (actionMasked == 6) {
            int actionIndex = ev.getActionIndex();
            if (ev.getPointerId(actionIndex) == this.mActivePointerId) {
                int i = actionIndex == 0 ? 1 : 0;
                this.mDownPos.set(ev.getX(i) - (this.mLastPos.x - this.mDownPos.x), ev.getY(i) - (this.mLastPos.y - this.mDownPos.y));
                this.mLastPos.set(ev.getX(i), ev.getY(i));
                this.mActivePointerId = ev.getPointerId(i);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setState, reason: merged with bridge method [inline-methods] */
    public void m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(final ScrollState newState) {
        if (this.mIsSettingState) {
            this.mSetStateQueue.add(new Runnable() { // from class: com.android.launcher3.touch.BaseSwipeDetector$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m157lambda$setState$0$comandroidlauncher3touchBaseSwipeDetector(newState);
                }
            });
            return;
        }
        this.mIsSettingState = true;
        if (newState == ScrollState.DRAGGING) {
            initializeDragging();
            if (this.mState == ScrollState.IDLE) {
                reportDragStart(false);
            } else if (this.mState == ScrollState.SETTLING) {
                reportDragStart(true);
            }
        }
        if (newState == ScrollState.SETTLING) {
            reportDragEnd();
        }
        this.mState = newState;
        this.mIsSettingState = false;
        if (this.mSetStateQueue.isEmpty()) {
            return;
        }
        this.mSetStateQueue.remove().run();
    }

    private void initializeDragging() {
        if (this.mState == ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
            this.mSubtractDisplacement.set(0.0f, 0.0f);
            return;
        }
        this.mSubtractDisplacement.x = this.mDisplacement.x > 0.0f ? this.mTouchSlop : -this.mTouchSlop;
        PointF pointF = this.mSubtractDisplacement;
        float f = this.mDisplacement.y;
        float f2 = this.mTouchSlop;
        if (f <= 0.0f) {
            f2 = -f2;
        }
        pointF.y = f2;
    }

    private void reportDragStart(boolean recatch) {
        reportDragStartInternal(recatch);
    }

    private void reportDragging(MotionEvent event) {
        PointF pointF = this.mDisplacement;
        PointF pointF2 = this.mLastDisplacement;
        if (pointF != pointF2) {
            pointF2.set(pointF);
            PointF pointF3 = sTempPoint;
            pointF3.set(this.mDisplacement.x - this.mSubtractDisplacement.x, this.mDisplacement.y - this.mSubtractDisplacement.y);
            reportDraggingInternal(pointF3, event);
        }
    }

    private void reportDragEnd() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        PointF pointF = new PointF(this.mVelocityTracker.getXVelocity() / 1000.0f, this.mVelocityTracker.getYVelocity() / 1000.0f);
        if (this.mIsRtl) {
            pointF.x = -pointF.x;
        }
        reportDragEndInternal(pointF);
    }
}
