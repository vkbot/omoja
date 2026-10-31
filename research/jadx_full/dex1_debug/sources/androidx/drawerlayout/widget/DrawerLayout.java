package androidx.drawerlayout.widget;

import android.R$attr;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.WindowInsets;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import androidx.drawerlayout.R$dimen;
import androidx.drawerlayout.R$styleable;
import androidx.navigation.b;
import j1.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawerLayout extends ViewGroup implements Openable {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.drawerlayout.widget.DrawerLayout";
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private static boolean sEdgeSizeUsingSystemGestureInsets;
    private final AccessibilityViewCommand mActionDismiss;
    private final DrawerLayout$ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private Rect mChildHitRect;
    private Matrix mChildInvertedMatrix;
    private boolean mChildrenCanceledTouch;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final DrawerLayout$ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;

    @Nullable
    private DrawerLayout$DrawerListener mListener;
    private List<DrawerLayout$DrawerListener> mListeners;
    private int mLockModeEnd;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mLockModeStart;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final DrawerLayout$ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowEnd;
    private Drawable mShadowLeft;
    private Drawable mShadowLeftResolved;
    private Drawable mShadowRight;
    private Drawable mShadowRightResolved;
    private Drawable mShadowStart;
    private Drawable mStatusBarBackground;
    private CharSequence mTitleLeft;
    private CharSequence mTitleRight;
    private static final int[] THEME_ATTRS = {R$attr.colorPrimaryDark};
    static final int[] LAYOUT_ATTRS = {R$attr.layout_gravity};
    static final boolean CAN_HIDE_DESCENDANTS = true;
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        sEdgeSizeUsingSystemGestureInsets = Build$VERSION.SDK_INT >= 29;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mChildAccessibilityDelegate = new DrawerLayout$ChildAccessibilityDelegate();
        this.mScrimColor = DEFAULT_SCRIM_COLOR;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = true;
        this.mLockModeLeft = 3;
        this.mLockModeRight = 3;
        this.mLockModeStart = 3;
        this.mLockModeEnd = 3;
        this.mShadowStart = null;
        this.mShadowEnd = null;
        this.mShadowLeft = null;
        this.mShadowRight = null;
        this.mActionDismiss = new DrawerLayout$1(this);
        setDescendantFocusability(262144);
        float f8 = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f8) + 0.5f);
        float f9 = f8 * 400.0f;
        DrawerLayout$ViewDragCallback drawerLayout$ViewDragCallback = new DrawerLayout$ViewDragCallback(this, 3);
        this.mLeftCallback = drawerLayout$ViewDragCallback;
        DrawerLayout$ViewDragCallback drawerLayout$ViewDragCallback2 = new DrawerLayout$ViewDragCallback(this, 5);
        this.mRightCallback = drawerLayout$ViewDragCallback2;
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 1.0f, drawerLayout$ViewDragCallback);
        this.mLeftDragger = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(1);
        viewDragHelperCreate.setMinVelocity(f9);
        drawerLayout$ViewDragCallback.setDragger(viewDragHelperCreate);
        ViewDragHelper viewDragHelperCreate2 = ViewDragHelper.create(this, 1.0f, drawerLayout$ViewDragCallback2);
        this.mRightDragger = viewDragHelperCreate2;
        viewDragHelperCreate2.setEdgeTrackingEnabled(2);
        viewDragHelperCreate2.setMinVelocity(f9);
        drawerLayout$ViewDragCallback2.setDragger(viewDragHelperCreate2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new DrawerLayout$AccessibilityDelegate(this));
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new DrawerLayout$2(this));
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(THEME_ATTRS);
            try {
                this.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.DrawerLayout, i9, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(R$styleable.DrawerLayout_elevation)) {
                this.mDrawerElevation = typedArrayObtainStyledAttributes2.getDimension(R$styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.mDrawerElevation = getResources().getDimension(R$dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.mNonDrawerViews = new ArrayList<>();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean dispatchTransformedGenericPointerEvent(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(transformedMotionEvent);
            transformedMotionEvent.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MotionEvent getTransformedMotionEvent(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.mChildInvertedMatrix == null) {
                this.mChildInvertedMatrix = new Matrix();
            }
            matrix.invert(this.mChildInvertedMatrix);
            motionEventObtain.transform(this.mChildInvertedMatrix);
        }
        return motionEventObtain;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String gravityToString(int i9) {
        if ((i9 & 3) == 3) {
            return "LEFT";
        }
        return (i9 & 5) == 5 ? "RIGHT" : Integer.toHexString(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasPeekingDrawer() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (((DrawerLayout$LayoutParams) getChildAt(i9).getLayoutParams()).isPeeking) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasVisibleDrawer() {
        return findVisibleDrawer() != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean includeChildForAccessibility(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isInBoundsOfChild(float f8, float f9, View view) {
        if (this.mChildHitRect == null) {
            this.mChildHitRect = new Rect();
        }
        view.getHitRect(this.mChildHitRect);
        return this.mChildHitRect.contains((int) f8, (int) f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void mirror(Drawable drawable, int i9) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return;
        }
        DrawableCompat.setLayoutDirection(drawable, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Drawable resolveLeftShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.mShadowStart;
            if (drawable != null) {
                mirror(drawable, layoutDirection);
                return this.mShadowStart;
            }
        } else {
            Drawable drawable2 = this.mShadowEnd;
            if (drawable2 != null) {
                mirror(drawable2, layoutDirection);
                return this.mShadowEnd;
            }
        }
        return this.mShadowLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Drawable resolveRightShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.mShadowEnd;
            if (drawable != null) {
                mirror(drawable, layoutDirection);
                return this.mShadowEnd;
            }
        } else {
            Drawable drawable2 = this.mShadowStart;
            if (drawable2 != null) {
                mirror(drawable2, layoutDirection);
                return this.mShadowStart;
            }
        }
        return this.mShadowRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resolveShadowDrawables() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return;
        }
        this.mShadowLeftResolved = resolveLeftShadow();
        this.mShadowRightResolved = resolveRightShadow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateChildAccessibilityAction(View view) {
        AccessibilityNodeInfoCompat$AccessibilityActionCompat accessibilityNodeInfoCompat$AccessibilityActionCompat = AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityNodeInfoCompat$AccessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityNodeInfoCompat$AccessibilityActionCompat, null, this.mActionDismiss);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateChildrenImportantForAccessibility(View view, boolean z8) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if ((z8 || isDrawerView(childAt)) && !(z8 && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDrawerListener(@NonNull DrawerLayout$DrawerListener drawerLayout$DrawerListener) {
        if (drawerLayout$DrawerListener == null) {
            return;
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(drawerLayout$DrawerListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i9, int i10) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z8 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (!isDrawerView(childAt)) {
                this.mNonDrawerViews.add(childAt);
            } else if (isDrawerOpen(childAt)) {
                childAt.addFocusables(arrayList, i9, i10);
                z8 = true;
            }
        }
        if (!z8) {
            int size = this.mNonDrawerViews.size();
            for (int i12 = 0; i12 < size; i12++) {
                View view = this.mNonDrawerViews.get(i12);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i9, i10);
                }
            }
        }
        this.mNonDrawerViews.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super.addView(view, i9, viewGroup$LayoutParams);
        if (findOpenDrawer() != null || isDrawerView(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (CAN_HIDE_DESCENDANTS) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.mChildAccessibilityDelegate);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancelChildViewTouch() {
        if (this.mChildrenCanceledTouch) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            getChildAt(i9).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.mChildrenCanceledTouch = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkDrawerViewAbsoluteGravity(View view, int i9) {
        return (getDrawerViewAbsoluteGravity(view) & i9) == i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof DrawerLayout$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public void close() {
        closeDrawer(GravityCompat.START);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void closeDrawer(@NonNull View view, boolean z8) {
        if (!isDrawerView(view)) {
            b.p(view, "View ", " is not a sliding drawer");
            return;
        }
        DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) view.getLayoutParams();
        if (this.mFirstLayout) {
            drawerLayout$LayoutParams.onScreen = 0.0f;
            drawerLayout$LayoutParams.openState = 0;
        } else if (z8) {
            drawerLayout$LayoutParams.openState |= 4;
            if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
        } else {
            moveDrawerToOffset(view, 0.0f);
            updateDrawerState(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void closeDrawers(boolean z8) {
        int childCount = getChildCount();
        boolean zSmoothSlideViewTo = false;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt) && (!z8 || drawerLayout$LayoutParams.isPeeking)) {
                zSmoothSlideViewTo |= checkDrawerViewAbsoluteGravity(childAt, 3) ? this.mLeftDragger.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : this.mRightDragger.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                drawerLayout$LayoutParams.isPeeking = false;
            }
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (zSmoothSlideViewTo) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i9 = 0; i9 < childCount; i9++) {
            fMax = Math.max(fMax, ((DrawerLayout$LayoutParams) getChildAt(i9).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = fMax;
        boolean zContinueSettling = this.mLeftDragger.continueSettling(true);
        boolean zContinueSettling2 = this.mRightDragger.continueSettling(true);
        if (zContinueSettling || zContinueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.mScrimOpacity <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x8 = motionEvent.getX();
        float y8 = motionEvent.getY();
        for (int i9 = childCount - 1; i9 >= 0; i9--) {
            View childAt = getChildAt(i9);
            if (isInBoundsOfChild(x8, y8, childAt) && !isContentView(childAt) && dispatchTransformedGenericPointerEvent(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnDrawerClosed(View view) {
        View rootView;
        DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) view.getLayoutParams();
        if ((drawerLayout$LayoutParams.openState & 1) == 1) {
            drawerLayout$LayoutParams.openState = 0;
            List<DrawerLayout$DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerClosed(view);
                }
            }
            updateChildrenImportantForAccessibility(view, false);
            updateChildAccessibilityAction(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnDrawerOpened(View view) {
        DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) view.getLayoutParams();
        if ((drawerLayout$LayoutParams.openState & 1) == 0) {
            drawerLayout$LayoutParams.openState = 1;
            List<DrawerLayout$DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerOpened(view);
                }
            }
            updateChildrenImportantForAccessibility(view, true);
            updateChildAccessibilityAction(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnDrawerSlide(View view, float f8) {
        List<DrawerLayout$DrawerListener> list = this.mListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerSlide(view, f8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j9) {
        int height = getHeight();
        boolean zIsContentView = isContentView(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i9 = 0;
        if (zIsContentView) {
            int childCount = getChildCount();
            int i10 = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt != view && childAt.getVisibility() == 0 && hasOpaqueBackground(childAt) && isDrawerView(childAt) && childAt.getHeight() >= height) {
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i10) {
                            i10 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i10, 0, width, getHeight());
            i9 = i10;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j9);
        canvas.restoreToCount(iSave);
        float f8 = this.mScrimOpacity;
        if (f8 > 0.0f && zIsContentView) {
            int i12 = this.mScrimColor;
            this.mScrimPaint.setColor((i12 & ViewCompat.MEASURED_SIZE_MASK) | (((int) ((((-16777216) & i12) >>> 24) * f8)) << 24));
            canvas.drawRect(i9, 0.0f, width, getHeight(), this.mScrimPaint);
            return zDrawChild;
        }
        if (this.mShadowLeftResolved != null && checkDrawerViewAbsoluteGravity(view, 3)) {
            int intrinsicWidth = this.mShadowLeftResolved.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.mLeftDragger.getEdgeSize(), 1.0f));
            this.mShadowLeftResolved.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.mShadowLeftResolved.setAlpha((int) (fMax * 255.0f));
            this.mShadowLeftResolved.draw(canvas);
            return zDrawChild;
        }
        if (this.mShadowRightResolved != null && checkDrawerViewAbsoluteGravity(view, 5)) {
            int intrinsicWidth2 = this.mShadowRightResolved.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.mRightDragger.getEdgeSize(), 1.0f));
            this.mShadowRightResolved.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.mShadowRightResolved.setAlpha((int) (fMax2 * 255.0f));
            this.mShadowRightResolved.draw(canvas);
        }
        return zDrawChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findDrawerWithGravity(int i9) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i9, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((getDrawerViewAbsoluteGravity(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if ((((DrawerLayout$LayoutParams) childAt.getLayoutParams()).openState & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new DrawerLayout$LayoutParams(-1, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof DrawerLayout$LayoutParams) {
            return new DrawerLayout$LayoutParams((DrawerLayout$LayoutParams) viewGroup$LayoutParams);
        }
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new DrawerLayout$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new DrawerLayout$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDrawerElevation() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return this.mDrawerElevation;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDrawerLockMode(int i9) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i9 == 3) {
            int i10 = this.mLockModeLeft;
            if (i10 != 3) {
                return i10;
            }
            int i11 = layoutDirection == 0 ? this.mLockModeStart : this.mLockModeEnd;
            if (i11 != 3) {
                return i11;
            }
            return 0;
        }
        if (i9 == 5) {
            int i12 = this.mLockModeRight;
            if (i12 != 3) {
                return i12;
            }
            int i13 = layoutDirection == 0 ? this.mLockModeEnd : this.mLockModeStart;
            if (i13 != 3) {
                return i13;
            }
            return 0;
        }
        if (i9 == 8388611) {
            int i14 = this.mLockModeStart;
            if (i14 != 3) {
                return i14;
            }
            int i15 = layoutDirection == 0 ? this.mLockModeLeft : this.mLockModeRight;
            if (i15 != 3) {
                return i15;
            }
            return 0;
        }
        if (i9 != 8388613) {
            return 0;
        }
        int i16 = this.mLockModeEnd;
        if (i16 != 3) {
            return i16;
        }
        int i17 = layoutDirection == 0 ? this.mLockModeRight : this.mLockModeLeft;
        if (i17 != 3) {
            return i17;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getDrawerTitle(int i9) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i9, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.mTitleLeft;
        }
        if (absoluteGravity == 5) {
            return this.mTitleRight;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDrawerViewAbsoluteGravity(View view) {
        return GravityCompat.getAbsoluteGravity(((DrawerLayout$LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDrawerViewOffset(View view) {
        return ((DrawerLayout$LayoutParams) view.getLayoutParams()).onScreen;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.mStatusBarBackground;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isContentView(View view) {
        return ((DrawerLayout$LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDrawerOpen(@NonNull View view) {
        if (isDrawerView(view)) {
            return (((DrawerLayout$LayoutParams) view.getLayoutParams()).openState & 1) == 1;
        }
        b.p(view, "View ", " is not a drawer");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDrawerView(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((DrawerLayout$LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDrawerVisible(@NonNull View view) {
        if (isDrawerView(view)) {
            return ((DrawerLayout$LayoutParams) view.getLayoutParams()).onScreen > 0.0f;
        }
        b.p(view, "View ", " is not a drawer");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void moveDrawerToOffset(View view, float f8) {
        float drawerViewOffset = getDrawerViewOffset(view);
        float width = view.getWidth();
        int i9 = ((int) (width * f8)) - ((int) (drawerViewOffset * width));
        if (!checkDrawerViewAbsoluteGravity(view, 3)) {
            i9 = -i9;
        }
        view.offsetLeftAndRight(i9);
        setDrawerViewOffset(view, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        Object obj = this.mLastInsets;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        View viewFindTopChildUnder;
        int actionMasked = motionEvent.getActionMasked();
        boolean zShouldInterceptTouchEvent = this.mLeftDragger.shouldInterceptTouchEvent(motionEvent) | this.mRightDragger.shouldInterceptTouchEvent(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                closeDrawers(true);
                this.mChildrenCanceledTouch = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    closeDrawers(true);
                    this.mChildrenCanceledTouch = false;
                }
            } else if (this.mLeftDragger.checkTouchSlop(3)) {
                this.mLeftCallback.removeCallbacks();
                this.mRightCallback.removeCallbacks();
            }
            z8 = false;
        } else {
            float x8 = motionEvent.getX();
            float y8 = motionEvent.getY();
            this.mInitialMotionX = x8;
            this.mInitialMotionY = y8;
            z8 = this.mScrimOpacity > 0.0f && (viewFindTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x8, (int) y8)) != null && isContentView(viewFindTopChildUnder);
            this.mChildrenCanceledTouch = false;
        }
        return zShouldInterceptTouchEvent || z8 || hasPeekingDrawer() || this.mChildrenCanceledTouch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 != 4 || !hasVisibleDrawer()) {
            return super.onKeyDown(i9, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i9, KeyEvent keyEvent) {
        if (i9 != 4) {
            return super.onKeyUp(i9, keyEvent);
        }
        View viewFindVisibleDrawer = findVisibleDrawer();
        if (viewFindVisibleDrawer != null && getDrawerLockMode(viewFindVisibleDrawer) == 0) {
            closeDrawers();
        }
        return viewFindVisibleDrawer != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        WindowInsets rootWindowInsets;
        float f8;
        int i13;
        boolean z9 = true;
        this.mInLayout = true;
        int i14 = i11 - i9;
        int childCount = getChildCount();
        int i15 = 0;
        while (i15 < childCount) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    int i16 = ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).leftMargin;
                    childAt.layout(i16, ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        float f9 = measuredWidth;
                        i13 = (-measuredWidth) + ((int) (drawerLayout$LayoutParams.onScreen * f9));
                        f8 = (measuredWidth + i13) / f9;
                    } else {
                        float f10 = measuredWidth;
                        int i17 = i14 - ((int) (drawerLayout$LayoutParams.onScreen * f10));
                        f8 = (i14 - i17) / f10;
                        i13 = i17;
                    }
                    boolean z10 = f8 != drawerLayout$LayoutParams.onScreen ? z9 : false;
                    int i18 = drawerLayout$LayoutParams.gravity & 112;
                    if (i18 == 16) {
                        int i19 = i12 - i10;
                        int i20 = (i19 - measuredHeight) / 2;
                        int i21 = ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin;
                        if (i20 < i21) {
                            i20 = i21;
                        } else {
                            int i22 = i20 + measuredHeight;
                            int i23 = ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin;
                            if (i22 > i19 - i23) {
                                i20 = (i19 - i23) - measuredHeight;
                            }
                        }
                        childAt.layout(i13, i20, measuredWidth + i13, measuredHeight + i20);
                    } else if (i18 != 80) {
                        int i24 = ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin;
                        childAt.layout(i13, i24, measuredWidth + i13, measuredHeight + i24);
                    } else {
                        int i25 = i12 - i10;
                        childAt.layout(i13, (i25 - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i13, i25 - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin);
                    }
                    if (z10) {
                        setDrawerViewOffset(childAt, f8);
                    }
                    int i26 = drawerLayout$LayoutParams.onScreen > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i26) {
                        childAt.setVisibility(i26);
                    }
                }
            }
            i15++;
            z9 = true;
        }
        if (sEdgeSizeUsingSystemGestureInsets && (rootWindowInsets = getRootWindowInsets()) != null) {
            Insets systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.mLeftDragger;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.left));
            ViewDragHelper viewDragHelper2 = this.mRightDragger;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.right));
        }
        this.mInLayout = false;
        this.mFirstLayout = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i9);
        int size2 = View$MeasureSpec.getSize(i10);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                i.k("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
                return;
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z8 = this.mLastInsets != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z9 = false;
        boolean z10 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) childAt.getLayoutParams();
                if (z8) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(drawerLayout$LayoutParams.gravity, layoutDirection);
                    boolean fitsSystemWindows = ViewCompat.getFitsSystemWindows(childAt);
                    Object obj = this.mLastInsets;
                    if (fitsSystemWindows) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) obj;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) obj;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (isContentView(childAt)) {
                    childAt.measure(View$MeasureSpec.makeMeasureSpec((size - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).leftMargin) - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).rightMargin, BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin) - ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin, BasicMeasure.EXACTLY));
                } else {
                    if (!isDrawerView(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i11 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f8 = this.mDrawerElevation;
                        if (elevation != f8) {
                            ViewCompat.setElevation(childAt, f8);
                        }
                    }
                    int drawerViewAbsoluteGravity = getDrawerViewAbsoluteGravity(childAt) & 7;
                    boolean z11 = drawerViewAbsoluteGravity == 3;
                    if ((z11 && z9) || (!z11 && z10)) {
                        n0.b.j(gravityToString(drawerViewAbsoluteGravity), "Child drawer has absolute gravity ", " but this DrawerLayout already has a drawer view along that edge");
                        return;
                    }
                    if (z11) {
                        z9 = true;
                    } else {
                        z10 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i9, this.mMinDrawerMargin + ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).rightMargin, ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).width), ViewGroup.getChildMeasureSpec(i10, ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).bottomMargin, ((ViewGroup$MarginLayoutParams) drawerLayout$LayoutParams).height));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View viewFindDrawerWithGravity;
        if (!(parcelable instanceof DrawerLayout$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        DrawerLayout$SavedState drawerLayout$SavedState = (DrawerLayout$SavedState) parcelable;
        super.onRestoreInstanceState(drawerLayout$SavedState.getSuperState());
        int i9 = drawerLayout$SavedState.openDrawerGravity;
        if (i9 != 0 && (viewFindDrawerWithGravity = findDrawerWithGravity(i9)) != null) {
            openDrawer(viewFindDrawerWithGravity);
        }
        int i10 = drawerLayout$SavedState.lockModeLeft;
        if (i10 != 3) {
            setDrawerLockMode(i10, 3);
        }
        int i11 = drawerLayout$SavedState.lockModeRight;
        if (i11 != 3) {
            setDrawerLockMode(i11, 5);
        }
        int i12 = drawerLayout$SavedState.lockModeStart;
        if (i12 != 3) {
            setDrawerLockMode(i12, GravityCompat.START);
        }
        int i13 = drawerLayout$SavedState.lockModeEnd;
        if (i13 != 3) {
            setDrawerLockMode(i13, GravityCompat.END);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRtlPropertiesChanged(int i9) {
        resolveShadowDrawables();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        DrawerLayout$SavedState drawerLayout$SavedState = new DrawerLayout$SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) getChildAt(i9).getLayoutParams();
            int i10 = drawerLayout$LayoutParams.openState;
            boolean z8 = i10 == 1;
            boolean z9 = i10 == 2;
            if (z8 || z9) {
                drawerLayout$SavedState.openDrawerGravity = drawerLayout$LayoutParams.gravity;
                break;
            }
        }
        drawerLayout$SavedState.lockModeLeft = this.mLockModeLeft;
        drawerLayout$SavedState.lockModeRight = this.mLockModeRight;
        drawerLayout$SavedState.lockModeStart = this.mLockModeStart;
        drawerLayout$SavedState.lockModeEnd = this.mLockModeEnd;
        return drawerLayout$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        View viewFindOpenDrawer;
        this.mLeftDragger.processTouchEvent(motionEvent);
        this.mRightDragger.processTouchEvent(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x8 = motionEvent.getX();
            float y8 = motionEvent.getY();
            this.mInitialMotionX = x8;
            this.mInitialMotionY = y8;
            this.mChildrenCanceledTouch = false;
        } else if (action == 1) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            View viewFindTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x9, (int) y9);
            if (viewFindTopChildUnder != null && isContentView(viewFindTopChildUnder)) {
                float f8 = x9 - this.mInitialMotionX;
                float f9 = y9 - this.mInitialMotionY;
                int touchSlop = this.mLeftDragger.getTouchSlop();
                z8 = (f9 * f9) + (f8 * f8) >= ((float) (touchSlop * touchSlop)) || (viewFindOpenDrawer = findOpenDrawer()) == null || getDrawerLockMode(viewFindOpenDrawer) == 2;
            }
            closeDrawers(z8);
        } else if (action == 3) {
            closeDrawers(true);
            this.mChildrenCanceledTouch = false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public void open() {
        openDrawer(GravityCompat.START);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void openDrawer(@NonNull View view, boolean z8) {
        if (!isDrawerView(view)) {
            b.p(view, "View ", " is not a sliding drawer");
            return;
        }
        DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) view.getLayoutParams();
        if (this.mFirstLayout) {
            drawerLayout$LayoutParams.onScreen = 1.0f;
            drawerLayout$LayoutParams.openState = 1;
            updateChildrenImportantForAccessibility(view, true);
            updateChildAccessibilityAction(view);
        } else if (z8) {
            drawerLayout$LayoutParams.openState |= 2;
            if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            moveDrawerToOffset(view, 1.0f);
            updateDrawerState(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeDrawerListener(@NonNull DrawerLayout$DrawerListener drawerLayout$DrawerListener) {
        List<DrawerLayout$DrawerListener> list;
        if (drawerLayout$DrawerListener == null || (list = this.mListeners) == null) {
            return;
        }
        list.remove(drawerLayout$DrawerListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z8) {
        super.requestDisallowInterceptTouchEvent(z8);
        if (z8) {
            closeDrawers(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInLayout) {
            return;
        }
        super.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setChildInsets(Object obj, boolean z8) {
        this.mLastInsets = obj;
        this.mDrawStatusBarBackground = z8;
        setWillNotDraw(!z8 && getBackground() == null);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawerElevation(float f8) {
        this.mDrawerElevation = f8;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (isDrawerView(childAt)) {
                ViewCompat.setElevation(childAt, this.mDrawerElevation);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setDrawerListener(DrawerLayout$DrawerListener drawerLayout$DrawerListener) {
        DrawerLayout$DrawerListener drawerLayout$DrawerListener2 = this.mListener;
        if (drawerLayout$DrawerListener2 != null) {
            removeDrawerListener(drawerLayout$DrawerListener2);
        }
        if (drawerLayout$DrawerListener != null) {
            addDrawerListener(drawerLayout$DrawerListener);
        }
        this.mListener = drawerLayout$DrawerListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawerLockMode(int i9, int i10) {
        View viewFindDrawerWithGravity;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this));
        if (i10 == 3) {
            this.mLockModeLeft = i9;
        } else if (i10 == 5) {
            this.mLockModeRight = i9;
        } else if (i10 == 8388611) {
            this.mLockModeStart = i9;
        } else if (i10 == 8388613) {
            this.mLockModeEnd = i9;
        }
        if (i9 != 0) {
            (absoluteGravity == 3 ? this.mLeftDragger : this.mRightDragger).cancel();
        }
        if (i9 != 1) {
            if (i9 == 2 && (viewFindDrawerWithGravity = findDrawerWithGravity(absoluteGravity)) != null) {
                openDrawer(viewFindDrawerWithGravity);
                return;
            }
            return;
        }
        View viewFindDrawerWithGravity2 = findDrawerWithGravity(absoluteGravity);
        if (viewFindDrawerWithGravity2 != null) {
            closeDrawer(viewFindDrawerWithGravity2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawerShadow(Drawable drawable, int i9) {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return;
        }
        if ((i9 & GravityCompat.START) == 8388611) {
            this.mShadowStart = drawable;
        } else if ((i9 & GravityCompat.END) == 8388613) {
            this.mShadowEnd = drawable;
        } else if ((i9 & 3) == 3) {
            this.mShadowLeft = drawable;
        } else if ((i9 & 5) != 5) {
            return;
        } else {
            this.mShadowRight = drawable;
        }
        resolveShadowDrawables();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawerTitle(int i9, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i9, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.mTitleLeft = charSequence;
        } else if (absoluteGravity == 5) {
            this.mTitleRight = charSequence;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawerViewOffset(View view, float f8) {
        DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) view.getLayoutParams();
        if (f8 == drawerLayout$LayoutParams.onScreen) {
            return;
        }
        drawerLayout$LayoutParams.onScreen = f8;
        dispatchOnDrawerSlide(view, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScrimColor(@ColorInt int i9) {
        this.mScrimColor = i9;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarBackground(int i9) {
        this.mStatusBarBackground = i9 != 0 ? ContextCompat.getDrawable(getContext(), i9) : null;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarBackgroundColor(@ColorInt int i9) {
        this.mStatusBarBackground = new ColorDrawable(i9);
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateDrawerState(int i9, View view) {
        int i10;
        int viewDragState = this.mLeftDragger.getViewDragState();
        int viewDragState2 = this.mRightDragger.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i10 = 1;
        } else {
            i10 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i10 = 0;
            }
        }
        if (view != null && i9 == 0) {
            float f8 = ((DrawerLayout$LayoutParams) view.getLayoutParams()).onScreen;
            if (f8 == 0.0f) {
                dispatchOnDrawerClosed(view);
            } else if (f8 == 1.0f) {
                dispatchOnDrawerOpened(view);
            }
        }
        if (i10 != this.mDrawerState) {
            this.mDrawerState = i10;
            List<DrawerLayout$DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerStateChanged(i10);
                }
            }
        }
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.mStatusBarBackground = drawable;
        invalidate();
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new DrawerLayout$LayoutParams(getContext(), attributeSet);
    }

    public boolean isDrawerOpen(int i9) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i9);
        if (viewFindDrawerWithGravity != null) {
            return isDrawerOpen(viewFindDrawerWithGravity);
        }
        return false;
    }

    public boolean isDrawerVisible(int i9) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i9);
        if (viewFindDrawerWithGravity != null) {
            return isDrawerVisible(viewFindDrawerWithGravity);
        }
        return false;
    }

    public void setDrawerShadow(@DrawableRes int i9, int i10) {
        setDrawerShadow(ContextCompat.getDrawable(getContext(), i9), i10);
    }

    public void setDrawerLockMode(int i9) {
        setDrawerLockMode(i9, 3);
        setDrawerLockMode(i9, 5);
    }

    public void setDrawerLockMode(int i9, @NonNull View view) {
        if (isDrawerView(view)) {
            setDrawerLockMode(i9, ((DrawerLayout$LayoutParams) view.getLayoutParams()).gravity);
        } else {
            b.p(view, "View ", " is not a drawer with appropriate layout_gravity");
        }
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (isDrawerView(view)) {
            return getDrawerLockMode(((DrawerLayout$LayoutParams) view.getLayoutParams()).gravity);
        }
        b.p(view, "View ", " is not a drawer");
        return 0;
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawer(int i9) {
        closeDrawer(i9, true);
    }

    public void closeDrawer(int i9, boolean z8) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i9);
        if (viewFindDrawerWithGravity != null) {
            closeDrawer(viewFindDrawerWithGravity, z8);
        } else {
            b.o(gravityToString(i9), "No drawer view found with gravity ");
        }
    }

    public void closeDrawers() {
        closeDrawers(false);
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void openDrawer(int i9) {
        openDrawer(i9, true);
    }

    public void openDrawer(int i9, boolean z8) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i9);
        if (viewFindDrawerWithGravity != null) {
            openDrawer(viewFindDrawerWithGravity, z8);
        } else {
            b.o(gravityToString(i9), "No drawer view found with gravity ");
        }
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.drawerlayout.R$attr.drawerLayoutStyle);
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }
}
