package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region$Op;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewGroup$OnHierarchyChangeListener;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.d;
import androidx.coordinatorlayout.R$attr;
import androidx.coordinatorlayout.R$style;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.navigation.b;
import j1.i;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<CoordinatorLayout$Behavior>>> sConstructors;
    private static final Pools$Pool<Rect> sRectPool;
    private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private final int[] mBehaviorConsumed;
    private View mBehaviorTouchView;
    private final DirectedAcyclicGraph<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private WindowInsetsCompat mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    private final int[] mNestedScrollingV2ConsumedCompat;
    ViewGroup$OnHierarchyChangeListener mOnHierarchyChangeListener;
    private CoordinatorLayout$OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final List<View> mTempList1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Package r1 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r1 != null ? r1.getName() : null;
        TOP_SORTED_CHILDREN_COMPARATOR = new CoordinatorLayout$ViewElevationComparator();
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new Pools$SynchronizedPool(12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        CoordinatorLayout coordinatorLayout;
        Context context2;
        super(context, attributeSet, i9);
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new DirectedAcyclicGraph<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mBehaviorConsumed = new int[2];
        this.mNestedScrollingV2ConsumedCompat = new int[2];
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        TypedArray typedArrayObtainStyledAttributes = i9 == 0 ? context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i9, 0);
        if (Build$VERSION.SDK_INT < 29) {
            coordinatorLayout = this;
            context2 = context;
        } else if (i9 == 0) {
            coordinatorLayout = this;
            context2 = context;
            d.h(coordinatorLayout, context2, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, R$style.Widget_Support_CoordinatorLayout);
        } else {
            context2 = context;
            coordinatorLayout = this;
            d.k(coordinatorLayout, context2, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i9);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context2.getResources();
            coordinatorLayout.mKeylines = resources.getIntArray(resourceId);
            float f8 = resources.getDisplayMetrics().density;
            int length = coordinatorLayout.mKeylines.length;
            for (int i10 = 0; i10 < length; i10++) {
                int[] iArr = coordinatorLayout.mKeylines;
                iArr[i10] = (int) (iArr[i10] * f8);
            }
        }
        coordinatorLayout.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new CoordinatorLayout$HierarchyChangeListener(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static Rect acquireTempRect() {
        Rect rectAcquire = sRectPool.acquire();
        return rectAcquire == null ? new Rect() : rectAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int clamp(int i9, int i10, int i11) {
        if (i9 < i10) {
            return i10;
        }
        return i9 > i11 ? i11 : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void constrainChildRect(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams, Rect rect, int i9, int i10) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i9) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i10) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin));
        rect.set(iMax, iMax2, i9 + iMax, i10 + iMax2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat windowInsetsCompat) {
        CoordinatorLayout$Behavior behavior;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (ViewCompat.getFitsSystemWindows(childAt) && (behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior()) != null) {
                windowInsetsCompat = behavior.onApplyWindowInsets(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    return windowInsetsCompat;
                }
            }
        }
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i9, Rect rect, Rect rect2, CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams, int i10, int i11) {
        int iWidth;
        int iHeight;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveAnchoredChildGravity(coordinatorLayout$LayoutParams.gravity), i9);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(resolveGravity(coordinatorLayout$LayoutParams.anchorGravity), i9);
        int i12 = absoluteGravity & 7;
        int i13 = absoluteGravity & 112;
        int i14 = absoluteGravity2 & 7;
        int i15 = absoluteGravity2 & 112;
        if (i14 != 1) {
            iWidth = i14 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i15 != 16) {
            iHeight = i15 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i12 == 1) {
            iWidth -= i10 / 2;
        } else if (i12 != 5) {
            iWidth -= i10;
        }
        if (i13 == 16) {
            iHeight -= i11 / 2;
        } else if (i13 != 80) {
            iHeight -= i11;
        }
        rect2.set(iWidth, iHeight, i10 + iWidth, i11 + iHeight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getKeyline(int i9) {
        int[] iArr = this.mKeylines;
        if (iArr == null) {
            Log.e(TAG, "No keylines defined for " + this + " - attempted index lookup " + i9);
            return 0;
        }
        if (i9 >= 0 && i9 < iArr.length) {
            return iArr[i9];
        }
        Log.e(TAG, "Keyline index " + i9 + " out of range for " + this);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i9 = childCount - 1; i9 >= 0; i9--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i9) : i9));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasDependencies(View view) {
        return this.mChildDag.hasOutgoingEdges(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void layoutChild(View view, int i9) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        Rect rectAcquireTempRect = acquireTempRect();
        rectAcquireTempRect.set(getPaddingLeft() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin, getPaddingTop() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
        if (this.mLastInsets != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            rectAcquireTempRect.left = this.mLastInsets.getSystemWindowInsetLeft() + rectAcquireTempRect.left;
            rectAcquireTempRect.top = this.mLastInsets.getSystemWindowInsetTop() + rectAcquireTempRect.top;
            rectAcquireTempRect.right -= this.mLastInsets.getSystemWindowInsetRight();
            rectAcquireTempRect.bottom -= this.mLastInsets.getSystemWindowInsetBottom();
        }
        Rect rectAcquireTempRect2 = acquireTempRect();
        GravityCompat.apply(resolveGravity(coordinatorLayout$LayoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rectAcquireTempRect, rectAcquireTempRect2, i9);
        view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void layoutChildWithAnchor(View view, View view2, int i9) {
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, rectAcquireTempRect);
            getDesiredAnchoredChildRect(view, i9, rectAcquireTempRect, rectAcquireTempRect2);
            view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void layoutChildWithKeyline(View view, int i9, int i10) {
        int i11;
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(coordinatorLayout$LayoutParams.gravity), i10);
        int i12 = absoluteGravity & 7;
        int i13 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i10 == 1) {
            i9 = width - i9;
        }
        int keyline = getKeyline(i9) - measuredWidth;
        if (i12 == 1) {
            keyline += measuredWidth / 2;
        } else if (i12 == 5) {
            keyline += measuredWidth;
        }
        if (i13 != 16) {
            i11 = i13 != 80 ? 0 : measuredHeight;
        } else {
            i11 = measuredHeight / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin, Math.min(i11, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void offsetChildByInset(View view, Rect rect, int i9) {
        boolean z8;
        boolean z9;
        int width;
        int i10;
        int i11;
        int i12;
        int height;
        int i13;
        int i14;
        int i15;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            rectAcquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behavior == null || !behavior.getInsetDodgeRect(this, view, rectAcquireTempRect)) {
                rectAcquireTempRect.set(rectAcquireTempRect2);
            } else if (!rectAcquireTempRect2.contains(rectAcquireTempRect)) {
                b.y("Rect should be within the child's bounds. Rect:", rectAcquireTempRect.toShortString(), " | Bounds:", rectAcquireTempRect2.toShortString());
                return;
            }
            releaseTempRect(rectAcquireTempRect2);
            if (rectAcquireTempRect.isEmpty()) {
                releaseTempRect(rectAcquireTempRect);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(coordinatorLayout$LayoutParams.dodgeInsetEdges, i9);
            boolean z10 = true;
            if ((absoluteGravity & 48) != 48 || (i14 = (rectAcquireTempRect.top - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin) - coordinatorLayout$LayoutParams.mInsetOffsetY) >= (i15 = rect.top)) {
                z8 = false;
            } else {
                setInsetOffsetY(view, i15 - i14);
                z8 = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - rectAcquireTempRect.bottom) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin) + coordinatorLayout$LayoutParams.mInsetOffsetY) < (i13 = rect.bottom)) {
                setInsetOffsetY(view, height - i13);
                z8 = true;
            }
            if (!z8) {
                setInsetOffsetY(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i11 = (rectAcquireTempRect.left - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin) - coordinatorLayout$LayoutParams.mInsetOffsetX) >= (i12 = rect.left)) {
                z9 = false;
            } else {
                setInsetOffsetX(view, i12 - i11);
                z9 = true;
            }
            if ((absoluteGravity & 5) != 5 || (width = ((getWidth() - rectAcquireTempRect.right) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin) + coordinatorLayout$LayoutParams.mInsetOffsetX) >= (i10 = rect.right)) {
                z10 = z9;
            } else {
                setInsetOffsetX(view, width - i10);
            }
            if (!z10) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(rectAcquireTempRect);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v9, resolved type: java.lang.Class<?> */
    /* JADX WARN: Multi-variable type inference failed */
    public static CoordinatorLayout$Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = WIDGET_PACKAGE_NAME;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<CoordinatorLayout$Behavior>>> threadLocal = sConstructors;
            Map<String, Constructor<CoordinatorLayout$Behavior>> map = threadLocal.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(map);
            }
            Constructor<CoordinatorLayout$Behavior> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            ai.onnxruntime.b.o("Could not inflate Behavior subclass ".concat(str), e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean performIntercept(MotionEvent motionEvent, int i9) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zOnInterceptTouchEvent = false;
        boolean z8 = false;
        for (int i10 = 0; i10 < size; i10++) {
            View view = list.get(i10);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
            if (!(zOnInterceptTouchEvent || z8) || actionMasked == 0) {
                if (!zOnInterceptTouchEvent && behavior != null) {
                    if (i9 == 0) {
                        zOnInterceptTouchEvent = behavior.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i9 == 1) {
                        zOnInterceptTouchEvent = behavior.onTouchEvent(this, view, motionEvent);
                    }
                    if (zOnInterceptTouchEvent) {
                        this.mBehaviorTouchView = view;
                    }
                }
                boolean zDidBlockInteraction = coordinatorLayout$LayoutParams.didBlockInteraction();
                boolean zIsBlockingInteractionBelow = coordinatorLayout$LayoutParams.isBlockingInteractionBelow(this, view);
                z8 = zIsBlockingInteractionBelow && !zDidBlockInteraction;
                if (zIsBlockingInteractionBelow && !z8) {
                    break;
                }
            } else if (behavior != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i9 == 0) {
                    behavior.onInterceptTouchEvent(this, view, motionEventObtain);
                } else if (i9 == 1) {
                    behavior.onTouchEvent(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zOnInterceptTouchEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.clear();
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            CoordinatorLayout$LayoutParams resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.findAnchorView(this, childAt);
            this.mChildDag.addNode(childAt);
            for (int i10 = 0; i10 < childCount; i10++) {
                if (i10 != i9) {
                    View childAt2 = getChildAt(i10);
                    if (resolvedLayoutParams.dependsOn(this, childAt, childAt2)) {
                        if (!this.mChildDag.contains(childAt2)) {
                            this.mChildDag.addNode(childAt2);
                        }
                        this.mChildDag.addEdge(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.getSortedList());
        Collections.reverse(this.mDependencySortedChildren);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void releaseTempRect(@NonNull Rect rect) {
        rect.setEmpty();
        sRectPool.release(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetTouchBehaviors(boolean z8) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z8) {
                    behavior.onInterceptTouchEvent(this, childAt, motionEventObtain);
                } else {
                    behavior.onTouchEvent(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            ((CoordinatorLayout$LayoutParams) getChildAt(i10).getLayoutParams()).resetTouchBehaviorTracking();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int resolveAnchoredChildGravity(int i9) {
        if (i9 == 0) {
            return 17;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int resolveGravity(int i9) {
        if ((i9 & 7) == 0) {
            i9 |= GravityCompat.START;
        }
        return (i9 & 112) == 0 ? i9 | 48 : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int resolveKeylineGravity(int i9) {
        if (i9 == 0) {
            return 8388661;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setInsetOffsetX(View view, int i9) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int i10 = coordinatorLayout$LayoutParams.mInsetOffsetX;
        if (i10 != i9) {
            ViewCompat.offsetLeftAndRight(view, i9 - i10);
            coordinatorLayout$LayoutParams.mInsetOffsetX = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setInsetOffsetY(View view, int i9) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int i10 = coordinatorLayout$LayoutParams.mInsetOffsetY;
        if (i10 != i9) {
            ViewCompat.offsetTopAndBottom(view, i9 - i10);
            coordinatorLayout$LayoutParams.mInsetOffsetY = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupForInsets() {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.mApplyWindowInsetsListener == null) {
            this.mApplyWindowInsetsListener = new CoordinatorLayout$1(this);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, this.mApplyWindowInsetsListener);
        setSystemUiVisibility(1280);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof CoordinatorLayout$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchDependentViewsChanged(@NonNull View view) {
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        if (incomingEdges == null || incomingEdges.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < incomingEdges.size(); i9++) {
            View view2 = (View) incomingEdges.get(i9);
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior != null) {
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z8 = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectAcquireTempRect = acquireTempRect();
        getChildRect(view, view.getParent() != this, rectAcquireTempRect);
        Rect rectAcquireTempRect2 = acquireTempRect();
        getChildRect(view2, view2.getParent() != this, rectAcquireTempRect2);
        try {
            if (rectAcquireTempRect.left <= rectAcquireTempRect2.right && rectAcquireTempRect.top <= rectAcquireTempRect2.bottom && rectAcquireTempRect.right >= rectAcquireTempRect2.left && rectAcquireTempRect.bottom >= rectAcquireTempRect2.top) {
                z8 = true;
            }
            return z8;
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x008f  */
    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j9) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = coordinatorLayout$LayoutParams.mBehavior;
        if (coordinatorLayout$Behavior != null) {
            float scrimOpacity = coordinatorLayout$Behavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(coordinatorLayout$LayoutParams.mBehavior.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(scrimOpacity * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region$Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z8 = false;
        for (int i9 = 0; i9 < childCount; i9++) {
            if (hasDependencies(getChildAt(i9))) {
                z8 = true;
                break;
            }
        }
        if (z8 != this.mNeedsPreDrawListener) {
            if (z8) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public CoordinatorLayout$LayoutParams generateDefaultLayoutParams() {
        return new CoordinatorLayout$LayoutParams(-2, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public CoordinatorLayout$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof CoordinatorLayout$LayoutParams) {
            return new CoordinatorLayout$LayoutParams((CoordinatorLayout$LayoutParams) viewGroup$LayoutParams);
        }
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new CoordinatorLayout$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new CoordinatorLayout$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getChildRect(View view, boolean z8, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z8) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> outgoingEdges = this.mChildDag.getOutgoingEdges(view);
        this.mTempDependenciesList.clear();
        if (outgoingEdges != null) {
            this.mTempDependenciesList.addAll(outgoingEdges);
        }
        return this.mTempDependenciesList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        this.mTempDependenciesList.clear();
        if (incomingEdges != null) {
            this.mTempDependenciesList.addAll(incomingEdges);
        }
        return this.mTempDependenciesList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getDesiredAnchoredChildRect(View view, int i9, Rect rect, Rect rect2) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i9, rect, rect2, coordinatorLayout$LayoutParams, measuredWidth, measuredHeight);
        constrainChildRect(coordinatorLayout$LayoutParams, rect2, measuredWidth, measuredHeight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getLastChildRect(View view, Rect rect) {
        rect.set(((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getLastChildRect());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.mLastInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.getNestedScrollAxes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    public CoordinatorLayout$LayoutParams getResolvedLayoutParams(View view) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (!coordinatorLayout$LayoutParams.mBehaviorResolved) {
            if (view instanceof CoordinatorLayout$AttachedBehavior) {
                CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e(TAG, "Attached behavior class is null");
                }
                coordinatorLayout$LayoutParams.setBehavior(behavior);
                coordinatorLayout$LayoutParams.mBehaviorResolved = true;
                return coordinatorLayout$LayoutParams;
            }
            CoordinatorLayout$DefaultBehavior coordinatorLayout$DefaultBehavior = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                coordinatorLayout$DefaultBehavior = (CoordinatorLayout$DefaultBehavior) superclass.getAnnotation(CoordinatorLayout$DefaultBehavior.class);
                if (coordinatorLayout$DefaultBehavior != null) {
                    break;
                }
            }
            if (coordinatorLayout$DefaultBehavior != null) {
                try {
                    coordinatorLayout$LayoutParams.setBehavior(coordinatorLayout$DefaultBehavior.value().getDeclaredConstructor(null).newInstance(null));
                } catch (Exception e) {
                    Log.e(TAG, "Default behavior class " + coordinatorLayout$DefaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            coordinatorLayout$LayoutParams.mBehaviorResolved = true;
        }
        return coordinatorLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isPointInChildBounds(@NonNull View view, int i9, int i10) {
        Rect rectAcquireTempRect = acquireTempRect();
        getDescendantRect(view, rectAcquireTempRect);
        try {
            return rectAcquireTempRect.contains(i9, i10);
        } finally {
            releaseTempRect(rectAcquireTempRect);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetChildToAnchor(View view, int i9) {
        CoordinatorLayout$Behavior behavior;
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.mAnchorView != null) {
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            Rect rectAcquireTempRect3 = acquireTempRect();
            getDescendantRect(coordinatorLayout$LayoutParams.mAnchorView, rectAcquireTempRect);
            getChildRect(view, false, rectAcquireTempRect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i9, rectAcquireTempRect, rectAcquireTempRect3, coordinatorLayout$LayoutParams, measuredWidth, measuredHeight);
            boolean z8 = (rectAcquireTempRect3.left == rectAcquireTempRect2.left && rectAcquireTempRect3.top == rectAcquireTempRect2.top) ? false : true;
            constrainChildRect(coordinatorLayout$LayoutParams, rectAcquireTempRect3, measuredWidth, measuredHeight);
            int i10 = rectAcquireTempRect3.left - rectAcquireTempRect2.left;
            int i11 = rectAcquireTempRect3.top - rectAcquireTempRect2.top;
            if (i10 != 0) {
                ViewCompat.offsetLeftAndRight(view, i10);
            }
            if (i11 != 0) {
                ViewCompat.offsetTopAndBottom(view, i11);
            }
            if (z8 && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                behavior.onDependentViewChanged(this, view, coordinatorLayout$LayoutParams.mAnchorView);
            }
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
            releaseTempRect(rectAcquireTempRect3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.mIsAttachedToWindow = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    public final void onChildViewsChanged(int i9) {
        int i10;
        CoordinatorLayout$Behavior behavior;
        boolean zOnDependentViewChanged;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        Rect rectAcquireTempRect3 = acquireTempRect();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.mDependencySortedChildren.get(i11);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            if (i9 != 0 || view.getVisibility() != 8) {
                for (int i12 = 0; i12 < i11; i12++) {
                    if (coordinatorLayout$LayoutParams.mAnchorDirectChild == this.mDependencySortedChildren.get(i12)) {
                        offsetChildToAnchor(view, layoutDirection);
                    }
                }
                getChildRect(view, true, rectAcquireTempRect2);
                if (coordinatorLayout$LayoutParams.insetEdge != 0 && !rectAcquireTempRect2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(coordinatorLayout$LayoutParams.insetEdge, layoutDirection);
                    int i13 = absoluteGravity & 112;
                    if (i13 == 48) {
                        rectAcquireTempRect.top = Math.max(rectAcquireTempRect.top, rectAcquireTempRect2.bottom);
                    } else if (i13 == 80) {
                        rectAcquireTempRect.bottom = Math.max(rectAcquireTempRect.bottom, getHeight() - rectAcquireTempRect2.top);
                    }
                    int i14 = absoluteGravity & 7;
                    if (i14 == 3) {
                        rectAcquireTempRect.left = Math.max(rectAcquireTempRect.left, rectAcquireTempRect2.right);
                    } else if (i14 == 5) {
                        rectAcquireTempRect.right = Math.max(rectAcquireTempRect.right, getWidth() - rectAcquireTempRect2.left);
                    }
                }
                if (coordinatorLayout$LayoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0) {
                    offsetChildByInset(view, rectAcquireTempRect, layoutDirection);
                }
                if (i9 != 2) {
                    getLastChildRect(view, rectAcquireTempRect3);
                    if (!rectAcquireTempRect3.equals(rectAcquireTempRect2)) {
                        recordLastChildRect(view, rectAcquireTempRect2);
                        for (i10 = i11 + 1; i10 < size; i10++) {
                            View view2 = this.mDependencySortedChildren.get(i10);
                            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams2 = (CoordinatorLayout$LayoutParams) view2.getLayoutParams();
                            behavior = coordinatorLayout$LayoutParams2.getBehavior();
                            if (behavior == null && behavior.layoutDependsOn(this, view2, view)) {
                                if (i9 == 0 && coordinatorLayout$LayoutParams2.getChangedAfterNestedScroll()) {
                                    coordinatorLayout$LayoutParams2.resetChangedAfterNestedScroll();
                                } else {
                                    if (i9 != 2) {
                                        zOnDependentViewChanged = behavior.onDependentViewChanged(this, view2, view);
                                    } else {
                                        behavior.onDependentViewRemoved(this, view2, view);
                                        zOnDependentViewChanged = true;
                                    }
                                    if (i9 == 1) {
                                        coordinatorLayout$LayoutParams2.setChangedAfterNestedScroll(zOnDependentViewChanged);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i10 < size) {
                        View view3 = this.mDependencySortedChildren.get(i10);
                        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams3 = (CoordinatorLayout$LayoutParams) view3.getLayoutParams();
                        behavior = coordinatorLayout$LayoutParams3.getBehavior();
                        if (behavior == null) {
                        }
                    }
                }
            }
        }
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
        releaseTempRect(rectAcquireTempRect3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        View view = this.mNestedScrollingTarget;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.mIsAttachedToWindow = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.mLastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean zPerformIntercept = performIntercept(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return zPerformIntercept;
        }
        resetTouchBehaviors(true);
        return zPerformIntercept;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        CoordinatorLayout$Behavior behavior;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        for (int i13 = 0; i13 < size; i13++) {
            View view = this.mDependencySortedChildren.get(i13);
            if (view.getVisibility() != 8 && ((behavior = ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getBehavior()) == null || !behavior.onLayoutChild(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLayoutChild(@NonNull View view, int i9) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.checkAnchorChanged()) {
            i.l("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
            return;
        }
        View view2 = coordinatorLayout$LayoutParams.mAnchorView;
        if (view2 != null) {
            layoutChildWithAnchor(view, view2, i9);
            return;
        }
        int i10 = coordinatorLayout$LayoutParams.keyline;
        if (i10 >= 0) {
            layoutChildWithKeyline(view, i10, i9);
        } else {
            layoutChild(view, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:38:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:44:0x010a  */
    /* JADX WARN: Code duplicated, block: B:47:0x012b  */
    /* JADX WARN: Code duplicated, block: B:48:0x012e  */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        int i11;
        int i12;
        int i13;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        CoordinatorLayout$Behavior behavior;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        View view;
        int i21;
        int i22;
        boolean zOnMeasureChild;
        int iMax;
        CoordinatorLayout coordinatorLayout = this;
        coordinatorLayout.prepareChildren();
        coordinatorLayout.ensurePreDrawListener();
        int paddingLeft = coordinatorLayout.getPaddingLeft();
        int paddingTop = coordinatorLayout.getPaddingTop();
        int paddingRight = coordinatorLayout.getPaddingRight();
        int paddingBottom = coordinatorLayout.getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(coordinatorLayout);
        boolean z8 = layoutDirection == 1;
        int mode = View$MeasureSpec.getMode(i9);
        int size = View$MeasureSpec.getSize(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size2 = View$MeasureSpec.getSize(i10);
        int i23 = paddingLeft + paddingRight;
        int i24 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = coordinatorLayout.getSuggestedMinimumWidth();
        int suggestedMinimumHeight = coordinatorLayout.getSuggestedMinimumHeight();
        boolean z9 = coordinatorLayout.mLastInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout);
        int size3 = coordinatorLayout.mDependencySortedChildren.size();
        int i25 = 0;
        int iCombineMeasuredStates = 0;
        while (i25 < size3) {
            View view2 = coordinatorLayout.mDependencySortedChildren.get(i25);
            int i26 = suggestedMinimumWidth;
            if (view2.getVisibility() == 8) {
                i16 = size3;
                i12 = i25;
                i17 = paddingLeft;
                i14 = layoutDirection;
                suggestedMinimumWidth = i26;
                i21 = paddingRight;
            } else {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view2.getLayoutParams();
                int i27 = coordinatorLayout$LayoutParams.keyline;
                if (i27 < 0 || mode == 0) {
                    i11 = suggestedMinimumHeight;
                } else {
                    int keyline = coordinatorLayout.getKeyline(i27);
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(coordinatorLayout$LayoutParams.gravity), layoutDirection) & 7;
                    i11 = suggestedMinimumHeight;
                    if ((absoluteGravity != 3 || z8) && !(absoluteGravity == 5 && z8)) {
                        if ((absoluteGravity == 5 && !z8) || (absoluteGravity == 3 && z8)) {
                            iMax = Math.max(0, keyline - paddingLeft);
                        }
                        if (z9 || ViewCompat.getFitsSystemWindows(view2)) {
                            iMakeMeasureSpec = i9;
                            iMakeMeasureSpec2 = i10;
                        } else {
                            int systemWindowInsetRight = coordinatorLayout.mLastInsets.getSystemWindowInsetRight() + coordinatorLayout.mLastInsets.getSystemWindowInsetLeft();
                            int systemWindowInsetBottom = coordinatorLayout.mLastInsets.getSystemWindowInsetBottom() + coordinatorLayout.mLastInsets.getSystemWindowInsetTop();
                            iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(size - systemWindowInsetRight, mode);
                            iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetBottom, mode2);
                        }
                        behavior = coordinatorLayout$LayoutParams.getBehavior();
                        if (behavior != null) {
                            i16 = size3;
                            int i28 = iMakeMeasureSpec;
                            view = view2;
                            int i29 = i11;
                            i14 = layoutDirection;
                            i15 = i29;
                            i17 = paddingLeft;
                            i18 = i26;
                            i21 = paddingRight;
                            i22 = iCombineMeasuredStates;
                            int i30 = iMakeMeasureSpec2;
                            zOnMeasureChild = behavior.onMeasureChild(this, view, i28, i13, i30, 0);
                            i20 = i28;
                            i19 = i30;
                            if (zOnMeasureChild) {
                                coordinatorLayout = this;
                            }
                            suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                            int iMax2 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                            iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                            suggestedMinimumHeight = iMax2;
                        } else {
                            int i31 = i11;
                            i14 = layoutDirection;
                            i15 = i31;
                            i16 = size3;
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = iMakeMeasureSpec2;
                            i20 = iMakeMeasureSpec;
                            view = view2;
                            i21 = paddingRight;
                            i22 = iCombineMeasuredStates;
                        }
                        View view3 = view;
                        coordinatorLayout = this;
                        coordinatorLayout.onMeasureChild(view3, i20, i13, i19, 0);
                        view = view3;
                        suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                        int iMax3 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                        suggestedMinimumHeight = iMax3;
                    } else {
                        iMax = Math.max(0, (size - paddingRight) - keyline);
                    }
                    int i32 = i25;
                    i13 = iMax;
                    i12 = i32;
                    if (z9) {
                        iMakeMeasureSpec = i9;
                        iMakeMeasureSpec2 = i10;
                    } else {
                        iMakeMeasureSpec = i9;
                        iMakeMeasureSpec2 = i10;
                    }
                    behavior = coordinatorLayout$LayoutParams.getBehavior();
                    if (behavior != null) {
                        i16 = size3;
                        int i210 = iMakeMeasureSpec;
                        view = view2;
                        int i211 = i11;
                        i14 = layoutDirection;
                        i15 = i211;
                        i17 = paddingLeft;
                        i18 = i26;
                        i21 = paddingRight;
                        i22 = iCombineMeasuredStates;
                        int i33 = iMakeMeasureSpec2;
                        zOnMeasureChild = behavior.onMeasureChild(this, view, i210, i13, i33, 0);
                        i20 = i210;
                        i19 = i33;
                        if (zOnMeasureChild) {
                            coordinatorLayout = this;
                        }
                        suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                        int iMax4 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                        suggestedMinimumHeight = iMax4;
                    } else {
                        int i34 = i11;
                        i14 = layoutDirection;
                        i15 = i34;
                        i16 = size3;
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = iMakeMeasureSpec2;
                        i20 = iMakeMeasureSpec;
                        view = view2;
                        i21 = paddingRight;
                        i22 = iCombineMeasuredStates;
                    }
                    View view4 = view;
                    coordinatorLayout = this;
                    coordinatorLayout.onMeasureChild(view4, i20, i13, i19, 0);
                    view = view4;
                    suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                    int iMax5 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                    suggestedMinimumHeight = iMax5;
                }
                i12 = i25;
                i13 = 0;
                if (z9) {
                    iMakeMeasureSpec = i9;
                    iMakeMeasureSpec2 = i10;
                } else {
                    iMakeMeasureSpec = i9;
                    iMakeMeasureSpec2 = i10;
                }
                behavior = coordinatorLayout$LayoutParams.getBehavior();
                if (behavior != null) {
                    i16 = size3;
                    int i212 = iMakeMeasureSpec;
                    view = view2;
                    int i213 = i11;
                    i14 = layoutDirection;
                    i15 = i213;
                    i17 = paddingLeft;
                    i18 = i26;
                    i21 = paddingRight;
                    i22 = iCombineMeasuredStates;
                    int i35 = iMakeMeasureSpec2;
                    zOnMeasureChild = behavior.onMeasureChild(this, view, i212, i13, i35, 0);
                    i20 = i212;
                    i19 = i35;
                    if (zOnMeasureChild) {
                        coordinatorLayout = this;
                    }
                    suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                    int iMax6 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                    suggestedMinimumHeight = iMax6;
                } else {
                    int i36 = i11;
                    i14 = layoutDirection;
                    i15 = i36;
                    i16 = size3;
                    i17 = paddingLeft;
                    i18 = i26;
                    i19 = iMakeMeasureSpec2;
                    i20 = iMakeMeasureSpec;
                    view = view2;
                    i21 = paddingRight;
                    i22 = iCombineMeasuredStates;
                }
                View view5 = view;
                coordinatorLayout = this;
                coordinatorLayout.onMeasureChild(view5, i20, i13, i19, 0);
                view = view5;
                suggestedMinimumWidth = Math.max(i18, view.getMeasuredWidth() + i23 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin);
                int iMax7 = Math.max(i15, view.getMeasuredHeight() + i24 + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                suggestedMinimumHeight = iMax7;
            }
            i25 = i12 + 1;
            paddingLeft = i17;
            paddingRight = i21;
            layoutDirection = i14;
            size3 = i16;
        }
        int i37 = iCombineMeasuredStates;
        coordinatorLayout.setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i9, (-16777216) & i37), View.resolveSizeAndState(suggestedMinimumHeight, i10, i37 << 16));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMeasureChild(View view, int i9, int i10, int i11, int i12) {
        measureChildWithMargins(view, i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:6:0x0015  */
    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f8, float f9, boolean z8) {
        CoordinatorLayout$Behavior behavior;
        View view2;
        float f10;
        float f11;
        boolean z9;
        int childCount = getChildCount();
        int i9 = 0;
        boolean zOnNestedFling = false;
        while (i9 < childCount) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                view2 = view;
                f10 = f8;
                f11 = f9;
                z9 = z8;
            } else {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(0) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    view2 = view;
                    f10 = f8;
                    f11 = f9;
                    z9 = z8;
                    zOnNestedFling |= behavior.onNestedFling(this, childAt, view2, f10, f11, z9);
                } else {
                    view2 = view;
                    f10 = f8;
                    f11 = f9;
                    z9 = z8;
                }
            }
            i9++;
            view = view2;
            f8 = f10;
            f9 = f11;
            z8 = z9;
        }
        if (zOnNestedFling) {
            onChildViewsChanged(1);
        }
        return zOnNestedFling;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:6:0x0015  */
    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f8, float f9) {
        CoordinatorLayout$Behavior behavior;
        View view2;
        float f10;
        float f11;
        int childCount = getChildCount();
        int i9 = 0;
        boolean zOnNestedPreFling = false;
        while (i9 < childCount) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                view2 = view;
                f10 = f8;
                f11 = f9;
            } else {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(0) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    view2 = view;
                    f10 = f8;
                    f11 = f9;
                    zOnNestedPreFling |= behavior.onNestedPreFling(this, childAt, view2, f10, f11);
                } else {
                    view2 = view;
                    f10 = f8;
                    f11 = f9;
                }
            }
            i9++;
            view = view2;
            f8 = f10;
            f9 = f11;
        }
        return zOnNestedPreFling;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i9, int i10, int[] iArr, int i11) {
        CoordinatorLayout$Behavior behavior;
        int childCount = getChildCount();
        boolean z8 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i11) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i9, i10, iArr2, i11);
                    int[] iArr3 = this.mBehaviorConsumed;
                    iMax = i9 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.mBehaviorConsumed;
                    iMax2 = i10 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z8 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z8) {
            onChildViewsChanged(1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13, @NonNull int[] iArr) {
        CoordinatorLayout$Behavior behavior;
        int childCount = getChildCount();
        boolean z8 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i13) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedScroll(this, childAt, view, i9, i10, i11, i12, i13, iArr2);
                    int[] iArr3 = this.mBehaviorConsumed;
                    iMax = i11 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.mBehaviorConsumed;
                    iMax2 = i12 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z8 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z8) {
            onChildViewsChanged(1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i9, int i10) {
        CoordinatorLayout$Behavior behavior;
        View view3;
        View view4;
        int i11;
        int i12;
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i9, i10);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        int i13 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
            if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i10) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                view3 = view;
                view4 = view2;
                i11 = i9;
                i12 = i10;
                behavior.onNestedScrollAccepted(this, childAt, view3, view4, i11, i12);
            } else {
                view3 = view;
                view4 = view2;
                i11 = i9;
                i12 = i10;
            }
            i13++;
            view = view3;
            view2 = view4;
            i9 = i11;
            i10 = i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof CoordinatorLayout$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        CoordinatorLayout$SavedState coordinatorLayout$SavedState = (CoordinatorLayout$SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout$SavedState.getSuperState());
        SparseArray<Parcelable> sparseArray = coordinatorLayout$SavedState.behaviorStates;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            int id = childAt.getId();
            CoordinatorLayout$Behavior behavior = getResolvedLayoutParams(childAt).getBehavior();
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState;
        CoordinatorLayout$SavedState coordinatorLayout$SavedState = new CoordinatorLayout$SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            int id = childAt.getId();
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (id != -1 && behavior != null && (parcelableOnSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, parcelableOnSaveInstanceState);
            }
        }
        coordinatorLayout$SavedState.behaviorStates = sparseArray;
        return coordinatorLayout$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i9, int i10) {
        int childCount = getChildCount();
        boolean z8 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
                if (behavior != null) {
                    boolean zOnStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i9, i10);
                    z8 |= zOnStartNestedScroll;
                    coordinatorLayout$LayoutParams.setNestedScrollAccepted(i10, zOnStartNestedScroll);
                } else {
                    coordinatorLayout$LayoutParams.setNestedScrollAccepted(i10, false);
                }
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i9) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view, i9);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
            if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i9)) {
                CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view, i9);
                }
                coordinatorLayout$LayoutParams.resetNestedScroll(i9);
                coordinatorLayout$LayoutParams.resetChangedAfterNestedScroll();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
  0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0024, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zPerformIntercept;
        boolean zOnTouchEvent;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.mBehaviorTouchView == null) {
            zPerformIntercept = performIntercept(motionEvent, 1);
            if (!zPerformIntercept) {
                zOnTouchEvent = false;
            }
            motionEventObtain = null;
            if (this.mBehaviorTouchView == null) {
                zOnTouchEvent |= super.onTouchEvent(motionEvent);
            } else if (zPerformIntercept) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return zOnTouchEvent;
            }
            resetTouchBehaviors(false);
            return zOnTouchEvent;
        }
        zPerformIntercept = false;
        CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) this.mBehaviorTouchView.getLayoutParams()).getBehavior();
        if (behavior != null) {
            zOnTouchEvent = behavior.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
        } else {
            zOnTouchEvent = false;
        }
        motionEventObtain = null;
        if (this.mBehaviorTouchView == null) {
            zOnTouchEvent |= super.onTouchEvent(motionEvent);
        } else if (zPerformIntercept) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked == 1) {
        }
        resetTouchBehaviors(false);
        return zOnTouchEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recordLastChildRect(View view, Rect rect) {
        ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).setLastChildRect(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z8) {
        CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getBehavior();
        if (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z8)) {
            return super.requestChildRectangleOnScreen(view, rect, z8);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z8) {
        super.requestDisallowInterceptTouchEvent(z8);
        if (!z8 || this.mDisallowInterceptReset) {
            return;
        }
        resetTouchBehaviors(false);
        this.mDisallowInterceptReset = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setFitsSystemWindows(boolean z8) {
        super.setFitsSystemWindows(z8);
        setupForInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup$OnHierarchyChangeListener viewGroup$OnHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = viewGroup$OnHierarchyChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.mStatusBarBackground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.mStatusBarBackground = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.mStatusBarBackground, ViewCompat.getLayoutDirection(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarBackgroundColor(@ColorInt int i9) {
        setStatusBarBackground(new ColorDrawable(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarBackgroundResource(@DrawableRes int i9) {
        setStatusBarBackground(i9 != 0 ? ContextCompat.getDrawable(getContext(), i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        boolean z8 = i9 == 0;
        Drawable drawable = this.mStatusBarBackground;
        if (drawable == null || drawable.isVisible() == z8) {
            return;
        }
        this.mStatusBarBackground.setVisible(z8, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final WindowInsetsCompat setWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        if (ObjectsCompat.equals(this.mLastInsets, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.mLastInsets = windowInsetsCompat;
        boolean z8 = false;
        boolean z9 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.mDrawStatusBarBackground = z9;
        if (!z9 && getBackground() == null) {
            z8 = true;
        }
        setWillNotDraw(z8);
        WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsetsToBehaviors = dispatchApplyWindowInsetsToBehaviors(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompatDispatchApplyWindowInsetsToBehaviors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    public CoordinatorLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new CoordinatorLayout$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i9) {
        onNestedScrollAccepted(view, view2, i9, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i9) {
        return onStartNestedScroll(view, view2, i9, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i9, int i10, int[] iArr) {
        onNestedPreScroll(view, i9, i10, iArr, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i9, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i9, i10, i11, i12, 0, this.mNestedScrollingV2ConsumedCompat);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i9, int i10, int i11, int i12) {
        onNestedScroll(view, i9, i10, i11, i12, 0);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }
}
