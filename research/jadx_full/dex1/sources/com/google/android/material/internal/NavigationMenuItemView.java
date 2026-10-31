package com.google.android.material.internal;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView$ItemView;
import androidx.appcompat.widget.LinearLayoutCompat$LayoutParams;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import s3.a;
import s3.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class NavigationMenuItemView extends e implements MenuView$ItemView {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f1314s = {R$attr.state_checked};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1316i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1317j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CheckedTextView f1319l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FrameLayout f1320m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public MenuItemImpl f1321n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f1322o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1323p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f1324q;
    public final a r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1318k = true;
        a aVar = new a(1, this);
        this.r = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(2131492932, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(2131099770));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(2131296689);
        this.f1319l = checkedTextView;
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f1320m == null) {
                this.f1320m = (FrameLayout) ((ViewStub) findViewById(2131296688)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f1320m.removeAllViews();
            this.f1320m.addView(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public MenuItemImpl getItemData() {
        return this.f1321n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public final void initialize(MenuItemImpl menuItemImpl, int i9) {
        StateListDrawable stateListDrawable;
        this.f1321n = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(androidx.appcompat.R$attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f1314s, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            setBackground(stateListDrawable);
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        CharSequence title = this.f1321n.getTitle();
        CheckedTextView checkedTextView = this.f1319l;
        if (title == null && this.f1321n.getIcon() == null && this.f1321n.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f1320m;
            if (frameLayout != null) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width = -1;
                this.f1320m.setLayoutParams(linearLayoutCompat$LayoutParams);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f1320m;
        if (frameLayout2 != null) {
            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).width = -2;
            this.f1320m.setLayoutParams(linearLayoutCompat$LayoutParams2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 1);
        MenuItemImpl menuItemImpl = this.f1321n;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f1321n.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1314s);
        }
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public final boolean prefersCondensedTitle() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public void setCheckable(boolean z8) {
        refreshDrawableState();
        if (this.f1317j != z8) {
            this.f1317j = z8;
            this.r.sendAccessibilityEvent(this.f1319l, 2048);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public void setChecked(boolean z8) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f1319l;
        checkedTextView.setChecked(z8);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z8 && this.f1318k) ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalPadding(int i9) {
        setPadding(i9, getPaddingTop(), i9, getPaddingBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f1323p) {
                Drawable$ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                drawable.setTintList(this.f1322o);
            }
            int i9 = this.f1315h;
            drawable.setBounds(0, 0, i9, i9);
        } else if (this.f1316i) {
            if (this.f1324q == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), 2131165666, getContext().getTheme());
                this.f1324q = drawable2;
                if (drawable2 != null) {
                    int i10 = this.f1315h;
                    drawable2.setBounds(0, 0, i10, i10);
                }
            }
            drawable = this.f1324q;
        }
        this.f1319l.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconPadding(int i9) {
        this.f1319l.setCompoundDrawablePadding(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconSize(@Dimension int i9) {
        this.f1315h = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconTintList(ColorStateList colorStateList) {
        this.f1322o = colorStateList;
        this.f1323p = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f1321n;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxLines(int i9) {
        this.f1319l.setMaxLines(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNeedsEmptyIcon(boolean z8) {
        this.f1316i = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextAppearance(int i9) {
        TextViewCompat.setTextAppearance(this.f1319l, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextColor(ColorStateList colorStateList) {
        this.f1319l.setTextColor(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public void setTitle(CharSequence charSequence) {
        this.f1319l.setText(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public final boolean showsIcon() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public final void setShortcut(boolean z8, char c) {
    }
}
