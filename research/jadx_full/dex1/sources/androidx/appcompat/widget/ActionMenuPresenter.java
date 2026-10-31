package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.MenuView$ItemView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ActionProvider;
import androidx.core.view.ActionProvider$SubUiVisibilityListener;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider$SubUiVisibilityListener {
    private static final String TAG = "ActionMenuPresenter";
    private final SparseBooleanArray mActionButtonGroups;
    ActionMenuPresenter$ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    ActionMenuPresenter$OverflowMenuButton mOverflowButton;
    ActionMenuPresenter$OverflowPopup mOverflowPopup;
    private Drawable mPendingOverflowIcon;
    private boolean mPendingOverflowIconSet;
    private ActionMenuPresenter$ActionMenuPopupCallback mPopupCallback;
    final ActionMenuPresenter$PopupPresenterCallback mPopupPresenterCallback;
    ActionMenuPresenter$OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuPresenter(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
        this.mActionButtonGroups = new SparseBooleanArray();
        this.mPopupPresenterCallback = new ActionMenuPresenter$PopupPresenterCallback(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuBuilder access$000(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuBuilder access$100(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuView access$200(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenuView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuBuilder access$300(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuBuilder access$400(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuBuilder access$500(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MenuView access$600(ActionMenuPresenter actionMenuPresenter) {
        return actionMenuPresenter.mMenuView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    private View findViewForItem(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            if ((childAt instanceof MenuView$ItemView) && ((MenuView$ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView$ItemView menuView$ItemView) {
        menuView$ItemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) menuView$ItemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new ActionMenuPresenter$ActionMenuPopupCallback(this);
        }
        actionMenuItemView.setPopupCallback(this.mPopupCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i9) {
        if (viewGroup.getChildAt(i9) == this.mOverflowButton) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:103:0x013b */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.appcompat.view.menu.MenuItemImpl] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems;
        int size;
        int iMeasureChildForCells;
        int i9;
        ?? r1;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        ?? r9 = 0;
        if (menuBuilder != null) {
            visibleItems = menuBuilder.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i10 = actionMenuPresenter.mMaxItems;
        int i11 = actionMenuPresenter.mActionItemWidthLimit;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.mMenuView;
        boolean z8 = false;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < size; i14++) {
            MenuItemImpl menuItemImpl = visibleItems.get(i14);
            if (menuItemImpl.requiresActionButton()) {
                i12++;
            } else if (menuItemImpl.requestsActionButton()) {
                i13++;
            } else {
                z8 = true;
            }
            if (actionMenuPresenter.mExpandedActionViewsExclusive && menuItemImpl.isActionViewExpanded()) {
                i10 = 0;
            }
        }
        if (actionMenuPresenter.mReserveOverflow && (z8 || i13 + i12 > i10)) {
            i10--;
        }
        int i15 = i10 - i12;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.mActionButtonGroups;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.mStrictWidthLimit) {
            int i16 = actionMenuPresenter.mMinCellSize;
            iMeasureChildForCells = i11 / i16;
            i9 = ((i11 % i16) / iMeasureChildForCells) + i16;
        } else {
            iMeasureChildForCells = 0;
            i9 = 0;
        }
        int i17 = 0;
        int i18 = 0;
        ?? r10 = actionMenuPresenter;
        while (i17 < size) {
            MenuItemImpl menuItemImpl2 = visibleItems.get(i17);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = r10.getItemView(menuItemImpl2, view, viewGroup);
                if (r10.mStrictWidthLimit) {
                    iMeasureChildForCells -= ActionMenuView.measureChildForCells(itemView, i9, iMeasureChildForCells, iMakeMeasureSpec, r9);
                } else {
                    itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = itemView.getMeasuredWidth();
                i11 -= measuredWidth;
                if (i18 == 0) {
                    i18 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                r1 = r9;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z9 = sparseBooleanArray.get(groupId2);
                boolean z10 = (i15 > 0 || z9) && i11 > 0 && (!r10.mStrictWidthLimit || iMeasureChildForCells > 0);
                boolean z11 = z10;
                if (z10) {
                    View itemView2 = r10.getItemView(menuItemImpl2, null, viewGroup);
                    if (r10.mStrictWidthLimit) {
                        int iMeasureChildForCells2 = ActionMenuView.measureChildForCells(itemView2, i9, iMeasureChildForCells, iMakeMeasureSpec, 0);
                        iMeasureChildForCells -= iMeasureChildForCells2;
                        if (iMeasureChildForCells2 == 0) {
                            z11 = false;
                        }
                    } else {
                        itemView2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z12 = z11;
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i11 -= measuredWidth2;
                    if (i18 == 0) {
                        i18 = measuredWidth2;
                    }
                    z10 = z12 & (!r10.mStrictWidthLimit ? i11 + i18 <= 0 : i11 < 0);
                }
                if (z10 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z9) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i19 = 0; i19 < i17; i19++) {
                        MenuItemImpl menuItemImpl3 = visibleItems.get(i19);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i15++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z10) {
                    i15--;
                }
                menuItemImpl2.setIsActionButton(z10);
                r1 = 0;
            } else {
                r1 = r9;
                menuItemImpl2.setIsActionButton(r1);
            }
            i17++;
            r9 = r1;
            size = size;
            view = null;
            r10 = this;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup$LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = this.mMenuView;
        MenuView menuView2 = super.getMenuView(viewGroup);
        if (menuView != menuView2) {
            ((ActionMenuView) menuView2).setPresenter(this);
        }
        return menuView2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getOverflowIcon() {
        ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton = this.mOverflowButton;
        if (actionMenuPresenter$OverflowMenuButton != null) {
            return actionMenuPresenter$OverflowMenuButton.getDrawable();
        }
        if (this.mPendingOverflowIconSet) {
            return this.mPendingOverflowIcon;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hideOverflowMenu() {
        Object obj;
        ActionMenuPresenter$OpenOverflowRunnable actionMenuPresenter$OpenOverflowRunnable = this.mPostedOpenRunnable;
        if (actionMenuPresenter$OpenOverflowRunnable != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(actionMenuPresenter$OpenOverflowRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
        ActionMenuPresenter$OverflowPopup actionMenuPresenter$OverflowPopup = this.mOverflowPopup;
        if (actionMenuPresenter$OverflowPopup == null) {
            return false;
        }
        actionMenuPresenter$OverflowPopup.dismiss();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hideSubMenus() {
        ActionMenuPresenter$ActionButtonSubmenu actionMenuPresenter$ActionButtonSubmenu = this.mActionButtonPopup;
        if (actionMenuPresenter$ActionButtonSubmenu == null) {
            return false;
        }
        actionMenuPresenter$ActionButtonSubmenu.dismiss();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = actionBarPolicy.getMaxActionButtons();
        }
        int measuredWidth = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton = new ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext);
                this.mOverflowButton = actionMenuPresenter$OverflowMenuButton;
                if (this.mPendingOverflowIconSet) {
                    actionMenuPresenter$OverflowMenuButton.setImageDrawable(this.mPendingOverflowIcon);
                    this.mPendingOverflowIcon = null;
                    this.mPendingOverflowIconSet = false;
                }
                int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = measuredWidth;
        this.mMinCellSize = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isOverflowMenuShowPending() {
        return this.mPostedOpenRunnable != null || isOverflowMenuShowing();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter$OverflowPopup actionMenuPresenter$OverflowPopup = this.mOverflowPopup;
        return actionMenuPresenter$OverflowPopup != null && actionMenuPresenter$OverflowPopup.isShowing();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z8) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i9;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof ActionMenuPresenter$SavedState) && (i9 = ((ActionMenuPresenter$SavedState) parcelable).openSubMenuId) > 0 && (menuItemFindItem = this.mMenu.findItem(i9)) != null) {
            onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        ActionMenuPresenter$SavedState actionMenuPresenter$SavedState = new ActionMenuPresenter$SavedState();
        actionMenuPresenter$SavedState.openSubMenuId = this.mOpenSubMenuId;
        return actionMenuPresenter$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z8 = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View viewFindViewForItem = findViewForItem(subMenuBuilder2.getItem());
        if (viewFindViewForItem == null) {
            return false;
        }
        this.mOpenSubMenuId = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        for (int i9 = 0; i9 < size; i9++) {
            MenuItem item = subMenuBuilder.getItem(i9);
            if (item.isVisible() && item.getIcon() != null) {
                z8 = true;
                break;
            }
        }
        ActionMenuPresenter$ActionButtonSubmenu actionMenuPresenter$ActionButtonSubmenu = new ActionMenuPresenter$ActionButtonSubmenu(this, this.mContext, subMenuBuilder, viewFindViewForItem);
        this.mActionButtonPopup = actionMenuPresenter$ActionButtonSubmenu;
        actionMenuPresenter$ActionButtonSubmenu.setForceShowIcon(z8);
        this.mActionButtonPopup.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ActionProvider$SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z8) {
        if (z8) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExpandedActionViewsExclusive(boolean z8) {
        this.mExpandedActionViewsExclusive = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setItemLimit(int i9) {
        this.mMaxItems = i9;
        this.mMaxItemsSet = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuView(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOverflowIcon(Drawable drawable) {
        ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton = this.mOverflowButton;
        if (actionMenuPresenter$OverflowMenuButton != null) {
            actionMenuPresenter$OverflowMenuButton.setImageDrawable(drawable);
        } else {
            this.mPendingOverflowIconSet = true;
            this.mPendingOverflowIcon = drawable;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReserveOverflow(boolean z8) {
        this.mReserveOverflow = z8;
        this.mReserveOverflowSet = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthLimit(int i9, boolean z8) {
        this.mWidthLimit = i9;
        this.mStrictWidthLimit = z8;
        this.mWidthLimitSet = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i9, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean showOverflowMenu() {
        MenuBuilder menuBuilder;
        if (!this.mReserveOverflow || isOverflowMenuShowing() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.mPostedOpenRunnable != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        ActionMenuPresenter$OpenOverflowRunnable actionMenuPresenter$OpenOverflowRunnable = new ActionMenuPresenter$OpenOverflowRunnable(this, new ActionMenuPresenter$OverflowPopup(this, this.mContext, this.mMenu, this.mOverflowButton, true));
        this.mPostedOpenRunnable = actionMenuPresenter$OpenOverflowRunnable;
        ((View) this.mMenuView).post(actionMenuPresenter$OpenOverflowRunnable);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z8) {
        super.updateMenuView(z8);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        boolean z9 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i9 = 0; i9 < size; i9++) {
                ActionProvider supportActionProvider = actionItems.get(i9).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.mReserveOverflow && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z9 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z9 = true;
            }
        }
        ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton = this.mOverflowButton;
        if (z9) {
            if (actionMenuPresenter$OverflowMenuButton == null) {
                this.mOverflowButton = new ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.mOverflowButton.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.mOverflowButton);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.mOverflowButton, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else if (actionMenuPresenter$OverflowMenuButton != null) {
            Object parent = actionMenuPresenter$OverflowMenuButton.getParent();
            Object obj = this.mMenuView;
            if (parent == obj) {
                ((ViewGroup) obj).removeView(this.mOverflowButton);
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
    }
}
