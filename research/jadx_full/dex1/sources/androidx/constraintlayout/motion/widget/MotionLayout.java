package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private MotionLayout$DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    MotionLayout$DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    boolean mFirstDown;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    private float mLastPos;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mLastY;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    MotionLayout$Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private MotionLayout$StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private MotionLayout$TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<MotionLayout$TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    MotionLayout$TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new MotionLayout$DecelerateInterpolator(this);
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = MotionLayout$TransitionState.UNDEFINED;
        this.mModel = new MotionLayout$Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MotionLayout$StateCache access$000(MotionLayout motionLayout) {
        return motionLayout.mStateCache;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(MotionLayout motionLayout) {
        return motionLayout.mEndState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1000(MotionLayout motionLayout, ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        motionLayout.resolveSystem(constraintWidgetContainer, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1100(MotionLayout motionLayout, boolean z8, View view, ConstraintWidget constraintWidget, ConstraintLayout$LayoutParams constraintLayout$LayoutParams, SparseArray sparseArray) {
        motionLayout.applyConstraintsFromLayoutParams(z8, view, constraintWidget, constraintLayout$LayoutParams, sparseArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1200(MotionLayout motionLayout) {
        return motionLayout.mLastWidthMeasureSpec;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1300(MotionLayout motionLayout) {
        return motionLayout.mLastHeightMeasureSpec;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1400(MotionLayout motionLayout) {
        motionLayout.setupMotionViews();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1500(MotionLayout motionLayout, int i9, int i10, int i11, int i12, boolean z8, boolean z9) {
        motionLayout.resolveMeasuredDimension(i9, i10, i11, i12, z8, z9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1600(MotionLayout motionLayout, ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        motionLayout.resolveSystem(constraintWidgetContainer, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1700(MotionLayout motionLayout, ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        motionLayout.resolveSystem(constraintWidgetContainer, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1800(MotionLayout motionLayout, ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        motionLayout.resolveSystem(constraintWidgetContainer, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1900(MotionLayout motionLayout, ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        motionLayout.resolveSystem(constraintWidgetContainer, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(MotionLayout motionLayout) {
        return motionLayout.mBeginState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Rect access$2000(MotionLayout motionLayout, ConstraintWidget constraintWidget) {
        return motionLayout.toRect(constraintWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$2100(MotionLayout motionLayout) {
        return motionLayout.mPreRotateWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$2200(MotionLayout motionLayout) {
        return motionLayout.mPreRotateHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$300(MotionLayout motionLayout) {
        return motionLayout.mInRotation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$302(MotionLayout motionLayout, boolean z8) {
        motionLayout.mInRotation = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidgetContainer access$400(MotionLayout motionLayout) {
        return motionLayout.mLayoutWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidgetContainer access$500(MotionLayout motionLayout) {
        return motionLayout.mLayoutWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidgetContainer access$600(MotionLayout motionLayout) {
        return motionLayout.mLayoutWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidgetContainer access$700(MotionLayout motionLayout) {
        return motionLayout.mLayoutWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$800(MotionLayout motionLayout) {
        return motionLayout.isRtl();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$900(MotionLayout motionLayout) {
        return motionLayout.isRtl();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean callTransformedTouchEvent(View view, MotionEvent motionEvent, float f8, float f9) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f8, f9);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f8, -f9);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f8, f9);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        motionEventObtain.transform(this.mInverseMatrix);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        ArrayList<MotionScene$Transition> definedTransitions = this.mScene.getDefinedTransitions();
        int size = definedTransitions.size();
        int i9 = 0;
        while (i9 < size) {
            MotionScene$Transition motionScene$Transition = definedTransitions.get(i9);
            i9++;
            MotionScene$Transition motionScene$Transition2 = motionScene$Transition;
            if (motionScene$Transition2 == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            checkStructure(motionScene$Transition2);
            int startConstraintSetId = motionScene$Transition2.getStartConstraintSetId();
            int endConstraintSetId = motionScene$Transition2.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                Log.e(TAG, "CHECK: two transitions with the same start and end " + name + "->" + name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                Log.e(TAG, "CHECK: you can't have reverse transitions" + name + "->" + name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetStart " + name);
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetEnd " + name);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void debugPos() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            Log.v(TAG, " " + Debug.getLocation() + " " + Debug.getName(this) + " " + Debug.getName(getContext(), this.mCurrentState) + " " + Debug.getName(childAt) + childAt.getLeft() + " " + childAt.getTop());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void evaluateLayout() {
        boolean z8;
        float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            interpolation = this.mTransitionGoalPosition;
        }
        if ((fSignum <= 0.0f || interpolation < this.mTransitionGoalPosition) && (fSignum > 0.0f || interpolation > this.mTransitionGoalPosition)) {
            z8 = false;
        } else {
            interpolation = this.mTransitionGoalPosition;
            z8 = true;
        }
        if (interpolator != null && !z8) {
            interpolation = this.mTemporalInterpolator ? interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && interpolation <= this.mTransitionGoalPosition)) {
            interpolation = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        float f8 = interpolation;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, f8, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fireTransitionChange() {
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            fireTransitionStarted();
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f8 = this.mTransitionPosition;
        this.mListenerPosition = f8;
        MotionLayout$TransitionListener motionLayout$TransitionListener = this.mTransitionListener;
        if (motionLayout$TransitionListener != null) {
            motionLayout$TransitionListener.onTransitionChange(this, this.mBeginState, this.mEndState, f8);
        }
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
        if (copyOnWriteArrayList2 != null) {
            Iterator<MotionLayout$TransitionListener> it = copyOnWriteArrayList2.iterator();
            while (it.hasNext()) {
                it.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fireTransitionStarted() {
        MotionLayout$TransitionListener motionLayout$TransitionListener = this.mTransitionListener;
        if (motionLayout$TransitionListener != null) {
            motionLayout$TransitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
        }
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<MotionLayout$TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean handlesTouchEvent(float f8, float f9, View view, MotionEvent motionEvent) {
        boolean z8;
        if (!(view instanceof ViewGroup)) {
            z8 = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z8 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (handlesTouchEvent((childAt.getLeft() + f8) - view.getScrollX(), (childAt.getTop() + f9) - view.getScrollY(), childAt, motionEvent)) {
                z8 = true;
                break;
            }
            childCount--;
        }
        if (!z8) {
            this.mBoundsCheck.set(f8, f9, (view.getRight() + f8) - view.getLeft(), (view.getBottom() + f9) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY())) && callTransformedTouchEvent(view, motionEvent, -f8, -f9)) {
                return true;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void init(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z8 = true;
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i9);
                if (index == R$styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R$styleable.MotionLayout_currentState) {
                    this.mCurrentState = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R$styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == R$styleable.MotionLayout_applyMotionScene) {
                    z8 = typedArrayObtainStyledAttributes.getBoolean(index, z8);
                } else if (index == R$styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        this.mDebugPath = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R$styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z8) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            checkStructure();
        }
        if (this.mCurrentState != -1 || (motionScene = this.mScene) == null) {
            return;
        }
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void processTransitionCompleted() {
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        int i9 = 0;
        this.mIsAnimating = false;
        ArrayList<Integer> arrayList = this.mTransitionCompleted;
        int size = arrayList.size();
        while (i9 < size) {
            Integer num = arrayList.get(i9);
            i9++;
            Integer num2 = num;
            MotionLayout$TransitionListener motionLayout$TransitionListener = this.mTransitionListener;
            if (motionLayout$TransitionListener != null) {
                motionLayout$TransitionListener.onTransitionCompleted(this, num2.intValue());
            }
            CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<MotionLayout$TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionCompleted(this, num2.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupMotionViews() {
        int childCount = getChildCount();
        this.mModel.build();
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iGatPathMotionArc = this.mScene.gatPathMotionArc();
        if (iGatPathMotionArc != -1) {
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i11));
                if (motionController != null) {
                    motionController.setPathMotionArc(iGatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i13));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i12] = motionController2.getAnimateRelativeTo();
                i12++;
            }
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i14 = 0; i14 < i12; i14++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i14]));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                }
            }
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            int size = arrayList.size();
            int i15 = 0;
            while (i15 < size) {
                MotionHelper motionHelper = arrayList.get(i15);
                i15++;
                motionHelper.onPreSetup(this, this.mFrameArrayList);
            }
            for (int i16 = 0; i16 < i12; i16++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i16]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i17 = 0; i17 < i12; i17++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i17]));
                if (motionController5 != null) {
                    this.mScene.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z8 = ((double) staggered) < 0.0d;
            float fAbs = Math.abs(staggered);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i19));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    for (int i20 = 0; i20 < childCount; i20++) {
                        MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i20));
                        if (!Float.isNaN(motionController8.mMotionStagger)) {
                            fMin = Math.min(fMin, motionController8.mMotionStagger);
                            fMax = Math.max(fMax, motionController8.mMotionStagger);
                        }
                    }
                    while (i9 < childCount) {
                        MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i9));
                        if (!Float.isNaN(motionController9.mMotionStagger)) {
                            motionController9.mStaggerScale = 1.0f / (1.0f - fAbs);
                            float f8 = motionController9.mMotionStagger;
                            if (z8) {
                                motionController9.mStaggerOffset = fAbs - (((fMax - f8) / (fMax - fMin)) * fAbs);
                            } else {
                                motionController9.mStaggerOffset = fAbs - (((f8 - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i9++;
                    }
                    return;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f9 = z8 ? finalY - finalX : finalY + finalX;
                fMin2 = Math.min(fMin2, f9);
                fMax2 = Math.max(fMax2, f9);
            }
            while (i9 < childCount) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i9));
                float finalX2 = motionController10.getFinalX();
                float finalY2 = motionController10.getFinalY();
                float f10 = z8 ? finalY2 - finalX2 : finalY2 + finalX2;
                motionController10.mStaggerScale = 1.0f / (1.0f - fAbs);
                motionController10.mStaggerOffset = fAbs - (((f10 - fMin2) * fAbs) / (fMax2 - fMin2));
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Rect toRect(ConstraintWidget constraintWidget) {
        this.mTempRect.top = constraintWidget.getY();
        this.mTempRect.left = constraintWidget.getX();
        Rect rect = this.mTempRect;
        int width = constraintWidget.getWidth();
        Rect rect2 = this.mTempRect;
        rect.right = width + rect2.left;
        int height = constraintWidget.getHeight();
        Rect rect3 = this.mTempRect;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean willJump(float f8, float f9, float f10) {
        if (f8 > 0.0f) {
            float f11 = f8 / f10;
            return ((f8 * f11) - (((f10 * f11) * f11) / 2.0f)) + f9 > 1.0f;
        }
        float f12 = (-f8) / f10;
        return ((((f10 * f12) * f12) / 2.0f) + (f8 * f12)) + f9 < 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTransitionListener(MotionLayout$TransitionListener motionLayout$TransitionListener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new CopyOnWriteArrayList<>();
        }
        this.mTransitionListeners.add(motionLayout$TransitionListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateTo(float f8) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f9 = this.mTransitionLastPosition;
        float f10 = this.mTransitionPosition;
        if (f9 != f10 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f10;
        }
        float f11 = this.mTransitionLastPosition;
        if (f11 == f8) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = f8;
        this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = null;
        this.mProgressInterpolator = this.mScene.getInterpolator();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f11;
        this.mTransitionLastPosition = f11;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean applyViewTransition(int i9, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.applyViewTransition(i9, motionController);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet cloneConstraintSet(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet constraintSet = motionScene.getConstraintSet(i9);
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(constraintSet);
        return constraintSet2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disableAutoTransition(boolean z8) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        int i9 = 0;
        if (arrayList != null) {
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                MotionHelper motionHelper = arrayList.get(i10);
                i10++;
                motionHelper.onPreDraw(canvas);
            }
        }
        evaluate(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (viewTransitionController = motionScene.mViewTransitionController) != null) {
            viewTransitionController.animate();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j9 = this.mLastDrawTime;
            if (j9 != -1) {
                long j10 = nanoTime - j9;
                if (j10 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (j10 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            StringBuilder sbU = a.u(this.mLastFps + " fps " + Debug.getState(this, this.mBeginState) + " -> ");
            sbU.append(Debug.getState(this, this.mEndState));
            sbU.append(" (progress: ");
            sbU.append(progress);
            sbU.append(" ) state=");
            int i11 = this.mCurrentState;
            sbU.append(i11 == -1 ? "undefined" : Debug.getState(this, i11));
            String string = sbU.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new MotionLayout$DevModeDraw(this);
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            while (i9 < size2) {
                MotionHelper motionHelper2 = arrayList2.get(i9);
                i9++;
                motionHelper2.onPostDraw(canvas);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enableTransition(int i9, boolean z8) {
        MotionScene$Transition transition = getTransition(i9);
        if (z8) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (transition == motionScene.mCurrentTransition) {
            for (MotionScene$Transition motionScene$Transition : motionScene.getTransitionsWithState(this.mCurrentState)) {
                if (motionScene$Transition.isEnabled()) {
                    this.mScene.mCurrentTransition = motionScene$Transition;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enableViewTransition(int i9, boolean z8) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.enableViewTransition(i9, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endTrigger(boolean z8) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i9));
            if (motionController != null) {
                motionController.endTrigger(z8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:117:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:127:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:129:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:143:0x0219  */
    /* JADX WARN: Code duplicated, block: B:180:0x018d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e2 A[PHI: r3
  0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00ae, B:58:0x00d6, B:60:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x0136  */
    /* JADX WARN: Code duplicated, block: B:89:0x014d  */
    /* JADX WARN: Code duplicated, block: B:90:0x0150  */
    /* JADX WARN: Code duplicated, block: B:93:0x015a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0171  */
    /* JADX WARN: Code duplicated, block: B:98:0x0180  */
    public void evaluate(boolean z8) {
        boolean z9;
        char c;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i9;
        int i10;
        int i11;
        int i12;
        View childAt;
        MotionController motionController;
        boolean z10;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f8 = this.mTransitionLastPosition;
        if (f8 > 0.0f && f8 < 1.0f) {
            this.mCurrentState = -1;
        }
        boolean z11 = false;
        if (this.mKeepAnimating || (this.mInTransition && (z8 || this.mTransitionGoalPosition != f8))) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f8);
            long nanoTime2 = getNanoTime();
            Interpolator interpolator3 = this.mInterpolator;
            float f9 = !(interpolator3 instanceof MotionInterpolator) ? (((nanoTime2 - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f;
            float f10 = this.mTransitionLastPosition + f9;
            if (this.mTransitionInstantly) {
                f10 = this.mTransitionGoalPosition;
            }
            if ((fSignum <= 0.0f || f10 < this.mTransitionGoalPosition) && (fSignum > 0.0f || f10 > this.mTransitionGoalPosition)) {
                z9 = false;
            } else {
                f10 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z9 = true;
            }
            this.mTransitionLastPosition = f10;
            this.mTransitionPosition = f10;
            this.mTransitionLastTime = nanoTime2;
            if (interpolator3 == null || z9) {
                this.mLastVelocity = f9;
            } else {
                if (this.mTemporalInterpolator) {
                    float interpolation2 = interpolator3.getInterpolation((nanoTime2 - this.mAnimationStartTime) * 1.0E-9f);
                    Interpolator interpolator4 = this.mInterpolator;
                    StopLogic stopLogic = this.mStopLogic;
                    c = interpolator4 == stopLogic ? stopLogic.isStopped() ? (char) 2 : (char) 1 : (char) 0;
                    this.mTransitionLastPosition = interpolation2;
                    this.mTransitionLastTime = nanoTime2;
                    Interpolator interpolator5 = this.mInterpolator;
                    if (interpolator5 instanceof MotionInterpolator) {
                        float velocity = ((MotionInterpolator) interpolator5).getVelocity();
                        this.mLastVelocity = velocity;
                        if (Math.abs(velocity) * this.mTransitionDuration <= EPSILON && c == 2) {
                            this.mInTransition = false;
                        }
                        if (velocity > 0.0f && interpolation2 >= 1.0f) {
                            this.mTransitionLastPosition = 1.0f;
                            this.mInTransition = false;
                            interpolation2 = 1.0f;
                        }
                        if (velocity >= 0.0f || interpolation2 > 0.0f) {
                            f10 = interpolation2;
                        } else {
                            this.mTransitionLastPosition = 0.0f;
                            this.mInTransition = false;
                            f10 = 0.0f;
                        }
                    } else {
                        f10 = interpolation2;
                    }
                } else {
                    float interpolation3 = interpolator3.getInterpolation(f10);
                    Interpolator interpolator6 = this.mInterpolator;
                    if (interpolator6 instanceof MotionInterpolator) {
                        this.mLastVelocity = ((MotionInterpolator) interpolator6).getVelocity();
                    } else {
                        this.mLastVelocity = ((interpolator6.getInterpolation(f10 + f9) - interpolation3) * fSignum) / f9;
                    }
                    f10 = interpolation3;
                }
                if (Math.abs(this.mLastVelocity) > EPSILON) {
                    setState(MotionLayout$TransitionState.MOVING);
                }
                if (c != 1) {
                    if ((fSignum <= 0.0f && f10 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f10 <= this.mTransitionGoalPosition)) {
                        f10 = this.mTransitionGoalPosition;
                        this.mInTransition = false;
                    }
                    if (f10 < 1.0f || f10 <= 0.0f) {
                        this.mInTransition = false;
                        setState(MotionLayout$TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.mKeepAnimating = false;
                nanoTime = getNanoTime();
                this.mPostInterpolationPosition = f10;
                interpolator = this.mProgressInterpolator;
                if (interpolator == null) {
                    interpolation = f10;
                } else {
                    interpolation = interpolator.getInterpolation(f10);
                }
                interpolator2 = this.mProgressInterpolator;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f10);
                    this.mLastVelocity = interpolation4;
                    this.mLastVelocity = interpolation4 - this.mProgressInterpolator.getInterpolation(f10);
                }
                for (i9 = 0; i9 < childCount; i9++) {
                    childAt = getChildAt(i9);
                    motionController = this.mFrameArrayList.get(childAt);
                    if (motionController != null) {
                        this.mKeepAnimating |= motionController.interpolate(childAt, interpolation, nanoTime, this.mKeyCache);
                    }
                }
                boolean z12 = (fSignum <= 0.0f && f10 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f10 <= this.mTransitionGoalPosition);
                if (!this.mKeepAnimating && !this.mInTransition && z12) {
                    setState(MotionLayout$TransitionState.FINISHED);
                }
                if (this.mMeasureDuringTransition) {
                    requestLayout();
                }
                this.mKeepAnimating = (!z12) | this.mKeepAnimating;
                if (f10 <= 0.0f && (i12 = this.mBeginState) != -1 && this.mCurrentState != i12) {
                    this.mCurrentState = i12;
                    this.mScene.getConstraintSet(i12).applyCustomAttributes(this);
                    setState(MotionLayout$TransitionState.FINISHED);
                    z11 = true;
                }
                if (f10 >= 1.0d) {
                    i10 = this.mCurrentState;
                    i11 = this.mEndState;
                    if (i10 != i11) {
                        this.mCurrentState = i11;
                        this.mScene.getConstraintSet(i11).applyCustomAttributes(this);
                        setState(MotionLayout$TransitionState.FINISHED);
                        z11 = true;
                    }
                }
                if (!this.mKeepAnimating || this.mInTransition) {
                    invalidate();
                } else if ((fSignum > 0.0f && f10 == 1.0f) || (fSignum < 0.0f && f10 == 0.0f)) {
                    setState(MotionLayout$TransitionState.FINISHED);
                }
                if (!this.mKeepAnimating && !this.mInTransition && ((fSignum > 0.0f && f10 == 1.0f) || (fSignum < 0.0f && f10 == 0.0f))) {
                    onNewStateAttachHandlers();
                }
            }
            c = 0;
            if (Math.abs(this.mLastVelocity) > EPSILON) {
                setState(MotionLayout$TransitionState.MOVING);
            }
            if (c != 1) {
                if (fSignum <= 0.0f) {
                    f10 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                } else {
                    f10 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                }
                if (f10 < 1.0f) {
                    this.mInTransition = false;
                    setState(MotionLayout$TransitionState.FINISHED);
                } else {
                    this.mInTransition = false;
                    setState(MotionLayout$TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.mKeepAnimating = false;
            nanoTime = getNanoTime();
            this.mPostInterpolationPosition = f10;
            interpolator = this.mProgressInterpolator;
            if (interpolator == null) {
                interpolation = f10;
            } else {
                interpolation = interpolator.getInterpolation(f10);
            }
            interpolator2 = this.mProgressInterpolator;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f10);
                this.mLastVelocity = interpolation5;
                this.mLastVelocity = interpolation5 - this.mProgressInterpolator.getInterpolation(f10);
            }
            while (i9 < childCount) {
                childAt = getChildAt(i9);
                motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating |= motionController.interpolate(childAt, interpolation, nanoTime, this.mKeyCache);
                }
            }
            if (fSignum <= 0.0f) {
            }
            if (!this.mKeepAnimating) {
                setState(MotionLayout$TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.mKeepAnimating = (!z12) | this.mKeepAnimating;
            if (f10 <= 0.0f) {
                this.mCurrentState = i12;
                this.mScene.getConstraintSet(i12).applyCustomAttributes(this);
                setState(MotionLayout$TransitionState.FINISHED);
                z11 = true;
            }
            if (f10 >= 1.0d) {
                i10 = this.mCurrentState;
                i11 = this.mEndState;
                if (i10 != i11) {
                    this.mCurrentState = i11;
                    this.mScene.getConstraintSet(i11).applyCustomAttributes(this);
                    setState(MotionLayout$TransitionState.FINISHED);
                    z11 = true;
                }
            }
            if (this.mKeepAnimating) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.mKeepAnimating) {
                onNewStateAttachHandlers();
            }
        }
        float f11 = this.mTransitionLastPosition;
        if (f11 < 1.0f) {
            if (f11 <= 0.0f) {
                int i13 = this.mCurrentState;
                int i14 = this.mBeginState;
                z10 = i13 == i14 ? z11 : true;
                this.mCurrentState = i14;
            }
            this.mNeedsFireTransitionCompleted |= z11;
            if (z11 && !this.mInLayout) {
                requestLayout();
            }
            this.mTransitionPosition = this.mTransitionLastPosition;
        }
        int i15 = this.mCurrentState;
        int i16 = this.mEndState;
        z10 = i15 == i16 ? z11 : true;
        this.mCurrentState = i16;
        z11 = z10;
        this.mNeedsFireTransitionCompleted |= z11;
        if (z11) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireTransitionCompleted() {
        int iIntValue;
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                iIntValue = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i9 = this.mCurrentState;
            if (iIntValue != i9 && i9 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i9));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
            this.mOnComplete = null;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireTrigger(int i9, boolean z8, float f8) {
        MotionLayout$TransitionListener motionLayout$TransitionListener = this.mTransitionListener;
        if (motionLayout$TransitionListener != null) {
            motionLayout$TransitionListener.onTransitionTrigger(this, i9, z8, f8);
        }
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<MotionLayout$TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, i9, z8, f8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getAnchorDpDt(int i9, float f8, float f9, float f10, float[] fArr) {
        HashMap<View, MotionController> map = this.mFrameArrayList;
        View viewById = getViewById(i9);
        MotionController motionController = map.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(f8, f9, f10, fArr);
            float y8 = viewById.getY();
            this.mLastPos = f8;
            this.mLastY = y8;
            return;
        }
        Log.w(TAG, "WARNING could not find view id " + (viewById == null ? a.e(i9, "") : viewById.getContext().getResources().getResourceName(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet getConstraintSet(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IdRes
    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getConstraintSetNames(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurrentState() {
        return this.mCurrentState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<MotionScene$Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndState() {
        return this.mEndState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getMatchingConstraintSetIds(String... strArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getMatchingStateLabels(strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionController getMotionController(int i9) {
        return this.mFrameArrayList.get(findViewById(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNanoTime() {
        return System.nanoTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene getScene() {
        return this.mScene;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStartState() {
        return this.mBeginState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene$Transition getTransition(int i9) {
        return this.mScene.getTransitionById(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new MotionLayout$StateCache(this);
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getTransitionTimeMs() {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        }
        return (long) (this.mTransitionDuration * 1000.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVelocity() {
        return this.mLastVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getViewVelocity(View view, float f8, float f9, float[] fArr, int i9) {
        float interpolation;
        float[] fArr2;
        float velocity = this.mLastVelocity;
        float f10 = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f10);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            velocity = (((interpolation2 - interpolation) / EPSILON) * fSignum) / this.mTransitionDuration;
        } else {
            interpolation = f10;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            velocity = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((i9 & 1) == 0) {
            fArr2 = fArr;
            motionController.getPostLayoutDvDp(interpolation, view.getWidth(), view.getHeight(), f8, f9, fArr2);
        } else {
            fArr2 = fArr;
            motionController.getDpDt(interpolation, f8, f9, fArr2);
        }
        if (i9 < 2) {
            fArr2[0] = fArr2[0] * velocity;
            fArr2[1] = fArr2[1] * velocity;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDelayedApplicationOfInitialState() {
        return this.mDelayedApply;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInRotation() {
        return this.mInRotation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isViewTransitionEnabled(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(i9);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void jumpToState(int i9) {
        if (!isAttachedToWindow()) {
            this.mCurrentState = i9;
        }
        if (this.mBeginState == i9) {
            setProgress(0.0f);
        } else if (this.mEndState == i9) {
            setProgress(1.0f);
        } else {
            setTransition(i9, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i9) {
        MotionScene$Transition motionScene$Transition;
        if (i9 == 0) {
            this.mScene = null;
            return;
        }
        try {
            MotionScene motionScene = new MotionScene(getContext(), this, i9);
            this.mScene = motionScene;
            if (this.mCurrentState == -1) {
                this.mCurrentState = motionScene.getStartId();
                this.mBeginState = this.mScene.getStartId();
                this.mEndState = this.mScene.getEndId();
            }
            if (!isAttachedToWindow()) {
                this.mScene = null;
                return;
            }
            try {
                Display display = getDisplay();
                int i10 = 0;
                this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                MotionScene motionScene2 = this.mScene;
                if (motionScene2 != null) {
                    ConstraintSet constraintSet = motionScene2.getConstraintSet(this.mCurrentState);
                    this.mScene.readFallback(this);
                    ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                    if (arrayList != null) {
                        int size = arrayList.size();
                        while (i10 < size) {
                            MotionHelper motionHelper = arrayList.get(i10);
                            i10++;
                            motionHelper.onFinishedMotionScene(this);
                        }
                    }
                    if (constraintSet != null) {
                        constraintSet.applyTo(this);
                    }
                    this.mBeginState = this.mCurrentState;
                }
                onNewStateAttachHandlers();
                MotionLayout$StateCache motionLayout$StateCache = this.mStateCache;
                if (motionLayout$StateCache != null) {
                    if (this.mDelayedApply) {
                        post(new MotionLayout$1(this));
                        return;
                    } else {
                        motionLayout$StateCache.apply();
                        return;
                    }
                }
                MotionScene motionScene3 = this.mScene;
                if (motionScene3 == null || (motionScene$Transition = motionScene3.mCurrentTransition) == null || motionScene$Transition.getAutoTransition() != 4) {
                    return;
                }
                transitionToEnd();
                setState(MotionLayout$TransitionState.SETUP);
                setState(MotionLayout$TransitionState.MOVING);
            } catch (Exception e) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e);
            }
        } catch (Exception e6) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int lookUpConstraintId(String str) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout$MotionTracker obtainVelocityTracker() {
        return MotionLayout$MyTracker.obtain();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        MotionScene$Transition motionScene$Transition;
        int i9;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i9 = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i9);
            this.mScene.readFallback(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    MotionHelper motionHelper = arrayList.get(i10);
                    i10++;
                    motionHelper.onFinishedMotionScene(this);
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        MotionLayout$StateCache motionLayout$StateCache = this.mStateCache;
        if (motionLayout$StateCache != null) {
            if (this.mDelayedApply) {
                post(new MotionLayout$4(this));
                return;
            } else {
                motionLayout$StateCache.apply();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 == null || (motionScene$Transition = motionScene2.mCurrentTransition) == null || motionScene$Transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(MotionLayout$TransitionState.SETUP);
        setState(MotionLayout$TransitionState.MOVING);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null) {
                viewTransitionController.touchEvent(motionEvent);
            }
            MotionScene$Transition motionScene$Transition = this.mScene.mCurrentTransition;
            if (motionScene$Transition != null && motionScene$Transition.isEnabled() && (touchResponse = motionScene$Transition.getTouchResponse()) != null && ((motionEvent.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) && (touchRegionId = touchResponse.getTouchRegionId()) != -1)) {
                View view = this.mRegionView;
                if (view == null || view.getId() != touchRegionId) {
                    this.mRegionView = findViewById(touchRegionId);
                }
                View view2 = this.mRegionView;
                if (view2 != null) {
                    this.mBoundsCheck.set(view2.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                    if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && !handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) throws Throwable {
        MotionLayout motionLayout;
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z8, i9, i10, i11, i12);
                this.mInLayout = false;
                return;
            }
            motionLayout = this;
            int i13 = i11 - i9;
            int i14 = i12 - i10;
            try {
                if (motionLayout.mLastLayoutWidth != i13 || motionLayout.mLastLayoutHeight != i14) {
                    rebuildScene();
                    evaluate(true);
                }
                motionLayout.mLastLayoutWidth = i13;
                motionLayout.mLastLayoutHeight = i14;
                motionLayout.mOldWidth = i13;
                motionLayout.mOldHeight = i14;
                motionLayout.mInLayout = false;
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            motionLayout = this;
        }
        Throwable th3 = th;
        motionLayout.mInLayout = false;
        throw th3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        if (this.mScene == null) {
            super.onMeasure(i9, i10);
            return;
        }
        boolean z8 = false;
        boolean z9 = (this.mLastWidthMeasureSpec == i9 && this.mLastHeightMeasureSpec == i10) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z9 = true;
        }
        if (this.mDirtyHierarchy) {
            z9 = true;
        }
        this.mLastWidthMeasureSpec = i9;
        this.mLastHeightMeasureSpec = i10;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z9 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(i9, i10);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
        } else {
            if (z9) {
                super.onMeasure(i9, i10);
            }
            z8 = true;
        }
        if (this.mMeasureDuringTransition || z8) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int width = this.mLayoutWidget.getWidth() + getPaddingRight() + getPaddingLeft();
            int height = this.mLayoutWidget.getHeight() + paddingBottom;
            int i11 = this.mWidthMeasureMode;
            if (i11 == Integer.MIN_VALUE || i11 == 0) {
                int i12 = this.mStartWrapWidth;
                width = (int) ((this.mPostInterpolationPosition * (this.mEndWrapWidth - i12)) + i12);
                requestLayout();
            }
            int i13 = this.mHeightMeasureMode;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                int i14 = this.mStartWrapHeight;
                height = (int) ((this.mPostInterpolationPosition * (this.mEndWrapHeight - i14)) + i14);
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        evaluateLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f8, float f9, boolean z8) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f8, float f9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View view, int i9, int i10, @NonNull int[] iArr, int i11) {
        MotionScene$Transition motionScene$Transition;
        TouchResponse touchResponse;
        int touchRegionId;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (motionScene$Transition = motionScene.mCurrentTransition) == null || !motionScene$Transition.isEnabled()) {
            return;
        }
        int i12 = -1;
        if (!motionScene$Transition.isEnabled() || (touchResponse = motionScene$Transition.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || view.getId() == touchRegionId) {
            if (motionScene.getMoveWhenScrollAtTop()) {
                TouchResponse touchResponse2 = motionScene$Transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i12 = i10;
                }
                float f8 = this.mTransitionPosition;
                if ((f8 == 1.0f || f8 == 0.0f) && view.canScrollVertically(i12)) {
                    return;
                }
            }
            if (motionScene$Transition.getTouchResponse() != null && (motionScene$Transition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = motionScene.getProgressDirection(i9, i10);
                float f9 = this.mTransitionLastPosition;
                if ((f9 <= 0.0f && progressDirection < 0.0f) || (f9 >= 1.0f && progressDirection > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new MotionLayout$3(this, view));
                    return;
                }
            }
            float f10 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f11 = i9;
            this.mScrollTargetDX = f11;
            float f12 = i10;
            this.mScrollTargetDY = f12;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.processScrollMove(f11, f12);
            if (f10 != this.mTransitionPosition) {
                iArr[0] = i9;
                iArr[1] = i10;
            }
            evaluate(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
        if (this.mUndergoingMotion || i9 != 0 || i10 != 0) {
            iArr[0] = iArr[0] + i11;
            iArr[1] = iArr[1] + i12;
        }
        this.mUndergoingMotion = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9, int i10) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i9 = this.mCurrentState;
        if (i9 != -1) {
            this.mScene.addOnClickListeners(this, i9);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRtlPropertiesChanged(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i9, int i10) {
        MotionScene$Transition motionScene$Transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (motionScene$Transition = motionScene.mCurrentTransition) == null || motionScene$Transition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f8 = this.mScrollTargetDT;
            if (f8 == 0.0f) {
                return;
            }
            motionScene.processScrollUp(this.mScrollTargetDX / f8, this.mScrollTargetDY / f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled || !motionScene.supportTouch()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene$Transition motionScene$Transition = this.mScene.mCurrentTransition;
        if (motionScene$Transition != null && !motionScene$Transition.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        this.mScene.processTouchEvent(motionEvent, getCurrentState(), this);
        if (this.mScene.mCurrentTransition.isTransitionFlag(4)) {
            return this.mScene.mCurrentTransition.getTouchResponse().isDragStarted();
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int i9) {
        this.mConstraintLayoutSpec = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeTransitionListener(MotionLayout$TransitionListener motionLayout$TransitionListener) {
        CopyOnWriteArrayList<MotionLayout$TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(motionLayout$TransitionListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene$Transition motionScene$Transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (motionScene$Transition = motionScene.mCurrentTransition) != null) {
            int layoutDuringTransition = motionScene$Transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i9 = 0; i9 < childCount; i9++) {
                    this.mFrameArrayList.get(getChildAt(i9)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rotateTo(int i9, int i10) {
        this.mInRotation = true;
        this.mPreRotateWidth = getWidth();
        this.mPreRotateHeight = getHeight();
        int rotation = getDisplay().getRotation();
        this.mRotatMode = (rotation + 1) % 4 <= (this.mPreviouseRotation + 1) % 4 ? 2 : 1;
        this.mPreviouseRotation = rotation;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            ViewState viewState = this.mPreRotate.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.mPreRotate.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.mBeginState = -1;
        this.mEndState = i9;
        this.mScene.setTransition(-1, i9);
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(this.mEndState));
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        invalidate();
        transitionToEnd(new MotionLayout$2(this));
        if (i10 > 0) {
            this.mTransitionDuration = i10 / 1000.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scheduleTransitionTo(int i9) {
        if (getCurrentState() == -1) {
            transitionToState(i9);
            return;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null) {
            this.mScheduledTransitionTo = new int[4];
        } else if (iArr.length <= this.mScheduledTransitions) {
            this.mScheduledTransitionTo = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mScheduledTransitionTo;
        int i10 = this.mScheduledTransitions;
        this.mScheduledTransitions = i10 + 1;
        iArr2[i10] = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDebugMode(int i9) {
        this.mDebugPath = i9;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDelayedApplicationOfInitialState(boolean z8) {
        this.mDelayedApply = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInteractionEnabled(boolean z8) {
        this.mInteractionEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterpolatedProgress(float f8) {
        if (this.mScene != null) {
            setState(MotionLayout$TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f8));
                return;
            }
        }
        setProgress(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnHide(float f8) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mOnHideHelpers.get(i9).setProgress(f8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnShow(float f8) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mOnShowHelpers.get(i9).setProgress(f8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProgress(float f8) {
        if (f8 < 0.0f || f8 > 1.0f) {
            Log.w(TAG, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new MotionLayout$StateCache(this);
            }
            this.mStateCache.setProgress(f8);
            return;
        }
        if (f8 <= 0.0f) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(MotionLayout$TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(MotionLayout$TransitionState.FINISHED);
            }
        } else if (f8 >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(MotionLayout$TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(MotionLayout$TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(MotionLayout$TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = f8;
        this.mTransitionPosition = f8;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScene(MotionScene motionScene) {
        this.mScene = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartState(int i9) {
        if (isAttachedToWindow()) {
            this.mCurrentState = i9;
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new MotionLayout$StateCache(this);
        }
        this.mStateCache.setStartState(i9);
        this.mStateCache.setEndState(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setState(MotionLayout$TransitionState motionLayout$TransitionState) {
        MotionLayout$TransitionState motionLayout$TransitionState2 = MotionLayout$TransitionState.FINISHED;
        if (motionLayout$TransitionState == motionLayout$TransitionState2 && this.mCurrentState == -1) {
            return;
        }
        MotionLayout$TransitionState motionLayout$TransitionState3 = this.mTransitionState;
        this.mTransitionState = motionLayout$TransitionState;
        MotionLayout$TransitionState motionLayout$TransitionState4 = MotionLayout$TransitionState.MOVING;
        if (motionLayout$TransitionState3 == motionLayout$TransitionState4 && motionLayout$TransitionState == motionLayout$TransitionState4) {
            fireTransitionChange();
        }
        int iOrdinal = motionLayout$TransitionState3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && motionLayout$TransitionState == motionLayout$TransitionState2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (motionLayout$TransitionState == motionLayout$TransitionState4) {
            fireTransitionChange();
        }
        if (motionLayout$TransitionState == motionLayout$TransitionState2) {
            fireTransitionCompleted();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransition(int i9) {
        float f8;
        if (this.mScene != null) {
            MotionScene$Transition transition = getTransition(i9);
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new MotionLayout$StateCache(this);
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            int i10 = this.mCurrentState;
            if (i10 == this.mBeginState) {
                f8 = 0.0f;
            } else {
                f8 = i10 == this.mEndState ? 1.0f : Float.NaN;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f8) {
                if (f8 == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f8 == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f8) ? 0.0f : f8;
            if (!Float.isNaN(f8)) {
                setProgress(f8);
                return;
            }
            Log.v(TAG, Debug.getLocation() + " transitionToStart ");
            transitionToStart();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionDuration(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.setDuration(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionListener(MotionLayout$TransitionListener motionLayout$TransitionListener) {
        this.mTransitionListener = motionLayout$TransitionListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new MotionLayout$StateCache(this);
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.mBeginState) + "->" + Debug.getName(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c6  */
    public void touchAnimateTo(int i9, float f8, float f9) {
        float f10;
        int autoCompleteMode;
        StopLogic stopLogic;
        if (this.mScene == null || this.mTransitionLastPosition == f8) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f8;
        this.mInTransition = true;
        if (i9 == 0 || i9 == 1 || i9 == 2) {
            if (i9 != 1 || i9 == 7) {
                f10 = 0.0f;
            } else {
                if (i9 == 2 || i9 == 6) {
                    f8 = 1.0f;
                }
                f10 = f8;
            }
            autoCompleteMode = this.mScene.getAutoCompleteMode();
            stopLogic = this.mStopLogic;
            if (autoCompleteMode == 0) {
                stopLogic.config(this.mTransitionLastPosition, f10, f9, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
            } else {
                stopLogic.springConfig(this.mTransitionLastPosition, f10, f9, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
            }
            int i10 = this.mCurrentState;
            this.mTransitionGoalPosition = f10;
            this.mCurrentState = i10;
            this.mInterpolator = this.mStopLogic;
        } else if (i9 == 4) {
            this.mDecelerateLogic.config(f9, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
            this.mInterpolator = this.mDecelerateLogic;
        } else if (i9 != 5) {
            if (i9 == 6 || i9 == 7) {
                if (i9 != 1) {
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                }
                autoCompleteMode = this.mScene.getAutoCompleteMode();
                stopLogic = this.mStopLogic;
                if (autoCompleteMode == 0) {
                    stopLogic.config(this.mTransitionLastPosition, f10, f9, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
                } else {
                    stopLogic.springConfig(this.mTransitionLastPosition, f10, f9, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
                }
                int i11 = this.mCurrentState;
                this.mTransitionGoalPosition = f10;
                this.mCurrentState = i11;
                this.mInterpolator = this.mStopLogic;
            }
        } else if (willJump(f9, this.mTransitionLastPosition, this.mScene.getMaxAcceleration())) {
            this.mDecelerateLogic.config(f9, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
            this.mInterpolator = this.mDecelerateLogic;
        } else {
            this.mStopLogic.config(this.mTransitionLastPosition, f8, f9, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
            this.mLastVelocity = 0.0f;
            int i12 = this.mCurrentState;
            this.mTransitionGoalPosition = f8;
            this.mCurrentState = i12;
            this.mInterpolator = this.mStopLogic;
        }
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void touchSpringTo(float f8, float f9) {
        if (this.mScene == null || this.mTransitionLastPosition == f8) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f8;
        this.mInTransition = true;
        this.mStopLogic.springConfig(this.mTransitionLastPosition, f8, f9, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
        int i9 = this.mCurrentState;
        this.mTransitionGoalPosition = f8;
        this.mCurrentState = i9;
        this.mInterpolator = this.mStopLogic;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void transitionToStart(Runnable runnable) {
        animateTo(0.0f);
        this.mOnComplete = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void transitionToState(int i9, int i10, int i11, int i12) {
        StateSet stateSet;
        int iConvertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (iConvertToConstraintSet = stateSet.convertToConstraintSet(this.mCurrentState, i9, i10, i11)) != -1) {
            i9 = iConvertToConstraintSet;
        }
        int i13 = this.mCurrentState;
        if (i13 == i9) {
            return;
        }
        if (this.mBeginState == i9) {
            animateTo(0.0f);
            if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
                return;
            }
            return;
        }
        if (this.mEndState == i9) {
            animateTo(1.0f);
            if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
                return;
            }
            return;
        }
        this.mEndState = i9;
        if (i13 != -1) {
            setTransition(i13, i9);
            animateTo(1.0f);
            this.mTransitionLastPosition = 0.0f;
            transitionToEnd();
            if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
                return;
            }
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = getNanoTime();
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        if (i12 == -1) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        }
        this.mBeginState = -1;
        this.mScene.setTransition(-1, this.mEndState);
        SparseArray sparseArray = new SparseArray();
        if (i12 == 0) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        } else if (i12 > 0) {
            this.mTransitionDuration = i12 / 1000.0f;
        }
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        this.mInTransition = true;
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i9));
        rebuildScene();
        this.mModel.build();
        computeCurrentPositions();
        int width = getWidth();
        int height = getHeight();
        if (this.mDecoratorsHelpers != null) {
            for (int i15 = 0; i15 < childCount; i15++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i15));
                if (motionController != null) {
                    this.mScene.getKeyFrames(motionController);
                }
            }
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            int size = arrayList.size();
            int i16 = 0;
            while (i16 < size) {
                MotionHelper motionHelper = arrayList.get(i16);
                i16++;
                motionHelper.onPreSetup(this, this.mFrameArrayList);
            }
            for (int i17 = 0; i17 < childCount; i17++) {
                MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i17));
                if (motionController2 != null) {
                    motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i18 = 0; i18 < childCount; i18++) {
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i18));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                    motionController3.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i19));
                float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                fMin = Math.min(fMin, finalY);
                fMax = Math.max(fMax, finalY);
            }
            for (int i20 = 0; i20 < childCount; i20++) {
                MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i20));
                float finalX = motionController5.getFinalX();
                float finalY2 = motionController5.getFinalY();
                motionController5.mStaggerScale = 1.0f / (1.0f - staggered);
                motionController5.mStaggerOffset = staggered - ((((finalX + finalY2) - fMin) * staggered) / (fMax - fMin));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateStateAnimate(int i9, ConstraintSet constraintSet, int i10) {
        if (this.mScene != null && this.mCurrentState == i9) {
            updateState(R$id.view_transition, getConstraintSet(i9));
            setState(R$id.view_transition, -1, -1);
            updateState(i9, constraintSet);
            MotionScene$Transition motionScene$Transition = new MotionScene$Transition(-1, this.mScene, R$id.view_transition, i9);
            motionScene$Transition.setDuration(i10);
            setTransition(motionScene$Transition);
            transitionToEnd();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void viewTransition(int i9, View... viewArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.viewTransition(i9, viewArr);
        } else {
            Log.e(TAG, " no motionScene");
        }
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToEnd(Runnable runnable) {
        animateTo(1.0f);
        this.mOnComplete = runnable;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13) {
    }

    public void updateState(int i9, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(i9, constraintSet);
        }
        updateState();
        if (this.mCurrentState == i9) {
            constraintSet.applyTo(this);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i9, int i10, int i11) {
        setState(MotionLayout$TransitionState.SETUP);
        this.mCurrentState = i9;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i9, i10, i11);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i9).applyTo(this);
        }
    }

    public void setProgress(float f8, float f9) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new MotionLayout$StateCache(this);
            }
            this.mStateCache.setProgress(f8);
            this.mStateCache.setVelocity(f9);
            return;
        }
        setProgress(f8);
        setState(MotionLayout$TransitionState.MOVING);
        this.mLastVelocity = f9;
        if (f9 != 0.0f) {
            animateTo(f9 > 0.0f ? 1.0f : 0.0f);
        } else {
            if (f8 == 0.0f || f8 == 1.0f) {
                return;
            }
            animateTo(f8 > 0.5f ? 1.0f : 0.0f);
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new MotionLayout$DecelerateInterpolator(this);
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = MotionLayout$TransitionState.UNDEFINED;
        this.mModel = new MotionLayout$Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    public void setTransition(int i9, int i10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new MotionLayout$StateCache(this);
            }
            this.mStateCache.setStartState(i9);
            this.mStateCache.setEndState(i10);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i9;
            this.mEndState = i10;
            motionScene.setTransition(i9, i10);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(i9), this.mScene.getConstraintSet(i10));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    public void setTransition(MotionScene$Transition motionScene$Transition) {
        this.mScene.setTransition(motionScene$Transition);
        setState(MotionLayout$TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = motionScene$Transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    private void checkStructure(int i9, ConstraintSet constraintSet) {
        String name = Debug.getName(getContext(), i9);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            if (id == -1) {
                StringBuilder sbX = a.x("CHECK: ", name, " ALL VIEWS SHOULD HAVE ID's ");
                sbX.append(childAt.getClass().getName());
                sbX.append(" does not!");
                Log.w(TAG, sbX.toString());
            }
            if (constraintSet.getConstraint(id) == null) {
                StringBuilder sbX2 = a.x("CHECK: ", name, " NO CONSTRAINTS for ");
                sbX2.append(Debug.getName(childAt));
                Log.w(TAG, sbX2.toString());
            }
        }
        int[] knownIds = constraintSet.getKnownIds();
        for (int i11 = 0; i11 < knownIds.length; i11++) {
            int i12 = knownIds[i11];
            String name2 = Debug.getName(getContext(), i12);
            if (findViewById(knownIds[i11]) == null) {
                Log.w(TAG, "CHECK: " + name + " NO View matches id " + name2);
            }
            if (constraintSet.getHeight(i12) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
            if (constraintSet.getWidth(i12) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new MotionLayout$DecelerateInterpolator(this);
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = MotionLayout$TransitionState.UNDEFINED;
        this.mModel = new MotionLayout$Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    private void checkStructure(MotionScene$Transition motionScene$Transition) {
        if (motionScene$Transition.getStartConstraintSetId() == motionScene$Transition.getEndConstraintSetId()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    public void transitionToState(int i9, int i10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new MotionLayout$StateCache(this);
            }
            this.mStateCache.setEndState(i9);
            return;
        }
        transitionToState(i9, -1, -1, i10);
    }

    public void transitionToState(int i9, int i10, int i11) {
        transitionToState(i9, i10, i11, -1);
    }

    public void transitionToState(int i9) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new MotionLayout$StateCache(this);
            }
            this.mStateCache.setEndState(i9);
            return;
        }
        transitionToState(i9, -1, -1);
    }
}
