package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import j1.i;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CoordinatorLayout$LayoutParams extends ViewGroup$MarginLayoutParams {
    public int anchorGravity;
    public int dodgeInsetEdges;
    public int gravity;
    public int insetEdge;
    public int keyline;
    View mAnchorDirectChild;
    int mAnchorId;
    View mAnchorView;
    CoordinatorLayout$Behavior mBehavior;
    boolean mBehaviorResolved;
    Object mBehaviorTag;
    private boolean mDidAcceptNestedScrollNonTouch;
    private boolean mDidAcceptNestedScrollTouch;
    private boolean mDidBlockInteraction;
    private boolean mDidChangeAfterNestedScroll;
    int mInsetOffsetX;
    int mInsetOffsetY;
    final Rect mLastChildRect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout$LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
        this.gravity = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.mAnchorId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
        this.anchorGravity = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.keyline = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
        this.insetEdge = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.dodgeInsetEdges = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
        this.mBehaviorResolved = zHasValue;
        if (zHasValue) {
            this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, typedArrayObtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
        }
        typedArrayObtainStyledAttributes.recycle();
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.mBehavior;
        if (coordinatorLayout$Behavior != null) {
            coordinatorLayout$Behavior.onAttachedToLayoutParams(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resolveAnchorView(View view, CoordinatorLayout coordinatorLayout) {
        View viewFindViewById = coordinatorLayout.findViewById(this.mAnchorId);
        this.mAnchorView = viewFindViewById;
        if (viewFindViewById == null) {
            if (!coordinatorLayout.isInEditMode()) {
                b.t("Could not find CoordinatorLayout descendant view with id ", coordinatorLayout.getResources().getResourceName(this.mAnchorId), " to anchor view ", view);
                return;
            } else {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return;
            }
        }
        if (viewFindViewById == coordinatorLayout) {
            if (!coordinatorLayout.isInEditMode()) {
                i.l("View can not be anchored to the the parent CoordinatorLayout");
                return;
            } else {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return;
            }
        }
        for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
            if (parent == view) {
                if (!coordinatorLayout.isInEditMode()) {
                    i.l("Anchor must not be a descendant of the anchored view");
                    return;
                } else {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return;
                }
            }
            if (parent instanceof View) {
                viewFindViewById = parent;
            }
        }
        this.mAnchorDirectChild = viewFindViewById;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean shouldDodge(View view, int i9) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((CoordinatorLayout$LayoutParams) view.getLayoutParams()).insetEdge, i9);
        return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, i9) & absoluteGravity) == absoluteGravity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean verifyAnchorView(View view, CoordinatorLayout coordinatorLayout) {
        if (this.mAnchorView.getId() != this.mAnchorId) {
            return false;
        }
        View view2 = this.mAnchorView;
        for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
            if (parent == null || parent == view) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return false;
            }
            if (parent instanceof View) {
                view2 = parent;
            }
        }
        this.mAnchorDirectChild = view2;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkAnchorChanged() {
        return this.mAnchorView == null && this.mAnchorId != -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view2 == this.mAnchorDirectChild || shouldDodge(view2, ViewCompat.getLayoutDirection(coordinatorLayout))) {
            return true;
        }
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.mBehavior;
        return coordinatorLayout$Behavior != null && coordinatorLayout$Behavior.layoutDependsOn(coordinatorLayout, view, view2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean didBlockInteraction() {
        if (this.mBehavior == null) {
            this.mDidBlockInteraction = false;
        }
        return this.mDidBlockInteraction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findAnchorView(CoordinatorLayout coordinatorLayout, View view) {
        if (this.mAnchorId == -1) {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
            return null;
        }
        if (this.mAnchorView == null || !verifyAnchorView(view, coordinatorLayout)) {
            resolveAnchorView(view, coordinatorLayout);
        }
        return this.mAnchorView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IdRes
    public int getAnchorId() {
        return this.mAnchorId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CoordinatorLayout$Behavior getBehavior() {
        return this.mBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getChangedAfterNestedScroll() {
        return this.mDidChangeAfterNestedScroll;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Rect getLastChildRect() {
        return this.mLastChildRect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateAnchor() {
        this.mAnchorDirectChild = null;
        this.mAnchorView = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBlockingInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
        boolean z8 = this.mDidBlockInteraction;
        if (z8) {
            return true;
        }
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.mBehavior;
        boolean zBlocksInteractionBelow = (coordinatorLayout$Behavior != null ? coordinatorLayout$Behavior.blocksInteractionBelow(coordinatorLayout, view) : false) | z8;
        this.mDidBlockInteraction = zBlocksInteractionBelow;
        return zBlocksInteractionBelow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNestedScrollAccepted(int i9) {
        if (i9 == 0) {
            return this.mDidAcceptNestedScrollTouch;
        }
        if (i9 != 1) {
            return false;
        }
        return this.mDidAcceptNestedScrollNonTouch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetChangedAfterNestedScroll() {
        this.mDidChangeAfterNestedScroll = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetNestedScroll(int i9) {
        setNestedScrollAccepted(i9, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetTouchBehaviorTracking() {
        this.mDidBlockInteraction = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnchorId(@IdRes int i9) {
        invalidateAnchor();
        this.mAnchorId = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBehavior(@Nullable CoordinatorLayout$Behavior coordinatorLayout$Behavior) {
        CoordinatorLayout$Behavior coordinatorLayout$Behavior2 = this.mBehavior;
        if (coordinatorLayout$Behavior2 != coordinatorLayout$Behavior) {
            if (coordinatorLayout$Behavior2 != null) {
                coordinatorLayout$Behavior2.onDetachedFromLayoutParams();
            }
            this.mBehavior = coordinatorLayout$Behavior;
            this.mBehaviorTag = null;
            this.mBehaviorResolved = true;
            if (coordinatorLayout$Behavior != null) {
                coordinatorLayout$Behavior.onAttachedToLayoutParams(this);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChangedAfterNestedScroll(boolean z8) {
        this.mDidChangeAfterNestedScroll = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastChildRect(Rect rect) {
        this.mLastChildRect.set(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNestedScrollAccepted(int i9, boolean z8) {
        if (i9 == 0) {
            this.mDidAcceptNestedScrollTouch = z8;
        } else {
            if (i9 != 1) {
                return;
            }
            this.mDidAcceptNestedScrollNonTouch = z8;
        }
    }

    public CoordinatorLayout$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    public CoordinatorLayout$LayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        super((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    public CoordinatorLayout$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    public CoordinatorLayout$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }
}
