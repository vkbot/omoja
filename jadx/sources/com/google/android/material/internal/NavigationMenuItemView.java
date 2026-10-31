package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0148R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import p192s3.AbstractC3191e;
import p192s3.C3187a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuItemView extends AbstractC3191e implements MenuView.ItemView {

    /* JADX INFO: renamed from: s */
    public static final int[] f2375s = {R.attr.state_checked};

    /* JADX INFO: renamed from: h */
    public int f2376h;

    /* JADX INFO: renamed from: i */
    public boolean f2377i;

    /* JADX INFO: renamed from: j */
    public boolean f2378j;

    /* JADX INFO: renamed from: k */
    public final boolean f2379k;

    /* JADX INFO: renamed from: l */
    public final CheckedTextView f2380l;

    /* JADX INFO: renamed from: m */
    public FrameLayout f2381m;

    /* JADX INFO: renamed from: n */
    public MenuItemImpl f2382n;

    /* JADX INFO: renamed from: o */
    public ColorStateList f2383o;

    /* JADX INFO: renamed from: p */
    public boolean f2384p;

    /* JADX INFO: renamed from: q */
    public Drawable f2385q;

    /* JADX INFO: renamed from: r */
    public final C3187a f2386r;

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2379k = true;
        C3187a c3187a = new C3187a(1, this);
        this.f2386r = c3187a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.example.navistart.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.example.navistart.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.example.navistart.R.id.design_menu_item_text);
        this.f2380l = checkedTextView;
        ViewCompat.setAccessibilityDelegate(checkedTextView, c3187a);
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f2381m == null) {
                this.f2381m = (FrameLayout) ((ViewStub) findViewById(com.example.navistart.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f2381m.removeAllViews();
            this.f2381m.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f2382n;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void initialize(MenuItemImpl menuItemImpl, int i10) {
        StateListDrawable stateListDrawable;
        this.f2382n = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(C0148R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f2375s, new ColorDrawable(typedValue.data));
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
        CharSequence title = this.f2382n.getTitle();
        CheckedTextView checkedTextView = this.f2380l;
        if (title == null && this.f2382n.getIcon() == null && this.f2382n.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f2381m;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.f2381m.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f2381m;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.f2381m.setLayoutParams(layoutParams2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f2382n;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f2382n.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2375s);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z9) {
        refreshDrawableState();
        if (this.f2378j != z9) {
            this.f2378j = z9;
            this.f2386r.sendAccessibilityEvent(this.f2380l, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z9) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f2380l;
        checkedTextView.setChecked(z9);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z9 && this.f2379k) ? 1 : 0);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f2384p) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                drawable.setTintList(this.f2383o);
            }
            int i10 = this.f2376h;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.f2377i) {
            if (this.f2385q == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), com.example.navistart.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f2385q = drawable2;
                if (drawable2 != null) {
                    int i11 = this.f2376h;
                    drawable2.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.f2385q;
        }
        this.f2380l.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.f2380l.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(@Dimension int i10) {
        this.f2376h = i10;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f2383o = colorStateList;
        this.f2384p = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f2382n;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.f2380l.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z9) {
        this.f2377i = z9;
    }

    public void setTextAppearance(int i10) {
        TextViewCompat.setTextAppearance(this.f2380l, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f2380l.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f2380l.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final boolean showsIcon() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void setShortcut(boolean z9, char c) {
    }
}
