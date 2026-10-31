package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent$Callback;
import android.view.Menu;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuBuilder$Callback;
import androidx.appcompat.view.menu.MenuBuilder$ItemInvoker;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter$Callback;
import androidx.appcompat.view.menu.MenuView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder$ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private MenuPresenter$Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    MenuBuilder$Callback mMenuBuilderCallback;
    private int mMinCellSize;
    ActionMenuView$OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f8 = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f8);
        this.mGeneratedItemPadding = (int) (f8 * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    public static int measureChildForCells(View view, int i9, int i10, int i11, int i12) {
        int i13;
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) view.getLayoutParams();
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(View$MeasureSpec.getSize(i11) - i12, View$MeasureSpec.getMode(i11));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z8 = false;
        boolean z9 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i10 > 0) {
            i13 = 2;
            if (!z9 || i10 >= 2) {
                view.measure(View$MeasureSpec.makeMeasureSpec(i10 * i9, Integer.MIN_VALUE), iMakeMeasureSpec);
                int measuredWidth = view.getMeasuredWidth();
                int i14 = measuredWidth / i9;
                if (measuredWidth % i9 != 0) {
                    i14++;
                }
                if (!z9 || i14 >= 2) {
                    i13 = i14;
                }
            } else {
                i13 = 0;
            }
        } else {
            i13 = 0;
        }
        if (!actionMenuView$LayoutParams.isOverflowButton && z9) {
            z8 = true;
        }
        actionMenuView$LayoutParams.expandable = z8;
        actionMenuView$LayoutParams.cellsUsed = i13;
        view.measure(View$MeasureSpec.makeMeasureSpec(i9 * i13, BasicMeasure.EXACTLY), iMakeMeasureSpec);
        return i13;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v47 */
    private void onMeasureExactFormat(int i9, int i10) {
        int i11;
        long j9;
        int i12;
        boolean z8;
        ?? r9;
        int i13;
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i9);
        int size2 = View$MeasureSpec.getSize(i10);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, paddingBottom, -2);
        int i14 = size - paddingRight;
        int i15 = this.mMinCellSize;
        int i16 = i14 / i15;
        int i17 = i14 % i15;
        if (i16 == 0) {
            setMeasuredDimension(i14, 0);
            return;
        }
        int i18 = (i17 / i16) + i15;
        int childCount = getChildCount();
        int iMax = 0;
        int i19 = 0;
        boolean z9 = false;
        int i20 = 0;
        int iMax2 = 0;
        int i21 = 0;
        long j10 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i22 = size2;
            if (childAt.getVisibility() == 8) {
                i13 = paddingBottom;
            } else {
                boolean z10 = childAt instanceof ActionMenuItemView;
                i20++;
                if (z10) {
                    int i23 = this.mGeneratedItemPadding;
                    r9 = 0;
                    childAt.setPadding(i23, 0, i23, 0);
                } else {
                    r9 = 0;
                }
                ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) childAt.getLayoutParams();
                actionMenuView$LayoutParams.expanded = r9;
                actionMenuView$LayoutParams.extraPixels = r9;
                actionMenuView$LayoutParams.cellsUsed = r9;
                actionMenuView$LayoutParams.expandable = r9;
                ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).leftMargin = r9;
                ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).rightMargin = r9;
                actionMenuView$LayoutParams.preventEdgeOffset = z10 && ((ActionMenuItemView) childAt).hasText();
                int iMeasureChildForCells = measureChildForCells(childAt, i18, actionMenuView$LayoutParams.isOverflowButton ? 1 : i16, childMeasureSpec, paddingBottom);
                iMax2 = Math.max(iMax2, iMeasureChildForCells);
                i13 = paddingBottom;
                if (actionMenuView$LayoutParams.expandable) {
                    i21++;
                }
                if (actionMenuView$LayoutParams.isOverflowButton) {
                    z9 = true;
                }
                i16 -= iMeasureChildForCells;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iMeasureChildForCells == 1) {
                    j10 |= (long) (1 << i19);
                    i16 = i16;
                }
            }
            i19++;
            size2 = i22;
            paddingBottom = i13;
        }
        int i24 = size2;
        char c = 2;
        boolean z11 = z9 && i20 == 2;
        boolean z12 = false;
        while (true) {
            if (i21 <= 0 || i16 <= 0) {
                i11 = i18;
                j9 = 1;
                break;
            }
            long j11 = 0;
            char c9 = c;
            int i25 = Integer.MAX_VALUE;
            int i26 = 0;
            int i27 = 0;
            j9 = 1;
            while (i27 < childCount) {
                boolean z13 = z11;
                ActionMenuView$LayoutParams actionMenuView$LayoutParams2 = (ActionMenuView$LayoutParams) getChildAt(i27).getLayoutParams();
                int i28 = i18;
                if (actionMenuView$LayoutParams2.expandable) {
                    int i29 = actionMenuView$LayoutParams2.cellsUsed;
                    if (i29 < i25) {
                        j11 = 1 << i27;
                        i25 = i29;
                        i26 = 1;
                    } else if (i29 == i25) {
                        j11 |= 1 << i27;
                        i26++;
                    }
                }
                i27++;
                i18 = i28;
                z11 = z13;
            }
            boolean z14 = z11;
            i11 = i18;
            j10 |= j11;
            if (i26 > i16) {
                break;
            }
            int i30 = i25 + 1;
            int i31 = 0;
            while (i31 < childCount) {
                View childAt2 = getChildAt(i31);
                ActionMenuView$LayoutParams actionMenuView$LayoutParams3 = (ActionMenuView$LayoutParams) childAt2.getLayoutParams();
                int i32 = iMax;
                long j12 = 1 << i31;
                if ((j11 & j12) == 0) {
                    if (actionMenuView$LayoutParams3.cellsUsed == i30) {
                        j10 |= j12;
                    }
                    i31 = i31;
                } else {
                    if (!z14 || !actionMenuView$LayoutParams3.preventEdgeOffset) {
                        z8 = true;
                    } else if (i16 == 1) {
                        int i33 = this.mGeneratedItemPadding;
                        z8 = true;
                        childAt2.setPadding(i33 + i11, 0, i33, 0);
                    } else {
                        z8 = true;
                    }
                    actionMenuView$LayoutParams3.cellsUsed++;
                    actionMenuView$LayoutParams3.expanded = z8;
                    i16--;
                }
                i31++;
                iMax = i32;
            }
            i18 = i11;
            c = c9;
            z11 = z14;
            z12 = true;
        }
        boolean z15 = !z9 && i20 == 1;
        if (i16 <= 0 || j10 == 0 || (i16 >= i20 - 1 && !z15 && iMax2 <= 1)) {
            i12 = 0;
        } else {
            float fBitCount = Long.bitCount(j10);
            if (z15) {
                i12 = 0;
            } else {
                if ((j10 & j9) != 0) {
                    i12 = 0;
                    if (!((ActionMenuView$LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                        fBitCount -= 0.5f;
                    }
                } else {
                    i12 = 0;
                }
                int i34 = childCount - 1;
                if ((j10 & ((long) (1 << i34))) != 0 && !((ActionMenuView$LayoutParams) getChildAt(i34).getLayoutParams()).preventEdgeOffset) {
                    fBitCount -= 0.5f;
                }
            }
            int i35 = fBitCount > 0.0f ? (int) ((i16 * i11) / fBitCount) : i12;
            for (int i36 = i12; i36 < childCount; i36++) {
                if ((j10 & ((long) (1 << i36))) != 0) {
                    View childAt3 = getChildAt(i36);
                    ActionMenuView$LayoutParams actionMenuView$LayoutParams4 = (ActionMenuView$LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        actionMenuView$LayoutParams4.extraPixels = i35;
                        actionMenuView$LayoutParams4.expanded = true;
                        if (i36 == 0 && !actionMenuView$LayoutParams4.preventEdgeOffset) {
                            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams4).leftMargin = (-i35) / 2;
                        }
                        z12 = true;
                    } else if (actionMenuView$LayoutParams4.isOverflowButton) {
                        actionMenuView$LayoutParams4.extraPixels = i35;
                        actionMenuView$LayoutParams4.expanded = true;
                        ((LinearLayout$LayoutParams) actionMenuView$LayoutParams4).rightMargin = (-i35) / 2;
                        z12 = true;
                    } else {
                        if (i36 != 0) {
                            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams4).leftMargin = i35 / 2;
                        }
                        if (i36 != childCount - 1) {
                            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams4).rightMargin = i35 / 2;
                        }
                    }
                }
            }
        }
        if (z12) {
            for (int i37 = i12; i37 < childCount; i37++) {
                View childAt4 = getChildAt(i37);
                ActionMenuView$LayoutParams actionMenuView$LayoutParams5 = (ActionMenuView$LayoutParams) childAt4.getLayoutParams();
                if (actionMenuView$LayoutParams5.expanded) {
                    childAt4.measure(View$MeasureSpec.makeMeasureSpec((actionMenuView$LayoutParams5.cellsUsed * i11) + actionMenuView$LayoutParams5.extraPixels, BasicMeasure.EXACTLY), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i14, mode != 1073741824 ? iMax : i24);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ActionMenuView$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ActionMenuView$LayoutParams generateDefaultLayoutParams() {
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = new ActionMenuView$LayoutParams(-2, -2);
        ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).gravity = 16;
        return actionMenuView$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ActionMenuView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams == null) {
            return generateDefaultLayoutParams();
        }
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = viewGroup$LayoutParams instanceof ActionMenuView$LayoutParams ? new ActionMenuView$LayoutParams((ActionMenuView$LayoutParams) viewGroup$LayoutParams) : new ActionMenuView$LayoutParams(viewGroup$LayoutParams);
        if (((LinearLayout$LayoutParams) actionMenuView$LayoutParams).gravity <= 0) {
            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).gravity = 16;
        }
        return actionMenuView$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ActionMenuView$LayoutParams generateOverflowButtonLayoutParams() {
        ActionMenuView$LayoutParams actionMenuView$LayoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        actionMenuView$LayoutParamsGenerateDefaultLayoutParams.isOverflowButton = true;
        return actionMenuView$LayoutParamsGenerateDefaultLayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.mMenu = menuBuilder;
            menuBuilder.setCallback(new ActionMenuView$MenuBuilderCallback(this));
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.mPresenter = actionMenuPresenter;
            actionMenuPresenter.setReserveOverflow(true);
            ActionMenuPresenter actionMenuPresenter2 = this.mPresenter;
            MenuPresenter$Callback actionMenuView$ActionMenuPresenterCallback = this.mActionMenuPresenterCallback;
            if (actionMenuView$ActionMenuPresenterCallback == null) {
                actionMenuView$ActionMenuPresenterCallback = new ActionMenuView$ActionMenuPresenterCallback();
            }
            actionMenuPresenter2.setCallback(actionMenuView$ActionMenuPresenterCallback);
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public int getWindowAnimations() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean hasSupportDividerBeforeChildAt(int i9) {
        boolean zNeedsDividerAfter = false;
        if (i9 == 0) {
            return false;
        }
        KeyEvent$Callback childAt = getChildAt(i9 - 1);
        KeyEvent$Callback childAt2 = getChildAt(i9);
        if (i9 < getChildCount() && (childAt instanceof ActionMenuView$ActionMenuChildView)) {
            zNeedsDividerAfter = ((ActionMenuView$ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i9 <= 0 || !(childAt2 instanceof ActionMenuView$ActionMenuChildView)) ? zNeedsDividerAfter : ((ActionMenuView$ActionMenuChildView) childAt2).needsDividerBefore() | zNeedsDividerAfter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.hideOverflowMenu();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$ItemInvoker
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowPending();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowing();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int width;
        int paddingLeft;
        if (!this.mFormatItems) {
            super.onLayout(z8, i9, i10, i11, i12);
            return;
        }
        int childCount = getChildCount();
        int i13 = (i12 - i10) / 2;
        int dividerWidth = getDividerWidth();
        int i14 = i11 - i9;
        int paddingRight = (i14 - getPaddingRight()) - getPaddingLeft();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) childAt.getLayoutParams();
                if (actionMenuView$LayoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i17)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zIsLayoutRtl) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i18 = i13 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i18, width, measuredHeight + i18);
                    paddingRight -= measuredWidth;
                    i15 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).leftMargin) + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).rightMargin;
                    hasSupportDividerBeforeChildAt(i17);
                    i16++;
                }
            }
        }
        if (childCount == 1 && i15 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i19 = (i14 / 2) - (measuredWidth2 / 2);
            int i20 = i13 - (measuredHeight2 / 2);
            childAt2.layout(i19, i20, measuredWidth2 + i19, measuredHeight2 + i20);
            return;
        }
        int i21 = i16 - (i15 ^ 1);
        int iMax = Math.max(0, i21 > 0 ? paddingRight / i21 : 0);
        if (zIsLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i22 = 0; i22 < childCount; i22++) {
                View childAt3 = getChildAt(i22);
                ActionMenuView$LayoutParams actionMenuView$LayoutParams2 = (ActionMenuView$LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !actionMenuView$LayoutParams2.isOverflowButton) {
                    int i23 = width2 - ((LinearLayout$LayoutParams) actionMenuView$LayoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i24 = i13 - (measuredHeight3 / 2);
                    childAt3.layout(i23 - measuredWidth3, i24, i23, measuredHeight3 + i24);
                    width2 = i23 - ((measuredWidth3 + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i25 = 0; i25 < childCount; i25++) {
            View childAt4 = getChildAt(i25);
            ActionMenuView$LayoutParams actionMenuView$LayoutParams3 = (ActionMenuView$LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !actionMenuView$LayoutParams3.isOverflowButton) {
                int i26 = paddingLeft2 + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i27 = i13 - (measuredHeight4 / 2);
                childAt4.layout(i26, i27, i26 + measuredWidth4, measuredHeight4 + i27);
                paddingLeft2 = measuredWidth4 + ((LinearLayout$LayoutParams) actionMenuView$LayoutParams3).rightMargin + iMax + i26;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i9, int i10) {
        MenuBuilder menuBuilder;
        boolean z8 = this.mFormatItems;
        boolean z9 = View$MeasureSpec.getMode(i9) == 1073741824;
        this.mFormatItems = z9;
        if (z8 != z9) {
            this.mFormatItemsWidth = 0;
        }
        int size = View$MeasureSpec.getSize(i9);
        if (this.mFormatItems && (menuBuilder = this.mMenu) != null && size != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = size;
            menuBuilder.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.mFormatItems && childCount > 0) {
            onMeasureExactFormat(i9, i10);
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) getChildAt(i11).getLayoutParams();
            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).rightMargin = 0;
            ((LinearLayout$LayoutParams) actionMenuView$LayoutParams).leftMargin = 0;
        }
        super.onMeasure(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setExpandedActionViewsExclusive(boolean z8) {
        this.mPresenter.setExpandedActionViewsExclusive(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(MenuPresenter$Callback menuPresenter$Callback, MenuBuilder$Callback menuBuilder$Callback) {
        this.mActionMenuPresenterCallback = menuPresenter$Callback;
        this.mMenuBuilderCallback = menuBuilder$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnMenuItemClickListener(ActionMenuView$OnMenuItemClickListener actionMenuView$OnMenuItemClickListener) {
        this.mOnMenuItemClickListener = actionMenuView$OnMenuItemClickListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.mPresenter.setOverflowIcon(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setOverflowReserved(boolean z8) {
        this.mReserveOverflow = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPopupTheme(@StyleRes int i9) {
        if (this.mPopupTheme != i9) {
            this.mPopupTheme = i9;
            if (i9 == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i9);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        actionMenuPresenter.setMenuView(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ActionMenuView$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionMenuView$LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }
}
