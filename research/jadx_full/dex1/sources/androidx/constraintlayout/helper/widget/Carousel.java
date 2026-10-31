package androidx.constraintlayout.helper.widget;

import a4.g;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene$Transition;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.ConstraintSet$Constraint;
import androidx.constraintlayout.widget.R$styleable;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Carousel extends MotionHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "Carousel";
    public static final int TOUCH_UP_CARRY_ON = 2;
    public static final int TOUCH_UP_IMMEDIATE_STOP = 1;
    private Carousel$Adapter mAdapter;
    private int mAnimateTargetDelay;
    private int mBackwardTransition;
    private float mDampening;
    private int mEmptyViewBehavior;
    private int mFirstViewReference;
    private int mForwardTransition;
    private int mIndex;
    private boolean mInfiniteCarousel;
    int mLastStartId;
    private final ArrayList<View> mList;
    private MotionLayout mMotionLayout;
    private int mNextState;
    private int mPreviousIndex;
    private int mPreviousState;
    private int mStartIndex;
    private int mTargetIndex;
    private int mTouchUpMode;
    Runnable mUpdateRunnable;
    private float mVelocityThreshold;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Carousel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAdapter = null;
        this.mList = new ArrayList<>();
        this.mPreviousIndex = 0;
        this.mIndex = 0;
        this.mFirstViewReference = -1;
        this.mInfiniteCarousel = false;
        this.mBackwardTransition = -1;
        this.mForwardTransition = -1;
        this.mPreviousState = -1;
        this.mNextState = -1;
        this.mDampening = 0.9f;
        this.mStartIndex = 0;
        this.mEmptyViewBehavior = 4;
        this.mTouchUpMode = 1;
        this.mVelocityThreshold = 2.0f;
        this.mTargetIndex = -1;
        this.mAnimateTargetDelay = ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.mLastStartId = -1;
        this.mUpdateRunnable = new Carousel$1(this);
        init(context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Carousel carousel) {
        carousel.lambda$updateItems$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MotionLayout access$000(Carousel carousel) {
        return carousel.mMotionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$100(Carousel carousel) {
        carousel.updateItems();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(Carousel carousel) {
        return carousel.mIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Carousel$Adapter access$300(Carousel carousel) {
        return carousel.mAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$400(Carousel carousel) {
        return carousel.mTouchUpMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$500(Carousel carousel) {
        return carousel.mVelocityThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$600(Carousel carousel) {
        return carousel.mDampening;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$700(Carousel carousel) {
        return carousel.mPreviousIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void enableAllTransitions(boolean z8) {
        ArrayList<MotionScene$Transition> definedTransitions = this.mMotionLayout.getDefinedTransitions();
        int size = definedTransitions.size();
        int i9 = 0;
        while (i9 < size) {
            MotionScene$Transition motionScene$Transition = definedTransitions.get(i9);
            i9++;
            motionScene$Transition.setEnabled(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean enableTransition(int i9, boolean z8) {
        MotionLayout motionLayout;
        MotionScene$Transition transition;
        if (i9 == -1 || (motionLayout = this.mMotionLayout) == null || (transition = motionLayout.getTransition(i9)) == null || z8 == transition.isEnabled()) {
            return false;
        }
        transition.setEnabled(z8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i9);
                if (index == R$styleable.Carousel_carousel_firstView) {
                    this.mFirstViewReference = typedArrayObtainStyledAttributes.getResourceId(index, this.mFirstViewReference);
                } else if (index == R$styleable.Carousel_carousel_backwardTransition) {
                    this.mBackwardTransition = typedArrayObtainStyledAttributes.getResourceId(index, this.mBackwardTransition);
                } else if (index == R$styleable.Carousel_carousel_forwardTransition) {
                    this.mForwardTransition = typedArrayObtainStyledAttributes.getResourceId(index, this.mForwardTransition);
                } else if (index == R$styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.mEmptyViewBehavior = typedArrayObtainStyledAttributes.getInt(index, this.mEmptyViewBehavior);
                } else if (index == R$styleable.Carousel_carousel_previousState) {
                    this.mPreviousState = typedArrayObtainStyledAttributes.getResourceId(index, this.mPreviousState);
                } else if (index == R$styleable.Carousel_carousel_nextState) {
                    this.mNextState = typedArrayObtainStyledAttributes.getResourceId(index, this.mNextState);
                } else if (index == R$styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.mDampening = typedArrayObtainStyledAttributes.getFloat(index, this.mDampening);
                } else if (index == R$styleable.Carousel_carousel_touchUpMode) {
                    this.mTouchUpMode = typedArrayObtainStyledAttributes.getInt(index, this.mTouchUpMode);
                } else if (index == R$styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.mVelocityThreshold = typedArrayObtainStyledAttributes.getFloat(index, this.mVelocityThreshold);
                } else if (index == R$styleable.Carousel_carousel_infinite) {
                    this.mInfiniteCarousel = typedArrayObtainStyledAttributes.getBoolean(index, this.mInfiniteCarousel);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$updateItems$0() {
        this.mMotionLayout.setTransitionDuration(this.mAnimateTargetDelay);
        int i9 = this.mTargetIndex;
        int i10 = this.mIndex;
        MotionLayout motionLayout = this.mMotionLayout;
        if (i9 < i10) {
            motionLayout.transitionToState(this.mPreviousState, this.mAnimateTargetDelay);
        } else {
            motionLayout.transitionToState(this.mNextState, this.mAnimateTargetDelay);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateItems() {
        Carousel$Adapter carousel$Adapter = this.mAdapter;
        if (carousel$Adapter == null || this.mMotionLayout == null || carousel$Adapter.count() == 0) {
            return;
        }
        int size = this.mList.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = this.mList.get(i9);
            int iCount = (this.mIndex + i9) - this.mStartIndex;
            if (this.mInfiniteCarousel) {
                if (iCount < 0) {
                    int i10 = this.mEmptyViewBehavior;
                    if (i10 != 4) {
                        updateViewVisibility(view, i10);
                    } else {
                        updateViewVisibility(view, 0);
                    }
                    int iCount2 = iCount % this.mAdapter.count();
                    Carousel$Adapter carousel$Adapter2 = this.mAdapter;
                    if (iCount2 == 0) {
                        carousel$Adapter2.populate(view, 0);
                    } else {
                        carousel$Adapter2.populate(view, (iCount % this.mAdapter.count()) + carousel$Adapter2.count());
                    }
                } else if (iCount >= this.mAdapter.count()) {
                    if (iCount == this.mAdapter.count()) {
                        iCount = 0;
                    } else if (iCount > this.mAdapter.count()) {
                        iCount %= this.mAdapter.count();
                    }
                    int i11 = this.mEmptyViewBehavior;
                    if (i11 != 4) {
                        updateViewVisibility(view, i11);
                    } else {
                        updateViewVisibility(view, 0);
                    }
                    this.mAdapter.populate(view, iCount);
                } else {
                    updateViewVisibility(view, 0);
                    this.mAdapter.populate(view, iCount);
                }
            } else if (iCount < 0) {
                updateViewVisibility(view, this.mEmptyViewBehavior);
            } else if (iCount >= this.mAdapter.count()) {
                updateViewVisibility(view, this.mEmptyViewBehavior);
            } else {
                updateViewVisibility(view, 0);
                this.mAdapter.populate(view, iCount);
            }
        }
        int i12 = this.mTargetIndex;
        if (i12 != -1 && i12 != this.mIndex) {
            this.mMotionLayout.post(new g(1, this));
        } else if (i12 == this.mIndex) {
            this.mTargetIndex = -1;
        }
        if (this.mBackwardTransition == -1 || this.mForwardTransition == -1) {
            Log.w(TAG, "No backward or forward transitions defined for Carousel!");
            return;
        }
        if (this.mInfiniteCarousel) {
            return;
        }
        int iCount3 = this.mAdapter.count();
        int i13 = this.mIndex;
        int i14 = this.mBackwardTransition;
        if (i13 == 0) {
            enableTransition(i14, false);
        } else {
            enableTransition(i14, true);
            this.mMotionLayout.setTransition(this.mBackwardTransition);
        }
        int i15 = this.mIndex;
        int i16 = iCount3 - 1;
        int i17 = this.mForwardTransition;
        if (i15 == i16) {
            enableTransition(i17, false);
        } else {
            enableTransition(i17, true);
            this.mMotionLayout.setTransition(this.mForwardTransition);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean updateViewVisibility(int i9, View view, int i10) {
        ConstraintSet$Constraint constraint;
        ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(i9);
        if (constraintSet == null || (constraint = constraintSet.getConstraint(view.getId())) == null) {
            return false;
        }
        constraint.propertySet.mVisibilityMode = 1;
        view.setVisibility(i10);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCount() {
        Carousel$Adapter carousel$Adapter = this.mAdapter;
        if (carousel$Adapter != null) {
            return carousel$Adapter.count();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurrentIndex() {
        return this.mIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInfinite() {
        return this.mInfiniteCarousel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void jumpToIndex(int i9) {
        this.mIndex = Math.max(0, Math.min(getCount() - 1, i9));
        refresh();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            this.mList.clear();
            for (int i9 = 0; i9 < this.mCount; i9++) {
                int i10 = this.mIds[i9];
                View viewById = motionLayout.getViewById(i10);
                if (this.mFirstViewReference == i10) {
                    this.mStartIndex = i9;
                }
                this.mList.add(viewById);
            }
            this.mMotionLayout = motionLayout;
            if (this.mTouchUpMode == 2) {
                MotionScene$Transition transition = motionLayout.getTransition(this.mForwardTransition);
                if (transition != null) {
                    transition.setOnTouchUp(5);
                }
                MotionScene$Transition transition2 = this.mMotionLayout.getTransition(this.mBackwardTransition);
                if (transition2 != null) {
                    transition2.setOnTouchUp(5);
                }
            }
            updateItems();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mList.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout$TransitionListener
    public void onTransitionChange(MotionLayout motionLayout, int i9, int i10, float f8) {
        this.mLastStartId = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout$TransitionListener
    public void onTransitionCompleted(MotionLayout motionLayout, int i9) {
        int i10 = this.mIndex;
        this.mPreviousIndex = i10;
        if (i9 == this.mNextState) {
            this.mIndex = i10 + 1;
        } else if (i9 == this.mPreviousState) {
            this.mIndex = i10 - 1;
        }
        boolean z8 = this.mInfiniteCarousel;
        int i11 = this.mIndex;
        if (z8) {
            if (i11 >= this.mAdapter.count()) {
                this.mIndex = 0;
            }
            if (this.mIndex < 0) {
                this.mIndex = this.mAdapter.count() - 1;
            }
        } else {
            if (i11 >= this.mAdapter.count()) {
                this.mIndex = this.mAdapter.count() - 1;
            }
            if (this.mIndex < 0) {
                this.mIndex = 0;
            }
        }
        if (this.mPreviousIndex != this.mIndex) {
            this.mMotionLayout.post(this.mUpdateRunnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void refresh() {
        int size = this.mList.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = this.mList.get(i9);
            if (this.mAdapter.count() == 0) {
                updateViewVisibility(view, this.mEmptyViewBehavior);
            } else {
                updateViewVisibility(view, 0);
            }
        }
        this.mMotionLayout.rebuildScene();
        updateItems();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAdapter(Carousel$Adapter carousel$Adapter) {
        this.mAdapter = carousel$Adapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInfinite(boolean z8) {
        this.mInfiniteCarousel = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void transitionToIndex(int i9, int i10) {
        this.mTargetIndex = Math.max(0, Math.min(getCount() - 1, i9));
        int iMax = Math.max(0, i10);
        this.mAnimateTargetDelay = iMax;
        this.mMotionLayout.setTransitionDuration(iMax);
        int i11 = this.mIndex;
        MotionLayout motionLayout = this.mMotionLayout;
        if (i9 < i11) {
            motionLayout.transitionToState(this.mPreviousState, this.mAnimateTargetDelay);
        } else {
            motionLayout.transitionToState(this.mNextState, this.mAnimateTargetDelay);
        }
    }

    private boolean updateViewVisibility(View view, int i9) {
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout == null) {
            return false;
        }
        boolean zUpdateViewVisibility = false;
        for (int i10 : motionLayout.getConstraintSetIds()) {
            zUpdateViewVisibility |= updateViewVisibility(i10, view, i9);
        }
        return zUpdateViewVisibility;
    }

    public Carousel(Context context) {
        super(context);
        this.mAdapter = null;
        this.mList = new ArrayList<>();
        this.mPreviousIndex = 0;
        this.mIndex = 0;
        this.mFirstViewReference = -1;
        this.mInfiniteCarousel = false;
        this.mBackwardTransition = -1;
        this.mForwardTransition = -1;
        this.mPreviousState = -1;
        this.mNextState = -1;
        this.mDampening = 0.9f;
        this.mStartIndex = 0;
        this.mEmptyViewBehavior = 4;
        this.mTouchUpMode = 1;
        this.mVelocityThreshold = 2.0f;
        this.mTargetIndex = -1;
        this.mAnimateTargetDelay = ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.mLastStartId = -1;
        this.mUpdateRunnable = new Carousel$1(this);
    }

    public Carousel(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mAdapter = null;
        this.mList = new ArrayList<>();
        this.mPreviousIndex = 0;
        this.mIndex = 0;
        this.mFirstViewReference = -1;
        this.mInfiniteCarousel = false;
        this.mBackwardTransition = -1;
        this.mForwardTransition = -1;
        this.mPreviousState = -1;
        this.mNextState = -1;
        this.mDampening = 0.9f;
        this.mStartIndex = 0;
        this.mEmptyViewBehavior = 4;
        this.mTouchUpMode = 1;
        this.mVelocityThreshold = 2.0f;
        this.mTargetIndex = -1;
        this.mAnimateTargetDelay = ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.mLastStartId = -1;
        this.mUpdateRunnable = new Carousel$1(this);
        init(context, attributeSet);
    }
}
