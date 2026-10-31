package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.R$attr;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.util.Preconditions;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.navigation.b;
import androidx.recyclerview.R$dimen;
import androidx.recyclerview.R$styleable;
import j1.i;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final String LOW_RES_ROTARY_ENCODER_FEATURE = "android.hardware.rotaryencoder.lowres";
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled = false;
    static final RecyclerView$StretchEdgeEffectFactory sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled = false;
    RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    RecyclerView$Adapter mAdapter;
    AdapterHelper mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private RecyclerView$ChildDrawingOrderCallback mChildDrawingOrderCallback;
    ChildHelper mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;

    @VisibleForTesting
    DifferentialMotionFlingController mDifferentialMotionFlingController;
    private final DifferentialMotionFlingTarget mDifferentialMotionFlingTarget;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;

    @NonNull
    private RecyclerView$EdgeEffectFactory mEdgeEffectFactory;
    boolean mEnableFastScroller;

    @VisibleForTesting
    boolean mFirstLayoutComplete;
    GapWorker mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private RecyclerView$OnItemTouchListener mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    RecyclerView$ItemAnimator mItemAnimator;
    private RecyclerView$ItemAnimator$ItemAnimatorListener mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<RecyclerView$ItemDecoration> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;

    @VisibleForTesting
    RecyclerView$LayoutManager mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;

    @VisibleForTesting
    boolean mLowResRotaryEncoderFeature;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final RecyclerView$RecyclerViewDataObserver mObserver;
    private List<RecyclerView$OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
    private RecyclerView$OnFlingListener mOnFlingListener;
    private final ArrayList<RecyclerView$OnItemTouchListener> mOnItemTouchListeners;

    @VisibleForTesting
    final List<RecyclerView$ViewHolder> mPendingAccessibilityImportanceChange;
    RecyclerView$SavedState mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    GapWorker$LayoutPrefetchRegistryImpl mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final RecyclerView$Recycler mRecycler;
    RecyclerView$RecyclerListener mRecyclerListener;
    final List<RecyclerView$RecyclerListener> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    float mScaledHorizontalScrollFactor;
    float mScaledVerticalScrollFactor;
    private RecyclerView$OnScrollListener mScrollListener;
    private List<RecyclerView$OnScrollListener> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final RecyclerView$State mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final RecyclerView$ViewFlinger mViewFlinger;
    private final ViewInfoStore$ProcessCallback mViewInfoProcessCallback;
    final ViewInfoStore mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R$attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    static final boolean ALLOW_THREAD_GAP_WORK = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new RecyclerView$3();
        sDefaultEdgeEffectFactory = new RecyclerView$StretchEdgeEffectFactory();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mObserver = new RecyclerView$RecyclerViewDataObserver(this);
        this.mRecycler = new RecyclerView$Recycler(this);
        this.mViewInfoStore = new ViewInfoStore();
        this.mUpdateChildViewsRunnable = new RecyclerView$1(this);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new RecyclerView$ViewFlinger(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new GapWorker$LayoutPrefetchRegistryImpl() : null;
        this.mState = new RecyclerView$State();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new RecyclerView$ItemAnimatorRestoreListener(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new RecyclerView$2(this);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new RecyclerView$4(this);
        RecyclerView$5 recyclerView$5 = new RecyclerView$5(this);
        this.mDifferentialMotionFlingTarget = recyclerView$5;
        this.mDifferentialMotionFlingController = new DifferentialMotionFlingController(getContext(), recyclerView$5);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.setListener(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i9, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.RecyclerView, attributeSet, typedArrayObtainStyledAttributes, i9, 0);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_android_clipToPadding, true);
        boolean z8 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_fastScrollEnabled, false);
        this.mEnableFastScroller = z8;
        if (z8) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature(LOW_RES_ROTARY_ENCODER_FEATURE);
        createLayoutManager(context, string, attributeSet, i9, 0);
        int[] iArr = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i9, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes2, i9, 0);
        boolean z9 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z9);
        PoolingContainer.setPoolingContainer(this, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$000(RecyclerView recyclerView, View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        recyclerView.attachViewToParent(view, i9, viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$100(RecyclerView recyclerView, int i9) {
        recyclerView.detachViewFromParent(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$200(RecyclerView recyclerView) {
        return recyclerView.awakenScrollBars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$300(RecyclerView recyclerView, View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        recyclerView.attachViewToParent(view, i9, viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$400(RecyclerView recyclerView, View view) {
        recyclerView.detachViewFromParent(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$500(RecyclerView recyclerView, int i9, int i10) {
        recyclerView.setMeasuredDimension(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addAnimatingView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        View view = recyclerView$ViewHolder.itemView;
        boolean z8 = view.getParent() == this;
        this.mRecycler.unscrapView(getChildViewHolder(view));
        if (recyclerView$ViewHolder.isTmpDetached()) {
            this.mChildHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
            return;
        }
        ChildHelper childHelper = this.mChildHelper;
        if (z8) {
            childHelper.hide(view);
        } else {
            childHelper.addView(view, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void animateChange(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2, boolean z8, boolean z9) {
        recyclerView$ViewHolder.setIsRecyclable(false);
        if (z8) {
            addAnimatingView(recyclerView$ViewHolder);
        }
        if (recyclerView$ViewHolder != recyclerView$ViewHolder2) {
            if (z9) {
                addAnimatingView(recyclerView$ViewHolder2);
            }
            recyclerView$ViewHolder.mShadowedHolder = recyclerView$ViewHolder2;
            addAnimatingView(recyclerView$ViewHolder);
            this.mRecycler.unscrapView(recyclerView$ViewHolder);
            recyclerView$ViewHolder2.setIsRecyclable(false);
            recyclerView$ViewHolder2.mShadowingHolder = recyclerView$ViewHolder;
        }
        if (this.mItemAnimator.animateChange(recyclerView$ViewHolder, recyclerView$ViewHolder2, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void clearNestedRecyclerViewIfNotNested(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        WeakReference<RecyclerView> weakReference = recyclerView$ViewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == recyclerView$ViewHolder.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            recyclerView$ViewHolder.mNestedRecyclerView = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int consumeFlingInStretch(int i9, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i10) {
        if (i9 > 0 && edgeEffect != null && EdgeEffectCompat.getDistance(edgeEffect) != 0.0f) {
            int iRound = Math.round(EdgeEffectCompat.onPullDistance(edgeEffect, ((-i9) * FLING_DESTRETCH_FACTOR) / i10, 0.5f) * ((-i10) / FLING_DESTRETCH_FACTOR));
            if (iRound != i9) {
                edgeEffect.finish();
            }
            return i9 - iRound;
        }
        if (i9 >= 0 || edgeEffect2 == null || EdgeEffectCompat.getDistance(edgeEffect2) == 0.0f) {
            return i9;
        }
        float f8 = i10;
        int iRound2 = Math.round(EdgeEffectCompat.onPullDistance(edgeEffect2, (i9 * FLING_DESTRETCH_FACTOR) / f8, 0.5f) * (f8 / FLING_DESTRETCH_FACTOR));
        if (iRound2 != i9) {
            edgeEffect2.finish();
        }
        return i9 - iRound2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i9, int i10) {
        Object[] objArr;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(RecyclerView$LayoutManager.class);
                try {
                    constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i9), Integer.valueOf(i10)};
                } catch (NoSuchMethodException e) {
                    objArr = null;
                    try {
                        constructor = clsAsSubclass.getConstructor(null);
                    } catch (NoSuchMethodException e6) {
                        e6.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e6);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((RecyclerView$LayoutManager) constructor.newInstance(objArr));
            } catch (ClassCastException e9) {
                b.d(attributeSet.getPositionDescription(), ": Class is not a LayoutManager ", fullClassName, e9);
            } catch (ClassNotFoundException e10) {
                b.d(attributeSet.getPositionDescription(), ": Unable to find LayoutManager ", fullClassName, e10);
            } catch (IllegalAccessException e11) {
                b.d(attributeSet.getPositionDescription(), ": Cannot access non-public constructor ", fullClassName, e11);
            } catch (InstantiationException e12) {
                b.d(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", fullClassName, e12);
            } catch (InvocationTargetException e13) {
                b.d(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", fullClassName, e13);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean didChildRangeChange(int i9, int i10) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i9 && iArr[1] == i10) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchContentChangedIfNecessary() {
        int i9 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i9 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes(accessibilityEventObtain, i9);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchLayoutStep1() {
        this.mState.assertLayoutStep(1);
        fillRemainingScrollValues(this.mState);
        this.mState.mIsMeasuring = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.clear();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        RecyclerView$State recyclerView$State = this.mState;
        recyclerView$State.mTrackOldChangeHolders = recyclerView$State.mRunSimpleAnimations && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        recyclerView$State.mInPreLayout = recyclerView$State.mRunPredictiveAnimations;
        recyclerView$State.mItemCount = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.mRunSimpleAnimations) {
            int childCount = this.mChildHelper.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i9));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.addToPreLayout(childViewHolderInt, this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt, RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.mTrackOldChangeHolders && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.addToOldChangeHolders(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.mRunPredictiveAnimations) {
            saveOldPositions();
            RecyclerView$State recyclerView$State2 = this.mState;
            boolean z8 = recyclerView$State2.mStructureChanged;
            recyclerView$State2.mStructureChanged = false;
            this.mLayout.onLayoutChildren(this.mRecycler, recyclerView$State2);
            this.mState.mStructureChanged = z8;
            for (int i10 = 0; i10 < this.mChildHelper.getChildCount(); i10++) {
                RecyclerView$ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.getChildAt(i10));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.isInPreLayout(childViewHolderInt2)) {
                    int iBuildAdapterChangeFlagsForAnimations = RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    if (!zHasAnyOfTheFlags) {
                        iBuildAdapterChangeFlagsForAnimations |= 4096;
                    }
                    RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfoRecordPreLayoutInformation = this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt2, iBuildAdapterChangeFlagsForAnimations, childViewHolderInt2.getUnmodifiedPayloads());
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, recyclerView$ItemAnimator$ItemHolderInfoRecordPreLayoutInformation);
                    } else {
                        this.mViewInfoStore.addToAppearedInPreLayoutHolders(childViewHolderInt2, recyclerView$ItemAnimator$ItemHolderInfoRecordPreLayoutInformation);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.mLayoutStep = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.assertLayoutStep(6);
        this.mAdapterHelper.consumeUpdatesInOnePass();
        this.mState.mItemCount = this.mAdapter.getItemCount();
        this.mState.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.mLayoutState;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        RecyclerView$State recyclerView$State = this.mState;
        recyclerView$State.mInPreLayout = false;
        this.mLayout.onLayoutChildren(this.mRecycler, recyclerView$State);
        RecyclerView$State recyclerView$State2 = this.mState;
        recyclerView$State2.mStructureChanged = false;
        recyclerView$State2.mRunSimpleAnimations = recyclerView$State2.mRunSimpleAnimations && this.mItemAnimator != null;
        recyclerView$State2.mLayoutStep = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchLayoutStep3() {
        RecyclerView recyclerView;
        this.mState.assertLayoutStep(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        RecyclerView$State recyclerView$State = this.mState;
        recyclerView$State.mLayoutStep = 1;
        if (recyclerView$State.mRunSimpleAnimations) {
            for (int childCount = this.mChildHelper.getChildCount() - 1; childCount >= 0; childCount--) {
                RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(childCount));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfoRecordPostLayoutInformation = this.mItemAnimator.recordPostLayoutInformation(this.mState, childViewHolderInt);
                    RecyclerView$ViewHolder fromOldChangeHolders = this.mViewInfoStore.getFromOldChangeHolders(changedHolderKey);
                    if (fromOldChangeHolders == null || fromOldChangeHolders.shouldIgnore()) {
                        this.mViewInfoStore.addToPostLayout(childViewHolderInt, recyclerView$ItemAnimator$ItemHolderInfoRecordPostLayoutInformation);
                    } else {
                        boolean zIsDisappearing = this.mViewInfoStore.isDisappearing(fromOldChangeHolders);
                        boolean zIsDisappearing2 = this.mViewInfoStore.isDisappearing(childViewHolderInt);
                        if (zIsDisappearing && fromOldChangeHolders == childViewHolderInt) {
                            this.mViewInfoStore.addToPostLayout(childViewHolderInt, recyclerView$ItemAnimator$ItemHolderInfoRecordPostLayoutInformation);
                        } else {
                            RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfoPopFromPreLayout = this.mViewInfoStore.popFromPreLayout(fromOldChangeHolders);
                            this.mViewInfoStore.addToPostLayout(childViewHolderInt, recyclerView$ItemAnimator$ItemHolderInfoRecordPostLayoutInformation);
                            RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfoPopFromPostLayout = this.mViewInfoStore.popFromPostLayout(childViewHolderInt);
                            if (recyclerView$ItemAnimator$ItemHolderInfoPopFromPreLayout == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, fromOldChangeHolders);
                            } else {
                                animateChange(fromOldChangeHolders, childViewHolderInt, recyclerView$ItemAnimator$ItemHolderInfoPopFromPreLayout, recyclerView$ItemAnimator$ItemHolderInfoPopFromPostLayout, zIsDisappearing, zIsDisappearing2);
                            }
                        }
                    }
                }
            }
            recyclerView = this;
            recyclerView.mViewInfoStore.process(recyclerView.mViewInfoProcessCallback);
        } else {
            recyclerView = this;
        }
        recyclerView.mLayout.removeAndRecycleScrapInt(recyclerView.mRecycler);
        RecyclerView$State recyclerView$State2 = recyclerView.mState;
        recyclerView$State2.mPreviousLayoutItemCount = recyclerView$State2.mItemCount;
        recyclerView.mDataSetHasChangedAfterLayout = false;
        recyclerView.mDispatchItemsChangedEvent = false;
        recyclerView$State2.mRunSimpleAnimations = false;
        recyclerView$State2.mRunPredictiveAnimations = false;
        recyclerView.mLayout.mRequestedSimpleAnimations = false;
        ArrayList<RecyclerView$ViewHolder> arrayList = recyclerView.mRecycler.mChangedScrap;
        if (arrayList != null) {
            arrayList.clear();
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = recyclerView.mLayout;
        if (recyclerView$LayoutManager.mPrefetchMaxObservedInInitialPrefetch) {
            recyclerView$LayoutManager.mPrefetchMaxCountObserved = 0;
            recyclerView$LayoutManager.mPrefetchMaxObservedInInitialPrefetch = false;
            recyclerView.mRecycler.updateViewCacheSize();
        }
        recyclerView.mLayout.onLayoutCompleted(recyclerView.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        recyclerView.mViewInfoStore.clear();
        int[] iArr = recyclerView.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener = this.mInterceptingOnItemTouchListener;
        if (recyclerView$OnItemTouchListener == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        recyclerView$OnItemTouchListener.onTouchEvent(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i9 = 0; i9 < size; i9++) {
            RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener = this.mOnItemTouchListeners.get(i9);
            if (recyclerView$OnItemTouchListener.onInterceptTouchEvent(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = recyclerView$OnItemTouchListener;
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int childCount = this.mChildHelper.getChildCount();
        if (childCount == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i9 = Integer.MAX_VALUE;
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i11));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i9) {
                    i9 = layoutPosition;
                }
                if (layoutPosition > i10) {
                    i10 = layoutPosition;
                }
            }
        }
        iArr[0] = i9;
        iArr[1] = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static RecyclerView findNestedRecyclerView(@NonNull View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i9));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:17:0x002b */
    @Nullable
    private View findNextViewToFocus() {
        RecyclerView$ViewHolder recyclerView$ViewHolderFindViewHolderForAdapterPosition;
        RecyclerView$State recyclerView$State = this.mState;
        int i9 = recyclerView$State.mFocusedItemPosition;
        if (i9 == -1) {
            i9 = 0;
        }
        int itemCount = recyclerView$State.getItemCount();
        for (int i10 = i9; i10 < itemCount; i10++) {
            RecyclerView$ViewHolder recyclerView$ViewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i10);
            if (recyclerView$ViewHolderFindViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (recyclerView$ViewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return recyclerView$ViewHolderFindViewHolderForAdapterPosition2.itemView;
            }
        }
        int iMin = Math.min(itemCount, i9);
        do {
            iMin--;
            if (iMin < 0 || (recyclerView$ViewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin)) == null) {
                return null;
            }
        } while (!recyclerView$ViewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable());
        return recyclerView$ViewHolderFindViewHolderForAdapterPosition.itemView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:39:0x0076  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b8  */
    private boolean fling(int i9, int i10, int i11, int i12) {
        int iMax;
        int i13;
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        boolean zCanScrollHorizontally = recyclerView$LayoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (!zCanScrollHorizontally || Math.abs(i9) < i11) {
            i9 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i10) < i11) {
            i10 = 0;
        }
        if (i9 == 0 && i10 == 0) {
            return false;
        }
        if (i9 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.mRightGlow;
                if (edgeEffect2 == null || EdgeEffectCompat.getDistance(edgeEffect2) == 0.0f) {
                    iMax = 0;
                } else if (shouldAbsorb(this.mRightGlow, i9, getWidth())) {
                    this.mRightGlow.onAbsorb(i9);
                    i9 = 0;
                }
            } else {
                int i14 = -i9;
                if (shouldAbsorb(this.mLeftGlow, i14, getWidth())) {
                    this.mLeftGlow.onAbsorb(i14);
                    i9 = 0;
                }
            }
            iMax = i9;
            i9 = 0;
        }
        if (i10 == 0) {
            i13 = i10;
            i10 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 == null || EdgeEffectCompat.getDistance(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.mBottomGlow;
                if (edgeEffect4 == null || EdgeEffectCompat.getDistance(edgeEffect4) == 0.0f) {
                    i13 = i10;
                    i10 = 0;
                } else if (shouldAbsorb(this.mBottomGlow, i10, getHeight())) {
                    this.mBottomGlow.onAbsorb(i10);
                    i10 = 0;
                }
            } else {
                int i15 = -i10;
                if (shouldAbsorb(this.mTopGlow, i15, getHeight())) {
                    this.mTopGlow.onAbsorb(i15);
                    i10 = 0;
                }
            }
            i13 = 0;
        }
        if (iMax != 0 || i10 != 0) {
            int i16 = -i12;
            iMax = Math.max(i16, Math.min(iMax, i12));
            i10 = Math.max(i16, Math.min(i10, i12));
            startNestedScrollForType(1);
            this.mViewFlinger.fling(iMax, i10);
        }
        if (i9 == 0 && i13 == 0) {
            return (iMax == 0 && i10 == 0) ? false : true;
        }
        float f8 = i9;
        float f9 = i13;
        if (!dispatchNestedPreFling(f8, f9)) {
            boolean z8 = zCanScrollHorizontally || zCanScrollVertically;
            dispatchNestedFling(f8, f9, z8);
            RecyclerView$OnFlingListener recyclerView$OnFlingListener = this.mOnFlingListener;
            if (recyclerView$OnFlingListener != null && recyclerView$OnFlingListener.onFling(i9, i13)) {
                return true;
            }
            if (z8) {
                startNestedScrollForType(1);
                int i17 = -i12;
                this.mViewFlinger.fling(Math.max(i17, Math.min(i9, i12)), Math.max(i17, Math.min(i13, i12)));
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RecyclerView$ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect rect2 = recyclerView$LayoutParams.mDecorInsets;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).bottomMargin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getSplineFlingDistance(int i9) {
        double dLog = Math.log((Math.abs(i9) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        float f8 = DECELERATION_RATE;
        return (float) (Math.exp((((double) f8) / (((double) f8) - 1.0d)) * dLog) * ((double) (this.mPhysicalCoef * SCROLL_FRICTION)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleMissingPreInfoForChangeError(long j9, RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        int childCount = this.mChildHelper.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i9));
            if (childViewHolderInt != recyclerView$ViewHolder && getChangedHolderKey(childViewHolderInt) == j9) {
                RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
                if (recyclerView$Adapter == null || !recyclerView$Adapter.hasStableIds()) {
                    StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(childViewHolderInt);
                    sb.append(" \n View Holder 2:");
                    sb.append(recyclerView$ViewHolder);
                    i.l(a.i(this, sb));
                    return;
                }
                StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(childViewHolderInt);
                sb2.append(" \n View Holder 2:");
                sb2.append(recyclerView$ViewHolder);
                i.l(a.i(this, sb2));
                return;
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + recyclerView$ViewHolder2 + " cannot be found but it is necessary for " + recyclerView$ViewHolder + exceptionLabel());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasUpdatedView() {
        int childCount = this.mChildHelper.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i9));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initAutofill() {
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initChildrenHelper() {
        this.mChildHelper = new ChildHelper(new RecyclerView$6(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isPreferredNextFocus(View view, View view2, int i9) {
        int i10;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        byte b9 = -1;
        int i11 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i12 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i13 = rect2.left;
        if ((i12 < i13 || rect.right <= i13) && rect.right < rect2.right) {
            i10 = 1;
        } else {
            int i14 = rect.right;
            int i15 = rect2.right;
            i10 = ((i14 > i15 || i12 >= i15) && i12 > i13) ? -1 : 0;
        }
        int i16 = rect.top;
        int i17 = rect2.top;
        if ((i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom) {
            b9 = 1;
        } else {
            int i18 = rect.bottom;
            int i19 = rect2.bottom;
            if ((i18 <= i19 && i16 < i19) || i16 <= i17) {
                b9 = 0;
            }
        }
        if (i9 == 1) {
            return b9 < 0 || (b9 == 0 && i10 * i11 < 0);
        }
        if (i9 == 2) {
            return b9 > 0 || (b9 == 0 && i10 * i11 > 0);
        }
        if (i9 == 17) {
            return i10 < 0;
        }
        if (i9 == 33) {
            return b9 < 0;
        }
        if (i9 == 66) {
            return i10 > 0;
        }
        if (i9 == 130) {
            return b9 > 0;
        }
        StringBuilder sb = new StringBuilder("Invalid direction: ");
        sb.append(i9);
        i.k(a.i(this, sb));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void nestedScrollByInternal(int i9, int i10, @Nullable MotionEvent motionEvent, int i11) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zCanScrollHorizontally = recyclerView$LayoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        int i12 = zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int iReleaseHorizontalGlow = i9 - releaseHorizontalGlow(i9, height);
        int iReleaseVerticalGlow = i10 - releaseVerticalGlow(i10, width);
        startNestedScroll(i12, i11);
        if (dispatchNestedPreScroll(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, i11)) {
            int[] iArr2 = this.mReusableIntPair;
            iReleaseHorizontalGlow -= iArr2[0];
            iReleaseVerticalGlow -= iArr2[1];
        }
        scrollByInternal(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, motionEvent, i11);
        GapWorker gapWorker = this.mGapWorker;
        if (gapWorker != null && (iReleaseHorizontalGlow != 0 || iReleaseVerticalGlow != 0)) {
            gapWorker.postFromTraversal(this, iReleaseHorizontalGlow, iReleaseVerticalGlow);
        }
        stopNestedScroll(i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i9 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i9);
            int x8 = (int) (motionEvent.getX(i9) + 0.5f);
            this.mLastTouchX = x8;
            this.mInitialTouchX = x8;
            int y8 = (int) (motionEvent.getY(i9) + 0.5f);
            this.mLastTouchY = y8;
            this.mInitialTouchY = y8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z8;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.reset();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        boolean zPredictiveItemAnimationsEnabled = predictiveItemAnimationsEnabled();
        AdapterHelper adapterHelper = this.mAdapterHelper;
        if (zPredictiveItemAnimationsEnabled) {
            adapterHelper.preProcess();
        } else {
            adapterHelper.consumeUpdatesInOnePass();
        }
        boolean z9 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.mRunSimpleAnimations = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z8 = this.mDataSetHasChangedAfterLayout) || z9 || this.mLayout.mRequestedSimpleAnimations) && (!z8 || this.mAdapter.hasStableIds());
        RecyclerView$State recyclerView$State = this.mState;
        recyclerView$State.mRunPredictiveAnimations = recyclerView$State.mRunSimpleAnimations && z9 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:13:0x0056  */
    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    private void pullGlows(float f8, float f9, float f10, float f11) {
        boolean z8;
        boolean z9 = true;
        if (f9 >= 0.0f) {
            if (f9 > 0.0f) {
                ensureRightGlow();
                EdgeEffectCompat.onPullDistance(this.mRightGlow, f9 / getWidth(), f10 / getHeight());
            } else {
                z8 = false;
            }
            if (f11 < 0.0f) {
                ensureTopGlow();
                EdgeEffectCompat.onPullDistance(this.mTopGlow, (-f11) / getHeight(), f8 / getWidth());
            } else if (f11 > 0.0f) {
                ensureBottomGlow();
                EdgeEffectCompat.onPullDistance(this.mBottomGlow, f11 / getHeight(), 1.0f - (f8 / getWidth()));
            } else {
                z9 = z8;
            }
            if (z9 && f9 == 0.0f && f11 == 0.0f) {
                return;
            }
            postInvalidateOnAnimation();
        }
        ensureLeftGlow();
        EdgeEffectCompat.onPullDistance(this.mLeftGlow, (-f9) / getWidth(), 1.0f - (f10 / getHeight()));
        z8 = true;
        if (f11 < 0.0f) {
            ensureTopGlow();
            EdgeEffectCompat.onPullDistance(this.mTopGlow, (-f11) / getHeight(), f8 / getWidth());
        } else if (f11 > 0.0f) {
            ensureBottomGlow();
            EdgeEffectCompat.onPullDistance(this.mBottomGlow, f11 / getHeight(), 1.0f - (f8 / getWidth()));
        } else {
            z9 = z8;
        }
        if (z9) {
        }
        postInvalidateOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recoverFocusFromState() {
        View viewFindViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            if (!this.mChildHelper.isHidden(getFocusedChild())) {
                return;
            }
        }
        View viewFindNextViewToFocus = null;
        RecyclerView$ViewHolder recyclerView$ViewHolderFindViewHolderForItemId = (this.mState.mFocusedItemId == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.mFocusedItemId);
        if (recyclerView$ViewHolderFindViewHolderForItemId != null && !this.mChildHelper.isHidden(recyclerView$ViewHolderFindViewHolderForItemId.itemView) && recyclerView$ViewHolderFindViewHolderForItemId.itemView.hasFocusable()) {
            viewFindNextViewToFocus = recyclerView$ViewHolderFindViewHolderForItemId.itemView;
        } else if (this.mChildHelper.getChildCount() > 0) {
            viewFindNextViewToFocus = findNextViewToFocus();
        }
        if (viewFindNextViewToFocus != null) {
            int i9 = this.mState.mFocusedSubChildId;
            if (i9 != -1 && (viewFindViewById = viewFindNextViewToFocus.findViewById(i9)) != null && viewFindViewById.isFocusable()) {
                viewFindNextViewToFocus = viewFindViewById;
            }
            viewFindNextViewToFocus.requestFocus();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void releaseGlows() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int releaseHorizontalGlow(int i9, float f8) {
        float height = f8 / getHeight();
        float width = i9 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f9 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                boolean zCanScrollHorizontally = canScrollHorizontally(1);
                EdgeEffect edgeEffect3 = this.mRightGlow;
                if (zCanScrollHorizontally) {
                    edgeEffect3.onRelease();
                } else {
                    float fOnPullDistance = EdgeEffectCompat.onPullDistance(edgeEffect3, width, height);
                    if (EdgeEffectCompat.getDistance(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f9 = fOnPullDistance;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollHorizontally2 = canScrollHorizontally(-1);
            EdgeEffect edgeEffect4 = this.mLeftGlow;
            if (zCanScrollHorizontally2) {
                edgeEffect4.onRelease();
            } else {
                float f10 = -EdgeEffectCompat.onPullDistance(edgeEffect4, -width, 1.0f - height);
                if (EdgeEffectCompat.getDistance(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f9 = f10;
            }
            invalidate();
        }
        return Math.round(f9 * getWidth());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int releaseVerticalGlow(int i9, float f8) {
        float width = f8 / getWidth();
        float height = i9 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f9 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                boolean zCanScrollVertically = canScrollVertically(1);
                EdgeEffect edgeEffect3 = this.mBottomGlow;
                if (zCanScrollVertically) {
                    edgeEffect3.onRelease();
                } else {
                    float fOnPullDistance = EdgeEffectCompat.onPullDistance(edgeEffect3, height, 1.0f - width);
                    if (EdgeEffectCompat.getDistance(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f9 = fOnPullDistance;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollVertically2 = canScrollVertically(-1);
            EdgeEffect edgeEffect4 = this.mTopGlow;
            if (zCanScrollVertically2) {
                edgeEffect4.onRelease();
            } else {
                float f10 = -EdgeEffectCompat.onPullDistance(edgeEffect4, -height, width);
                if (EdgeEffectCompat.getDistance(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f9 = f10;
            }
            invalidate();
        }
        return Math.round(f9 * getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void requestChildOnScreen(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup$LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof RecyclerView$LayoutParams) {
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
            if (!recyclerView$LayoutParams.mInsetsDirty) {
                Rect rect = recyclerView$LayoutParams.mDecorInsets;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetFocusInfo() {
        RecyclerView$State recyclerView$State = this.mState;
        recyclerView$State.mFocusedItemId = -1L;
        recyclerView$State.mFocusedItemPosition = -1;
        recyclerView$State.mFocusedSubChildId = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void saveFocusInfo() {
        int absoluteAdapterPosition;
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        RecyclerView$ViewHolder recyclerView$ViewHolderFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (recyclerView$ViewHolderFindContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.mFocusedItemId = this.mAdapter.hasStableIds() ? recyclerView$ViewHolderFindContainingViewHolder.getItemId() : -1L;
        RecyclerView$State recyclerView$State = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            absoluteAdapterPosition = -1;
        } else {
            absoluteAdapterPosition = recyclerView$ViewHolderFindContainingViewHolder.isRemoved() ? recyclerView$ViewHolderFindContainingViewHolder.mOldPosition : recyclerView$ViewHolderFindContainingViewHolder.getAbsoluteAdapterPosition();
        }
        recyclerView$State.mFocusedItemPosition = absoluteAdapterPosition;
        this.mState.mFocusedSubChildId = getDeepestFocusedViewWithId(recyclerView$ViewHolderFindContainingViewHolder.itemView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setAdapterInternal(@Nullable RecyclerView$Adapter<?> recyclerView$Adapter, boolean z8, boolean z9) {
        RecyclerView$Adapter recyclerView$Adapter2 = this.mAdapter;
        if (recyclerView$Adapter2 != null) {
            recyclerView$Adapter2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z8 || z9) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.reset();
        RecyclerView$Adapter<?> recyclerView$Adapter3 = this.mAdapter;
        this.mAdapter = recyclerView$Adapter;
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.registerAdapterDataObserver(this.mObserver);
            recyclerView$Adapter.onAttachedToRecyclerView(this);
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.onAdapterChanged(recyclerView$Adapter3, this.mAdapter);
        }
        this.mRecycler.onAdapterChanged(recyclerView$Adapter3, this.mAdapter, z8);
        this.mState.mStructureChanged = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setDebugAssertionsEnabled(boolean z8) {
        sDebugAssertionsEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setVerboseLoggingEnabled(boolean z8) {
        sVerboseLoggingEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean shouldAbsorb(@NonNull EdgeEffect edgeEffect, int i9, int i10) {
        if (i9 > 0) {
            return true;
        }
        return getSplineFlingDistance(-i9) < EdgeEffectCompat.getDistance(edgeEffect) * ((float) i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r0v5, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r0v6, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    private void startNestedScrollForType(int i9) {
        boolean zCanScrollHorizontally = this.mLayout.canScrollHorizontally();
        int i10 = zCanScrollHorizontally;
        if (this.mLayout.canScrollVertically()) {
            i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
        }
        startNestedScroll(i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean stopGlowAnimations(MotionEvent motionEvent) {
        boolean z8;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
            z8 = false;
        } else {
            EdgeEffectCompat.onPullDistance(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            z8 = true;
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
            EdgeEffectCompat.onPullDistance(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
            z8 = true;
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && EdgeEffectCompat.getDistance(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
            EdgeEffectCompat.onPullDistance(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
            z8 = true;
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 == null || EdgeEffectCompat.getDistance(edgeEffect4) == 0.0f || canScrollVertically(1)) {
            return z8;
        }
        EdgeEffectCompat.onPullDistance(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void stopScrollersInternal() {
        this.mViewFlinger.stop();
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.stopSmoothScroller();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void absorbGlows(int i9, int i10) {
        if (i9 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i9);
            }
        } else if (i9 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i9);
            }
        }
        if (i10 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i10);
            }
        }
        if (i9 == 0 && i10 == 0) {
            return;
        }
        postInvalidateOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i9, int i10) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null || !recyclerView$LayoutManager.onAddFocusables(this, arrayList, i9, i10)) {
            super.addFocusables(arrayList, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addItemDecoration(@NonNull RecyclerView$ItemDecoration recyclerView$ItemDecoration, int i9) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        ArrayList<RecyclerView$ItemDecoration> arrayList = this.mItemDecorations;
        if (i9 < 0) {
            arrayList.add(recyclerView$ItemDecoration);
        } else {
            arrayList.add(i9, recyclerView$ItemDecoration);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnChildAttachStateChangeListener(@NonNull RecyclerView$OnChildAttachStateChangeListener recyclerView$OnChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(recyclerView$OnChildAttachStateChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnItemTouchListener(@NonNull RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener) {
        this.mOnItemTouchListeners.add(recyclerView$OnItemTouchListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnScrollListener(@NonNull RecyclerView$OnScrollListener recyclerView$OnScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(recyclerView$OnScrollListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addRecyclerListener(@NonNull RecyclerView$RecyclerListener recyclerView$RecyclerListener) {
        Preconditions.checkArgument(recyclerView$RecyclerListener != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(recyclerView$RecyclerListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateAppearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        recyclerView$ViewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateDisappearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        addAnimatingView(recyclerView$ViewHolder);
        recyclerView$ViewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            i.l(a.i(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
        } else {
            i.l(a.i(this, a.u(str)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assertNotInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (this.mDispatchScrollCounter > 0) {
                Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(a.i(this, new StringBuilder(""))));
            }
        } else if (str == null) {
            i.l(a.i(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        } else {
            i.l(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canReuseUpdatedViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mItemAnimator;
        return recyclerView$ItemAnimator == null || recyclerView$ItemAnimator.canReuseUpdatedViewHolder(recyclerView$ViewHolder, recyclerView$ViewHolder.getUnmodifiedPayloads());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof RecyclerView$LayoutParams) && this.mLayout.checkLayoutParams((RecyclerView$LayoutParams) viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearOldPositions() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i9 = 0; i9 < unfilteredChildCount; i9++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i9));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.clearOldPositions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearOnChildAttachStateChangeListeners() {
        List<RecyclerView$OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearOnScrollListeners() {
        List<RecyclerView$OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null && recyclerView$LayoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void considerReleasingGlowsOnScroll(int i9, int i10) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i9 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i9 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i10 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i10 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int consumeFlingInHorizontalStretch(int i9) {
        return consumeFlingInStretch(i9, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int consumeFlingInVerticalStretch(int i9) {
        return consumeFlingInStretch(i9, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.hasPendingUpdates()) {
            if (!this.mAdapterHelper.hasAnyUpdateTypes(4) || this.mAdapterHelper.hasAnyUpdateTypes(11)) {
                if (this.mAdapterHelper.hasPendingUpdates()) {
                    Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.preProcess();
            if (!this.mLayoutWasDefered) {
                if (hasUpdatedView()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.consumePostponedUpdates();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            Trace.endSection();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void defaultOnMeasure(int i9, int i10) {
        setMeasuredDimension(RecyclerView$LayoutManager.chooseSize(i9, getPaddingRight() + getPaddingLeft(), ViewCompat.getMinimumWidth(this)), RecyclerView$LayoutManager.chooseSize(i10, getPaddingBottom() + getPaddingTop(), ViewCompat.getMinimumHeight(this)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchChildAttached(View view) {
        RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
        if (recyclerView$Adapter != null && childViewHolderInt != null) {
            recyclerView$Adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        List<RecyclerView$OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchChildDetached(View view) {
        RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
        if (recyclerView$Adapter != null && childViewHolderInt != null) {
            recyclerView$Adapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<RecyclerView$OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@Nullable KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        RecyclerView$LayoutManager layoutManager = getLayoutManager();
        int itemCount = 0;
        if (layoutManager != null) {
            if (layoutManager.canScrollVertically()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        smoothScrollBy(0, measuredHeight, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(0, -measuredHeight, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean zIsLayoutReversed = layoutManager.isLayoutReversed();
                    if (keyCode == 122) {
                        if (zIsLayoutReversed) {
                            itemCount = getAdapter().getItemCount();
                        }
                    } else if (!zIsLayoutReversed) {
                        itemCount = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(itemCount);
                    return true;
                }
            } else if (layoutManager.canScrollHorizontally()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        smoothScrollBy(measuredWidth, 0, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(-measuredWidth, 0, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean zIsLayoutReversed2 = layoutManager.isLayoutReversed();
                    if (keyCode2 == 122) {
                        if (zIsLayoutReversed2) {
                            itemCount = getAdapter().getItemCount();
                        }
                    } else if (!zIsLayoutReversed2) {
                        itemCount = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(itemCount);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        this.mState.mIsMeasuring = false;
        boolean z8 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.mLayoutStep == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else if (this.mAdapterHelper.hasUpdates() || z8 || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else {
            this.mLayout.setExactMeasureSpecsFrom(this);
        }
        dispatchLayoutStep3();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f8, float f9, boolean z8) {
        return getScrollingChildHelper().dispatchNestedFling(f8, f9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f8, float f9) {
        return getScrollingChildHelper().dispatchNestedPreFling(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i9, int i10, int[] iArr, int[] iArr2, int i11) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i9, i10, iArr, iArr2, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, int[] iArr, int i13) {
        return getScrollingChildHelper().dispatchNestedScroll(i9, i10, i11, i12, iArr, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnScrollStateChanged(int i9) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.onScrollStateChanged(i9);
        }
        onScrollStateChanged(i9);
        RecyclerView$OnScrollListener recyclerView$OnScrollListener = this.mScrollListener;
        if (recyclerView$OnScrollListener != null) {
            recyclerView$OnScrollListener.onScrollStateChanged(this, i9);
        }
        List<RecyclerView$OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i9);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnScrolled(int i9, int i10) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i9, scrollY - i10);
        onScrolled(i9, i10);
        RecyclerView$OnScrollListener recyclerView$OnScrollListener = this.mScrollListener;
        if (recyclerView$OnScrollListener != null) {
            recyclerView$OnScrollListener.onScrolled(this, i9, i10);
        }
        List<RecyclerView$OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i9, i10);
            }
        }
        this.mDispatchScrollCounter--;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    public void dispatchPendingImportantForAccessibilityChanges() {
        int i9;
        int size = this.mPendingAccessibilityImportanceChange.size();
        while (true) {
            size--;
            List<RecyclerView$ViewHolder> list = this.mPendingAccessibilityImportanceChange;
            if (size < 0) {
                list.clear();
                return;
            }
            RecyclerView$ViewHolder recyclerView$ViewHolder = list.get(size);
            if (recyclerView$ViewHolder.itemView.getParent() == this && !recyclerView$ViewHolder.shouldIgnore() && (i9 = recyclerView$ViewHolder.mPendingAccessibilityState) != -1) {
                recyclerView$ViewHolder.itemView.setImportantForAccessibility(i9);
                recyclerView$ViewHolder.mPendingAccessibilityState = -1;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        boolean z8;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z9 = false;
        for (int i9 = 0; i9 < size; i9++) {
            this.mItemDecorations.get(i9).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z8 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z8 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z8 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z8 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z9 = true;
            }
            z8 |= z9;
            canvas.restoreToCount(iSave4);
        }
        if ((z8 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.isRunning()) ? z8 : true) {
            postInvalidateOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean drawChild(@NonNull Canvas canvas, View view, long j9) {
        return super.drawChild(canvas, view, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 3);
        this.mBottomGlow = edgeEffectCreateEdgeEffect;
        if (this.mClipToPadding) {
            edgeEffectCreateEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectCreateEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 0);
        this.mLeftGlow = edgeEffectCreateEdgeEffect;
        if (this.mClipToPadding) {
            edgeEffectCreateEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectCreateEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 2);
        this.mRightGlow = edgeEffectCreateEdgeEffect;
        if (this.mClipToPadding) {
            edgeEffectCreateEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectCreateEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 1);
        this.mTopGlow = edgeEffectCreateEdgeEffect;
        if (this.mClipToPadding) {
            edgeEffectCreateEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectCreateEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void fillRemainingScrollValues(RecyclerView$State recyclerView$State) {
        if (getScrollState() != 2) {
            recyclerView$State.mRemainingScrollHorizontal = 0;
            recyclerView$State.mRemainingScrollVertical = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.mOverScroller;
            recyclerView$State.mRemainingScrollHorizontal = overScroller.getFinalX() - overScroller.getCurrX();
            recyclerView$State.mRemainingScrollVertical = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View findChildViewUnder(float f8, float f9) {
        for (int childCount = this.mChildHelper.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mChildHelper.getChildAt(childCount);
            float translationX = childAt.getTranslationX();
            float translationY = childAt.getTranslationY();
            if (f8 >= childAt.getLeft() + translationX && f8 <= childAt.getRight() + translationX && f9 >= childAt.getTop() + translationY && f9 <= childAt.getBottom() + translationY) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View findContainingItemView(@NonNull View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ViewHolder findContainingViewHolder(@NonNull View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ViewHolder findViewHolderForAdapterPosition(int i9) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i10 = 0; i10 < unfilteredChildCount; i10++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i10));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i9) {
                if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                recyclerView$ViewHolder = childViewHolderInt;
            }
        }
        return recyclerView$ViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder findViewHolderForItemId(long j9) {
        RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
        RecyclerView$ViewHolder recyclerView$ViewHolder = null;
        if (recyclerView$Adapter != null && recyclerView$Adapter.hasStableIds()) {
            int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
            for (int i9 = 0; i9 < unfilteredChildCount; i9++) {
                RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i9));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j9) {
                    if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    recyclerView$ViewHolder = childViewHolderInt;
                }
            }
        }
        return recyclerView$ViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ViewHolder findViewHolderForLayoutPosition(int i9) {
        return findViewHolderForPosition(i9, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[SYNTHETIC] */
    @Nullable
    public RecyclerView$ViewHolder findViewHolderForPosition(int i9, boolean z8) {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        RecyclerView$ViewHolder recyclerView$ViewHolder = null;
        for (int i10 = 0; i10 < unfilteredChildCount; i10++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i10));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z8) {
                    if (childViewHolderInt.mPosition != i9) {
                        continue;
                    } else {
                        if (this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                            return childViewHolderInt;
                        }
                        recyclerView$ViewHolder = childViewHolderInt;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i9) {
                    continue;
                } else {
                    if (this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    recyclerView$ViewHolder = childViewHolderInt;
                }
            }
        }
        return recyclerView$ViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean flingNoThresholdCheck(int i9, int i10) {
        return fling(i9, i10, 0, Integer.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x0043  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i9) {
        View viewOnFocusSearchFailed;
        boolean z8;
        View viewOnInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i9);
        if (viewOnInterceptFocusSearch != null) {
            return viewOnInterceptFocusSearch;
        }
        boolean z9 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z9 && (i9 == 2 || i9 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                if (focusFinder.findNextFocus(this, view, i9 == 2 ? 130 : 33) == null) {
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
            if (!z8 && this.mLayout.canScrollHorizontally()) {
                z8 = focusFinder.findNextFocus(this, view, (this.mLayout.getLayoutDirection() == 1) ^ (i9 == 2) ? 66 : 17) == null;
            }
            if (z8) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i9, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewOnFocusSearchFailed = focusFinder.findNextFocus(this, view, i9);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i9);
            if (viewFindNextFocus == null && z9) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewOnFocusSearchFailed = this.mLayout.onFocusSearchFailed(view, i9, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewOnFocusSearchFailed = viewFindNextFocus;
            }
        }
        if (viewOnFocusSearchFailed == null || viewOnFocusSearchFailed.hasFocusable()) {
            return isPreferredNextFocus(view, viewOnFocusSearchFailed, i9) ? viewOnFocusSearchFailed : super.focusSearch(view, i9);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i9);
        }
        requestChildOnScreen(viewOnFocusSearchFailed, null);
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateDefaultLayoutParams() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            return recyclerView$LayoutManager.generateDefaultLayoutParams();
        }
        i.l(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            return recyclerView$LayoutManager.generateLayoutParams(getContext(), attributeSet);
        }
        i.l(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$Adapter getAdapter() {
        return this.mAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAdapterPositionInRecyclerView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.hasAnyOfTheFlags(524) || !recyclerView$ViewHolder.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.applyPendingUpdatesToPosition(recyclerView$ViewHolder.mPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public int getBaseline() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        return recyclerView$LayoutManager != null ? recyclerView$LayoutManager.getBaseline() : super.getBaseline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getChangedHolderKey(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mAdapter.hasStableIds() ? recyclerView$ViewHolder.getItemId() : recyclerView$ViewHolder.mPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildAdapterPosition(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i9, int i10) {
        RecyclerView$ChildDrawingOrderCallback recyclerView$ChildDrawingOrderCallback = this.mChildDrawingOrderCallback;
        return recyclerView$ChildDrawingOrderCallback == null ? super.getChildDrawingOrder(i9, i10) : recyclerView$ChildDrawingOrderCallback.onGetChildDrawingOrder(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getChildItemId(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt;
        RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
        if (recyclerView$Adapter == null || !recyclerView$Adapter.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildLayoutPosition(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getChildPosition(@NonNull View view) {
        return getChildAdapterPosition(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder getChildViewHolder(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        b.v("View ", view, " is not a direct child of ", this);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$EdgeEffectFactory getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Rect getItemDecorInsetsForChild(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (!recyclerView$LayoutParams.mInsetsDirty) {
            return recyclerView$LayoutParams.mDecorInsets;
        }
        if (this.mState.isPreLayout() && (recyclerView$LayoutParams.isItemChanged() || recyclerView$LayoutParams.isViewInvalid())) {
            return recyclerView$LayoutParams.mDecorInsets;
        }
        Rect rect = recyclerView$LayoutParams.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i9).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i10 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i10 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        recyclerView$LayoutParams.mInsetsDirty = false;
        return rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$ItemDecoration getItemDecorationAt(int i9) {
        int itemDecorationCount = getItemDecorationCount();
        if (i9 >= 0 && i9 < itemDecorationCount) {
            return this.mItemDecorations.get(i9);
        }
        throw new IndexOutOfBoundsException(i9 + " is an invalid index for size " + itemDecorationCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$OnFlingListener getOnFlingListener() {
        return this.mOnFlingListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.getRecycledViewPool();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getScrollState() {
        return this.mScrollState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.hasPendingUpdates();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initAdapterManager() {
        this.mAdapterHelper = new AdapterHelper(new RecyclerView$7(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            i.k(a.i(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        } else {
            Resources resources = getContext().getResources();
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R$dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R$dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R$dimen.fastscroll_margin));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAnimating() {
        RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mItemAnimator;
        return recyclerView$ItemAnimator != null && recyclerView$ItemAnimator.isRunning();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void jumpToPositionForSmoothScroller(int i9) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i9);
        awakenScrollBars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markItemDecorInsetsDirty() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i9 = 0; i9 < unfilteredChildCount; i9++) {
            ((RecyclerView$LayoutParams) this.mChildHelper.getUnfilteredChildAt(i9).getLayoutParams()).mInsetsDirty = true;
        }
        this.mRecycler.markItemDecorInsetsDirty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markKnownViewsInvalid() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i9 = 0; i9 < unfilteredChildCount; i9++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i9));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.markKnownViewsInvalid();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void nestedScrollBy(int i9, int i10) {
        nestedScrollByInternal(i9, i10, null, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetChildrenHorizontal(@Px int i9) {
        int childCount = this.mChildHelper.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            this.mChildHelper.getChildAt(i10).offsetLeftAndRight(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetChildrenVertical(@Px int i9) {
        int childCount = this.mChildHelper.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            this.mChildHelper.getChildAt(i10).offsetTopAndBottom(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForInsert(int i9, int i10) {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i11 = 0; i11 < unfilteredChildCount; i11++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i11));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i9) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForInsert attached child " + i11 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition + i10));
                }
                childViewHolderInt.offsetPosition(i10, false);
                this.mState.mStructureChanged = true;
            }
        }
        this.mRecycler.offsetPositionRecordsForInsert(i9, i10);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForMove(int i9, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        if (i9 < i10) {
            i13 = -1;
            i12 = i9;
            i11 = i10;
        } else {
            i11 = i9;
            i12 = i10;
            i13 = 1;
        }
        for (int i15 = 0; i15 < unfilteredChildCount; i15++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i15));
            if (childViewHolderInt != null && (i14 = childViewHolderInt.mPosition) >= i12 && i14 <= i11) {
                if (sVerboseLoggingEnabled) {
                    Log.d(TAG, "offsetPositionRecordsForMove attached child " + i15 + " holder " + childViewHolderInt);
                }
                if (childViewHolderInt.mPosition == i9) {
                    childViewHolderInt.offsetPosition(i10 - i9, false);
                } else {
                    childViewHolderInt.offsetPosition(i13, false);
                }
                this.mState.mStructureChanged = true;
            }
        }
        this.mRecycler.offsetPositionRecordsForMove(i9, i10);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForRemove(int i9, int i10, boolean z8) {
        int i11 = i9 + i10;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i12 = 0; i12 < unfilteredChildCount; i12++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i13 = childViewHolderInt.mPosition;
                if (i13 >= i11) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i12 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition - i10));
                    }
                    childViewHolderInt.offsetPosition(-i10, z8);
                    this.mState.mStructureChanged = true;
                } else if (i13 >= i9) {
                    if (sVerboseLoggingEnabled) {
                        Log.d(TAG, "offsetPositionRecordsForRemove attached child " + i12 + " holder " + childViewHolderInt + " now REMOVED");
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i9 - 1, -i10, z8);
                    this.mState.mStructureChanged = true;
                }
            }
        }
        this.mRecycler.offsetPositionRecordsForRemove(i9, i10, z8);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.onAttachedToWindow();
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<GapWorker> threadLocal = GapWorker.sGapWorker;
            GapWorker gapWorker = threadLocal.get();
            this.mGapWorker = gapWorker;
            if (gapWorker == null) {
                this.mGapWorker = new GapWorker();
                Display display = ViewCompat.getDisplay(this);
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                GapWorker gapWorker2 = this.mGapWorker;
                gapWorker2.mFrameIntervalNs = (long) (1.0E9f / refreshRate);
                threadLocal.set(gapWorker2);
            }
            this.mGapWorker.add(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mItemAnimator;
        if (recyclerView$ItemAnimator != null) {
            recyclerView$ItemAnimator.endAnimations();
        }
        stopScroll();
        this.mIsAttached = false;
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.onDetach();
        this.mRecycler.onDetachedFromWindow();
        PoolingContainer.callPoolingContainerOnReleaseForChildren(this);
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        gapWorker.remove(this);
        this.mGapWorker = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mItemDecorations.get(i9).onDraw(canvas, this, this.mState);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onExitLayoutOrScroll(boolean z8) {
        int i9 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i9;
        if (i9 < 1) {
            if (sDebugAssertionsEnabled && i9 < 0) {
                i.l(a.i(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
                return;
            }
            this.mLayoutOrScrollCounter = 0;
            if (z8) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i9;
        boolean z8;
        float axisValue;
        RecyclerView recyclerView;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            float f8 = 0.0f;
            if ((motionEvent.getSource() & 2) != 0) {
                float f9 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                z8 = false;
                axisValue = this.mLayout.canScrollHorizontally() ? motionEvent.getAxisValue(10) : 0.0f;
                f8 = f9;
                i9 = 0;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                i9 = 26;
                axisValue = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    float f10 = -axisValue;
                    axisValue = 0.0f;
                    f8 = f10;
                } else if (!this.mLayout.canScrollHorizontally()) {
                    axisValue = 0.0f;
                }
                z8 = this.mLowResRotaryEncoderFeature;
            } else {
                i9 = 0;
                z8 = false;
                axisValue = 0.0f;
            }
            int i10 = (int) (f8 * this.mScaledVerticalScrollFactor);
            int i11 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
            if (z8) {
                OverScroller overScroller = this.mViewFlinger.mOverScroller;
                recyclerView = this;
                recyclerView.smoothScrollBy((overScroller.getFinalX() - overScroller.getCurrX()) + i11, (overScroller.getFinalY() - overScroller.getCurrY()) + i10, null, Integer.MIN_VALUE, true);
            } else {
                recyclerView = this;
                nestedScrollByInternal(i11, i10, motionEvent, 1);
            }
            if (i9 != 0 && !z8) {
                recyclerView.mDifferentialMotionFlingController.onMotionEvent(motionEvent, i9);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            return false;
        }
        boolean zCanScrollHorizontally = recyclerView$LayoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x8 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x8;
            this.mInitialTouchX = x8;
            int y8 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y8;
            this.mInitialTouchY = y8;
            if (stopGlowAnimations(motionEvent) || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            startNestedScrollForType(0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x9 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y9 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i9 = x9 - this.mInitialTouchX;
                int i10 = y9 - this.mInitialTouchY;
                if (!zCanScrollHorizontally || Math.abs(i9) <= this.mTouchSlop) {
                    z8 = false;
                } else {
                    this.mLastTouchX = x9;
                    z8 = true;
                }
                if (zCanScrollVertically && Math.abs(i10) > this.mTouchSlop) {
                    this.mLastTouchY = y9;
                    z8 = true;
                }
                if (z8) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x10 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            defaultOnMeasure(i9, i10);
            return;
        }
        boolean z8 = false;
        if (recyclerView$LayoutManager.isAutoMeasureEnabled()) {
            int mode = View$MeasureSpec.getMode(i9);
            int mode2 = View$MeasureSpec.getMode(i10);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i9, i10);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z8 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z8;
            if (z8 || this.mAdapter == null) {
                return;
            }
            if (this.mState.mLayoutStep == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i9, i10);
            this.mState.mIsMeasuring = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i9, i10);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY));
                this.mState.mIsMeasuring = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i9, i10);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i9, i10);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            RecyclerView$State recyclerView$State = this.mState;
            if (recyclerView$State.mRunPredictiveAnimations) {
                recyclerView$State.mInPreLayout = true;
            } else {
                this.mAdapterHelper.consumeUpdatesInOnePass();
                this.mState.mInPreLayout = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.mRunPredictiveAnimations) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
        RecyclerView$State recyclerView$State2 = this.mState;
        if (recyclerView$Adapter != null) {
            recyclerView$State2.mItemCount = recyclerView$Adapter.getItemCount();
        } else {
            recyclerView$State2.mItemCount = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i9, i10);
        stopInterceptRequestLayout(false);
        this.mState.mInPreLayout = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i9, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i9, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof RecyclerView$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        RecyclerView$SavedState recyclerView$SavedState = (RecyclerView$SavedState) parcelable;
        this.mPendingSavedState = recyclerView$SavedState;
        super.onRestoreInstanceState(recyclerView$SavedState.getSuperState());
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
        RecyclerView$SavedState recyclerView$SavedState2 = this.mPendingSavedState;
        if (recyclerView$SavedState2 != null) {
            recyclerView$SavedState.copyFrom(recyclerView$SavedState2);
            return recyclerView$SavedState;
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$SavedState.mLayoutState = recyclerView$LayoutManager.onSaveInstanceState();
            return recyclerView$SavedState;
        }
        recyclerView$SavedState.mLayoutState = null;
        return recyclerView$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (i9 == i11 && i10 == i12) {
            return;
        }
        invalidateGlows();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:48:0x00da A[PHI: r1
  0x00da: PHI (r1v46 int) = (r1v26 int), (r1v50 int) binds: [B:41:0x00c5, B:46:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        if (this.mLayoutSuppressed || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (dispatchToOnItemTouchListeners(motionEvent)) {
            cancelScroll();
            return true;
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            return false;
        }
        boolean zCanScrollHorizontally = recyclerView$LayoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.mNestedOffsets;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.mVelocityTracker.addMovement(motionEventObtain);
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                float f8 = zCanScrollHorizontally ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                float f9 = zCanScrollVertically ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                if ((f8 == 0.0f && f9 == 0.0f) || !fling((int) f8, (int) f9)) {
                    setScrollState(0);
                }
                resetScroll();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                if (iFindPointerIndex < 0) {
                    Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x8 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y8 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax = this.mLastTouchX - x8;
                int iMax2 = this.mLastTouchY - y8;
                if (this.mScrollState != 1) {
                    if (zCanScrollHorizontally) {
                        int i9 = this.mTouchSlop;
                        iMax = iMax > 0 ? Math.max(0, iMax - i9) : Math.min(0, iMax + i9);
                        if (iMax != 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                    } else {
                        z8 = false;
                    }
                    if (zCanScrollVertically) {
                        int i10 = this.mTouchSlop;
                        iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - i10) : Math.min(0, iMax2 + i10);
                        if (iMax2 != 0) {
                            z8 = true;
                        }
                    }
                    if (z8) {
                        setScrollState(1);
                    }
                }
                if (this.mScrollState == 1) {
                    int[] iArr3 = this.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    int iReleaseHorizontalGlow = iMax - releaseHorizontalGlow(iMax, motionEvent.getY());
                    int iReleaseVerticalGlow = iMax2 - releaseVerticalGlow(iMax2, motionEvent.getX());
                    if (dispatchNestedPreScroll(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                        int[] iArr4 = this.mReusableIntPair;
                        iReleaseHorizontalGlow -= iArr4[0];
                        iReleaseVerticalGlow -= iArr4[1];
                        int[] iArr5 = this.mNestedOffsets;
                        int i11 = iArr5[0];
                        int[] iArr6 = this.mScrollOffset;
                        iArr5[0] = i11 + iArr6[0];
                        iArr5[1] = iArr5[1] + iArr6[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int[] iArr7 = this.mScrollOffset;
                    this.mLastTouchX = x8 - iArr7[0];
                    this.mLastTouchY = y8 - iArr7[1];
                    if (scrollByInternal(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, motionEvent, 0)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    GapWorker gapWorker = this.mGapWorker;
                    if (gapWorker != null && (iReleaseHorizontalGlow != 0 || iReleaseVerticalGlow != 0)) {
                        gapWorker.postFromTraversal(this, iReleaseHorizontalGlow, iReleaseVerticalGlow);
                    }
                }
            } else if (actionMasked == 3) {
                cancelScroll();
            } else if (actionMasked == 5) {
                this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                int x9 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.mLastTouchX = x9;
                this.mInitialTouchX = x9;
                int y9 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.mLastTouchY = y9;
                this.mInitialTouchY = y9;
            } else if (actionMasked == 6) {
                onPointerUp(motionEvent);
            }
            motionEventObtain.recycle();
            return true;
        }
        this.mScrollPointerId = motionEvent.getPointerId(0);
        int x10 = (int) (motionEvent.getX() + 0.5f);
        this.mLastTouchX = x10;
        this.mInitialTouchX = x10;
        int y10 = (int) (motionEvent.getY() + 0.5f);
        this.mLastTouchY = y10;
        this.mInitialTouchY = y10;
        startNestedScrollForType(0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processDataSetCompletelyChanged(boolean z8) {
        this.mDispatchItemsChangedEvent = z8 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recordAnimationInfoIfBouncedHiddenView(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        recyclerView$ViewHolder.setFlags(0, 8192);
        if (this.mState.mTrackOldChangeHolders && recyclerView$ViewHolder.isUpdated() && !recyclerView$ViewHolder.isRemoved() && !recyclerView$ViewHolder.shouldIgnore()) {
            this.mViewInfoStore.addToOldChangeHolders(getChangedHolderKey(recyclerView$ViewHolder), recyclerView$ViewHolder);
        }
        this.mViewInfoStore.addToPreLayout(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAndRecycleViews() {
        RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mItemAnimator;
        if (recyclerView$ItemAnimator != null) {
            recyclerView$ItemAnimator.endAnimations();
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean zRemoveViewIfHidden = this.mChildHelper.removeViewIfHidden(view);
        if (zRemoveViewIfHidden) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.unscrapView(childViewHolderInt);
            this.mRecycler.recycleViewHolderInternal(childViewHolderInt);
            if (sVerboseLoggingEnabled) {
                Log.d(TAG, "after removing animated view: " + view + ", " + this);
            }
        }
        stopInterceptRequestLayout(!zRemoveViewIfHidden);
        return zRemoveViewIfHidden;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z8) {
        RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                i.k(a.i(this, sb));
                return;
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            i.k(a.i(this, sb2));
            return;
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeItemDecoration(@NonNull RecyclerView$ItemDecoration recyclerView$ItemDecoration) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            recyclerView$LayoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(recyclerView$ItemDecoration);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeItemDecorationAt(int i9) {
        int itemDecorationCount = getItemDecorationCount();
        if (i9 >= 0 && i9 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i9));
            return;
        }
        throw new IndexOutOfBoundsException(i9 + " is an invalid index for size " + itemDecorationCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnChildAttachStateChangeListener(@NonNull RecyclerView$OnChildAttachStateChangeListener recyclerView$OnChildAttachStateChangeListener) {
        List<RecyclerView$OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(recyclerView$OnChildAttachStateChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnItemTouchListener(@NonNull RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener) {
        this.mOnItemTouchListeners.remove(recyclerView$OnItemTouchListener);
        if (this.mInterceptingOnItemTouchListener == recyclerView$OnItemTouchListener) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnScrollListener(@NonNull RecyclerView$OnScrollListener recyclerView$OnScrollListener) {
        List<RecyclerView$OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            list.remove(recyclerView$OnScrollListener);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeRecyclerListener(@NonNull RecyclerView$RecyclerListener recyclerView$RecyclerListener) {
        this.mRecyclerListeners.remove(recyclerView$RecyclerListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void repositionShadowingViews() {
        RecyclerView$ViewHolder recyclerView$ViewHolder;
        int childCount = this.mChildHelper.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = this.mChildHelper.getChildAt(i9);
            RecyclerView$ViewHolder childViewHolder = getChildViewHolder(childAt);
            if (childViewHolder != null && (recyclerView$ViewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = recyclerView$ViewHolder.itemView;
                int left = childAt.getLeft();
                int top = childAt.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z8) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z8) {
        int size = this.mOnItemTouchListeners.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mOnItemTouchListeners.get(i9).onRequestDisallowInterceptTouchEvent(z8);
        }
        super.requestDisallowInterceptTouchEvent(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void saveOldPositions() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i9 = 0; i9 < unfilteredChildCount; i9++) {
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i9));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                i.l(a.i(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                return;
            } else {
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.saveOldPosition();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void scrollBy(int i9, int i10) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = recyclerView$LayoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i9 = 0;
            }
            if (!zCanScrollVertically) {
                i10 = 0;
            }
            scrollByInternal(i9, i10, null, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean scrollByInternal(int i9, int i10, MotionEvent motionEvent, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i9, i10, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i16 = iArr2[0];
            int i17 = iArr2[1];
            i14 = i9 - i16;
            i15 = i10 - i17;
            i13 = i17;
            i12 = i16;
        } else {
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i12, i13, i14, i15, this.mScrollOffset, i11, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i18 = iArr4[0];
        int i19 = i14 - i18;
        int i20 = iArr4[1];
        int i21 = i15 - i20;
        boolean z8 = (i18 == 0 && i20 == 0) ? false : true;
        int i22 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i23 = iArr5[0];
        this.mLastTouchX = i22 - i23;
        int i24 = this.mLastTouchY;
        int i25 = iArr5[1];
        this.mLastTouchY = i24 - i25;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i23;
        iArr6[1] = iArr6[1] + i25;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i19, motionEvent.getY(), i21);
                if (Build$VERSION.SDK_INT >= 31 && MotionEventCompat.isFromSource(motionEvent, 4194304)) {
                    releaseGlows();
                }
            }
            considerReleasingGlowsOnScroll(i9, i10);
        }
        if (i12 != 0 || i13 != 0) {
            dispatchOnScrolled(i12, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z8 && i12 == 0 && i13 == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrollStep(int i9, int i10, @Nullable int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i9 != 0 ? this.mLayout.scrollHorizontallyBy(i9, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i10 != 0 ? this.mLayout.scrollVerticallyBy(i10, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void scrollTo(int i9, int i10) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrollToPosition(int i9) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            recyclerView$LayoutManager.scrollToPosition(i9);
            awakenScrollBars();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate(this, recyclerViewAccessibilityDelegate);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAdapter(@Nullable RecyclerView$Adapter recyclerView$Adapter) {
        setLayoutFrozen(false);
        setAdapterInternal(recyclerView$Adapter, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChildDrawingOrderCallback(@Nullable RecyclerView$ChildDrawingOrderCallback recyclerView$ChildDrawingOrderCallback) {
        if (recyclerView$ChildDrawingOrderCallback == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = recyclerView$ChildDrawingOrderCallback;
        setChildrenDrawingOrderEnabled(recyclerView$ChildDrawingOrderCallback != null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public boolean setChildImportantForAccessibilityInternal(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        if (!isComputingLayout()) {
            recyclerView$ViewHolder.itemView.setImportantForAccessibility(i9);
            return true;
        }
        recyclerView$ViewHolder.mPendingAccessibilityState = i9;
        this.mPendingAccessibilityImportanceChange.add(recyclerView$ViewHolder);
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z8) {
        if (z8 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z8;
        super.setClipToPadding(z8);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEdgeEffectFactory(@NonNull RecyclerView$EdgeEffectFactory recyclerView$EdgeEffectFactory) {
        Preconditions.checkNotNull(recyclerView$EdgeEffectFactory);
        this.mEdgeEffectFactory = recyclerView$EdgeEffectFactory;
        invalidateGlows();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHasFixedSize(boolean z8) {
        this.mHasFixedSize = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setItemAnimator(@Nullable RecyclerView$ItemAnimator recyclerView$ItemAnimator) {
        RecyclerView$ItemAnimator recyclerView$ItemAnimator2 = this.mItemAnimator;
        if (recyclerView$ItemAnimator2 != null) {
            recyclerView$ItemAnimator2.endAnimations();
            this.mItemAnimator.setListener(null);
        }
        this.mItemAnimator = recyclerView$ItemAnimator;
        if (recyclerView$ItemAnimator != null) {
            recyclerView$ItemAnimator.setListener(this.mItemAnimatorListener);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setItemViewCacheSize(int i9) {
        this.mRecycler.setViewCacheSize(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setLayoutFrozen(boolean z8) {
        suppressLayout(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLayoutManager(@Nullable RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mItemAnimator;
            if (recyclerView$ItemAnimator != null) {
                recyclerView$ItemAnimator.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.clear();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.clear();
        }
        this.mChildHelper.removeAllViewsUnfiltered();
        this.mLayout = recyclerView$LayoutManager;
        if (recyclerView$LayoutManager != null) {
            if (recyclerView$LayoutManager.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(recyclerView$LayoutManager);
                sb.append(" is already attached to a RecyclerView:");
                i.k(a.i(recyclerView$LayoutManager.mRecyclerView, sb));
                return;
            }
            recyclerView$LayoutManager.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.updateViewCacheSize();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            i.k("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z8) {
        getScrollingChildHelper().setNestedScrollingEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnFlingListener(@Nullable RecyclerView$OnFlingListener recyclerView$OnFlingListener) {
        this.mOnFlingListener = recyclerView$OnFlingListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setOnScrollListener(@Nullable RecyclerView$OnScrollListener recyclerView$OnScrollListener) {
        this.mScrollListener = recyclerView$OnScrollListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPreserveFocusAfterLayout(boolean z8) {
        this.mPreserveFocusAfterLayout = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRecycledViewPool(@Nullable RecyclerView$RecycledViewPool recyclerView$RecycledViewPool) {
        this.mRecycler.setRecycledViewPool(recyclerView$RecycledViewPool);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setRecyclerListener(@Nullable RecyclerView$RecyclerListener recyclerView$RecyclerListener) {
        this.mRecyclerListener = recyclerView$RecyclerListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScrollState(int i9) {
        if (i9 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            StringBuilder sbQ = a.q(i9, "setting scroll state to ", " from ");
            sbQ.append(this.mScrollState);
            Log.d(TAG, sbQ.toString(), new Exception());
        }
        this.mScrollState = i9;
        if (i9 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScrollingTouchSlop(int i9) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i9 != 0) {
            if (i9 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i9 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewCacheExtension(@Nullable RecyclerView$ViewCacheExtension recyclerView$ViewCacheExtension) {
        this.mRecycler.setViewCacheExtension(recyclerView$ViewCacheExtension);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void smoothScrollBy(@Px int i9, @Px int i10, @Nullable Interpolator interpolator, int i11, boolean z8) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!recyclerView$LayoutManager.canScrollHorizontally()) {
            i9 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i10 = 0;
        }
        if (i9 == 0 && i10 == 0) {
            return;
        }
        if (i11 != Integer.MIN_VALUE && i11 <= 0) {
            scrollBy(i9, i10);
            return;
        }
        if (z8) {
            int i12 = i9 != 0 ? 1 : 0;
            if (i10 != 0) {
                i12 |= 2;
            }
            startNestedScroll(i12, 1);
        }
        this.mViewFlinger.smoothScrollBy(i9, i10, i11, interpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void smoothScrollToPosition(int i9) {
        if (this.mLayoutSuppressed) {
            return;
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            recyclerView$LayoutManager.smoothScrollToPosition(this, this.mState, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startInterceptRequestLayout() {
        int i9 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i9;
        if (i9 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i9) {
        return getScrollingChildHelper().startNestedScroll(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stopInterceptRequestLayout(boolean z8) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                i.l(a.i(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
                return;
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z8 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z8 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z8) {
        if (z8 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z8) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void swapAdapter(@Nullable RecyclerView$Adapter recyclerView$Adapter, boolean z8) {
        setLayoutFrozen(false);
        setAdapterInternal(recyclerView$Adapter, true, z8);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void viewRangeUpdate(int i9, int i10, Object obj) {
        int i11;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        int i12 = i9 + i10;
        for (int i13 = 0; i13 < unfilteredChildCount; i13++) {
            View unfilteredChildAt = this.mChildHelper.getUnfilteredChildAt(i13);
            RecyclerView$ViewHolder childViewHolderInt = getChildViewHolderInt(unfilteredChildAt);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i11 = childViewHolderInt.mPosition) >= i9 && i11 < i12) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((RecyclerView$LayoutParams) unfilteredChildAt.getLayoutParams()).mInsetsDirty = true;
            }
        }
        this.mRecycler.viewRangeUpdate(i9, i10);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i9) {
        getScrollingChildHelper().stopNestedScroll(i9);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i9) {
        return getScrollingChildHelper().hasNestedScrollingParent(i9);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i9, int i10) {
        return getScrollingChildHelper().startNestedScroll(i9, i10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i9, int i10, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i9, i10, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i9, i10, i11, i12, iArr);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public final void dispatchNestedScroll(int i9, int i10, int i11, int i12, int[] iArr, int i13, @NonNull int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i9, i10, i11, i12, iArr, i13, iArr2);
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    public void onScrollStateChanged(int i9) {
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
        if (recyclerView$LayoutManager != null) {
            return recyclerView$LayoutManager.generateLayoutParams(viewGroup$LayoutParams);
        }
        i.l(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    public void addItemDecoration(@NonNull RecyclerView$ItemDecoration recyclerView$ItemDecoration) {
        addItemDecoration(recyclerView$ItemDecoration, -1);
    }

    public void onScrolled(@Px int i9, @Px int i10) {
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    @Nullable
    @Deprecated
    public RecyclerView$ViewHolder findViewHolderForPosition(int i9) {
        return findViewHolderForPosition(i9, false);
    }

    public void smoothScrollBy(@Px int i9, @Px int i10, @Nullable Interpolator interpolator) {
        smoothScrollBy(i9, i10, interpolator, Integer.MIN_VALUE);
    }

    public void smoothScrollBy(@Px int i9, @Px int i10, @Nullable Interpolator interpolator, int i11) {
        smoothScrollBy(i9, i10, interpolator, i11, false);
    }

    public void smoothScrollBy(@Px int i9, @Px int i10) {
        smoothScrollBy(i9, i10, null);
    }

    public boolean fling(int i9, int i10) {
        return fling(i9, i10, this.mMinFlingVelocity, this.mMaxFlingVelocity);
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R$attr.recyclerViewStyle);
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }
}
