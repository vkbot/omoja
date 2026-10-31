package p041d4;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.tabs.TabLayout;
import p040d3.C1264a;
import p040d3.C1265b;
import p040d3.C1266c;
import p099j1.C1929i;
import p192s3.AbstractC3203q;
import p238x3.AbstractC3567a;

/* JADX INFO: renamed from: d4.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1278l extends LinearLayout {

    /* JADX INFO: renamed from: m */
    public static final /* synthetic */ int f3065m = 0;

    /* JADX INFO: renamed from: b */
    public C1275i f3066b;

    /* JADX INFO: renamed from: c */
    public TextView f3067c;

    /* JADX INFO: renamed from: d */
    public ImageView f3068d;

    /* JADX INFO: renamed from: e */
    public View f3069e;

    /* JADX INFO: renamed from: f */
    public C1264a f3070f;

    /* JADX INFO: renamed from: g */
    public View f3071g;

    /* JADX INFO: renamed from: h */
    public TextView f3072h;

    /* JADX INFO: renamed from: i */
    public ImageView f3073i;

    /* JADX INFO: renamed from: j */
    public Drawable f3074j;

    /* JADX INFO: renamed from: k */
    public int f3075k;

    /* JADX INFO: renamed from: l */
    public final /* synthetic */ TabLayout f3076l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1278l(TabLayout tabLayout, Context context) {
        super(context);
        this.f3076l = tabLayout;
        this.f3075k = 2;
        m2283f(context);
        setPaddingRelative(tabLayout.f2462f, tabLayout.f2463g, tabLayout.f2464h, tabLayout.f2465i);
        setGravity(17);
        setOrientation(!tabLayout.f2439F ? 1 : 0);
        setClickable(true);
        ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
    }

    @Nullable
    private C1264a getBadge() {
        return this.f3070f;
    }

    @NonNull
    private C1264a getOrCreateBadge() {
        if (this.f3070f == null) {
            this.f3070f = new C1264a(getContext());
        }
        m2280c();
        C1264a c1264a = this.f3070f;
        if (c1264a != null) {
            return c1264a;
        }
        C1929i.m3030l("Unable to create badge");
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final void m2278a(View view) {
        if (this.f3070f == null || view == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
        C1264a c1264a = this.f3070f;
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        c1264a.setBounds(rect);
        c1264a.m2270i(view, null);
        if (c1264a.m2265d() != null) {
            c1264a.m2265d().setForeground(c1264a);
        } else {
            view.getOverlay().add(c1264a);
        }
        this.f3069e = view;
    }

    /* JADX INFO: renamed from: b */
    public final void m2279b() {
        if (this.f3070f != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.f3069e;
            if (view != null) {
                C1264a c1264a = this.f3070f;
                if (c1264a != null) {
                    if (c1264a.m2265d() != null) {
                        c1264a.m2265d().setForeground(null);
                    } else {
                        view.getOverlay().remove(c1264a);
                    }
                }
                this.f3069e = null;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2280c() {
        C1275i c1275i;
        if (this.f3070f != null) {
            if (this.f3071g != null) {
                m2279b();
                return;
            }
            ImageView imageView = this.f3068d;
            if (imageView != null && (c1275i = this.f3066b) != null && c1275i.f3053b != null) {
                if (this.f3069e == imageView) {
                    m2281d(imageView);
                    return;
                } else {
                    m2279b();
                    m2278a(this.f3068d);
                    return;
                }
            }
            TextView textView = this.f3067c;
            if (textView == null || this.f3066b == null) {
                m2279b();
            } else if (this.f3069e == textView) {
                m2281d(textView);
            } else {
                m2279b();
                m2278a(this.f3067c);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2281d(View view) {
        C1264a c1264a = this.f3070f;
        if (c1264a == null || view != this.f3069e) {
            return;
        }
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        c1264a.setBounds(rect);
        c1264a.m2270i(view, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3074j;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f3074j.setState(drawableState)) {
            invalidate();
            this.f3076l.invalidate();
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    /* JADX INFO: renamed from: e */
    public final void m2282e() {
        boolean z9;
        m2284g();
        C1275i c1275i = this.f3066b;
        if (c1275i == null) {
            z9 = false;
        } else {
            TabLayout tabLayout = c1275i.f3058g;
            if (tabLayout == null) {
                C1929i.m3029k("Tab not attached to a TabLayout");
                return;
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            if (selectedTabPosition == -1 || selectedTabPosition != c1275i.f3056e) {
                z9 = false;
            } else {
                z9 = true;
            }
        }
        setSelected(z9);
    }

    /* JADX INFO: renamed from: f */
    public final void m2283f(Context context) {
        GradientDrawable gradientDrawable;
        TabLayout tabLayout = this.f3076l;
        int i10 = tabLayout.f2478v;
        if (i10 != 0) {
            Drawable drawable = AppCompatResources.getDrawable(context, i10);
            this.f3074j = drawable;
            if (drawable != null && drawable.isStateful()) {
                this.f3074j.setState(getDrawableState());
            }
        } else {
            this.f3074j = null;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(0);
        Drawable rippleDrawable = gradientDrawable2;
        if (tabLayout.f2471o != null) {
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setCornerRadius(1.0E-5f);
            gradientDrawable3.setColor(-1);
            ColorStateList colorStateList = tabLayout.f2471o;
            int[] iArr = AbstractC3567a.f10629d;
            int iM5683a = AbstractC3567a.m5683a(colorStateList, AbstractC3567a.f10628c);
            int[] iArr2 = AbstractC3567a.f10627b;
            ColorStateList colorStateList2 = new ColorStateList(new int[][]{iArr, iArr2, StateSet.NOTHING}, new int[]{iM5683a, AbstractC3567a.m5683a(colorStateList, iArr2), AbstractC3567a.m5683a(colorStateList, AbstractC3567a.f10626a)});
            boolean z9 = tabLayout.f2443J;
            if (z9) {
                gradientDrawable = gradientDrawable2;
                gradientDrawable = null;
            }
            rippleDrawable = new RippleDrawable(colorStateList2, gradientDrawable, z9 ? null : gradientDrawable3);
        }
        setBackground(rippleDrawable);
        tabLayout.invalidate();
    }

    /* JADX INFO: renamed from: g */
    public final void m2284g() {
        int i10;
        ViewParent parent;
        C1275i c1275i = this.f3066b;
        View view = c1275i != null ? c1275i.f3057f : null;
        if (view != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(view);
                }
                View view2 = this.f3071g;
                if (view2 != null && (parent = view2.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.f3071g);
                }
                addView(view);
            }
            this.f3071g = view;
            TextView textView = this.f3067c;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f3068d;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f3068d.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            this.f3072h = textView2;
            if (textView2 != null) {
                this.f3075k = textView2.getMaxLines();
            }
            this.f3073i = (ImageView) view.findViewById(R.id.icon);
        } else {
            View view3 = this.f3071g;
            if (view3 != null) {
                removeView(view3);
                this.f3071g = null;
            }
            this.f3072h = null;
            this.f3073i = null;
        }
        if (this.f3071g == null) {
            if (this.f3068d == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.example.navistart.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                this.f3068d = imageView2;
                addView(imageView2, 0);
            }
            if (this.f3067c == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.example.navistart.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                this.f3067c = textView3;
                addView(textView3);
                this.f3075k = this.f3067c.getMaxLines();
            }
            TextView textView4 = this.f3067c;
            TabLayout tabLayout = this.f3076l;
            TextViewCompat.setTextAppearance(textView4, tabLayout.f2466j);
            if (!isSelected() || (i10 = tabLayout.f2468l) == -1) {
                TextViewCompat.setTextAppearance(this.f3067c, tabLayout.f2467k);
            } else {
                TextViewCompat.setTextAppearance(this.f3067c, i10);
            }
            ColorStateList colorStateList = tabLayout.f2469m;
            if (colorStateList != null) {
                this.f3067c.setTextColor(colorStateList);
            }
            m2285h(this.f3067c, this.f3068d, true);
            m2280c();
            ImageView imageView3 = this.f3068d;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC1277k(this, imageView3));
            }
            TextView textView5 = this.f3067c;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC1277k(this, textView5));
            }
        } else {
            TextView textView6 = this.f3072h;
            if (textView6 != null || this.f3073i != null) {
                m2285h(textView6, this.f3073i, false);
            }
        }
        if (c1275i == null || TextUtils.isEmpty(c1275i.f3055d)) {
            return;
        }
        setContentDescription(c1275i.f3055d);
    }

    public int getContentHeight() {
        View[] viewArr = {this.f3067c, this.f3068d, this.f3071g};
        int iMax = 0;
        int iMin = 0;
        boolean z9 = false;
        for (int i10 = 0; i10 < 3; i10++) {
            View view = viewArr[i10];
            if (view != null && view.getVisibility() == 0) {
                iMin = z9 ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z9 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z9 = true;
            }
        }
        return iMax - iMin;
    }

    public int getContentWidth() {
        View[] viewArr = {this.f3067c, this.f3068d, this.f3071g};
        int iMax = 0;
        int iMin = 0;
        boolean z9 = false;
        for (int i10 = 0; i10 < 3; i10++) {
            View view = viewArr[i10];
            if (view != null && view.getVisibility() == 0) {
                iMin = z9 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z9 ? Math.max(iMax, view.getRight()) : view.getRight();
                z9 = true;
            }
        }
        return iMax - iMin;
    }

    @Nullable
    public C1275i getTab() {
        return this.f3066b;
    }

    /* JADX INFO: renamed from: h */
    public final void m2285h(TextView textView, ImageView imageView, boolean z9) {
        boolean z10;
        Drawable drawable;
        C1275i c1275i = this.f3066b;
        Drawable drawableMutate = (c1275i == null || (drawable = c1275i.f3053b) == null) ? null : DrawableCompat.wrap(drawable).mutate();
        TabLayout tabLayout = this.f3076l;
        if (drawableMutate != null) {
            drawableMutate.setTintList(tabLayout.f2470n);
            PorterDuff.Mode mode = tabLayout.f2474r;
            if (mode != null) {
                drawableMutate.setTintMode(mode);
            }
        }
        C1275i c1275i2 = this.f3066b;
        CharSequence charSequence = c1275i2 != null ? c1275i2.f3054c : null;
        if (imageView != null) {
            if (drawableMutate != null) {
                imageView.setImageDrawable(drawableMutate);
                imageView.setVisibility(0);
                setVisibility(0);
            } else {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
        }
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        if (textView != null) {
            if (zIsEmpty) {
                z10 = false;
            } else {
                this.f3066b.getClass();
                z10 = true;
            }
            textView.setText(!zIsEmpty ? charSequence : null);
            textView.setVisibility(z10 ? 0 : 8);
            if (!zIsEmpty) {
                setVisibility(0);
            }
        } else {
            z10 = false;
        }
        if (z9 && imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int iM5138a = (z10 && imageView.getVisibility() == 0) ? (int) AbstractC3203q.m5138a(8, getContext()) : 0;
            if (tabLayout.f2439F) {
                if (iM5138a != marginLayoutParams.getMarginEnd()) {
                    marginLayoutParams.setMarginEnd(iM5138a);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iM5138a != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iM5138a;
                marginLayoutParams.setMarginEnd(0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        C1275i c1275i3 = this.f3066b;
        CharSequence charSequence2 = c1275i3 != null ? c1275i3.f3055d : null;
        if (zIsEmpty) {
            charSequence = charSequence2;
        }
        TooltipCompat.setTooltipText(this, charSequence);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0068  */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        Context context;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        C1264a c1264a = this.f3070f;
        if (c1264a != null && c1264a.isVisible()) {
            C1264a c1264a2 = this.f3070f;
            C1266c c1266c = c1264a2.f2987f;
            CharSequence quantityString = null;
            if (c1264a2.isVisible()) {
                C1265b c1265b = c1266c.f3028b;
                if (c1265b.f3011k != null) {
                    quantityString = c1265b.f3016p;
                    if (quantityString == null) {
                        quantityString = c1264a2.f2987f.f3028b.f3011k;
                    }
                } else if (!c1264a2.m2268g()) {
                    quantityString = c1265b.f3017q;
                } else if (c1265b.f3018r != 0 && (context = (Context) c1264a2.f2983b.get()) != null) {
                    if (c1264a2.f2990i != -2) {
                        int iM2266e = c1264a2.m2266e();
                        int i10 = c1264a2.f2990i;
                        if (iM2266e <= i10) {
                            quantityString = context.getResources().getQuantityString(c1265b.f3018r, c1264a2.m2266e(), Integer.valueOf(c1264a2.m2266e()));
                        } else {
                            quantityString = context.getString(c1265b.f3019s, Integer.valueOf(i10));
                        }
                    } else {
                        quantityString = context.getResources().getQuantityString(c1265b.f3018r, c1264a2.m2266e(), Integer.valueOf(c1264a2.m2266e()));
                    }
                }
            }
            accessibilityNodeInfoCompatWrap.setContentDescription(quantityString);
        }
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f3066b.f3056e, 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.example.navistart.R.string.item_view_role_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        TabLayout tabLayout = this.f3076l;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i10 = View.MeasureSpec.makeMeasureSpec(tabLayout.f2479w, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f3067c != null) {
            float f8 = tabLayout.f2475s;
            if (isSelected() && tabLayout.f2468l != -1) {
                f8 = tabLayout.f2476t;
            }
            int i12 = this.f3075k;
            ImageView imageView = this.f3068d;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f3067c;
                if (textView != null && textView.getLineCount() > 1) {
                    f8 = tabLayout.f2477u;
                }
            } else {
                i12 = 1;
            }
            float textSize = this.f3067c.getTextSize();
            int lineCount = this.f3067c.getLineCount();
            int maxLines = this.f3067c.getMaxLines();
            if (f8 != textSize || (maxLines >= 0 && i12 != maxLines)) {
                if (tabLayout.f2438E == 1 && f8 > textSize && lineCount == 1) {
                    Layout layout = this.f3067c.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f8 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f3067c.setTextSize(0, f8);
                this.f3067c.setMaxLines(i12);
                super.onMeasure(i10, i11);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.f3066b == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        C1275i c1275i = this.f3066b;
        TabLayout tabLayout = c1275i.f3058g;
        if (tabLayout != null) {
            tabLayout.m1841l(c1275i, true);
            return true;
        }
        C1929i.m3029k("Tab not attached to a TabLayout");
        return false;
    }

    @Override // android.view.View
    public void setSelected(boolean z9) {
        isSelected();
        super.setSelected(z9);
        TextView textView = this.f3067c;
        if (textView != null) {
            textView.setSelected(z9);
        }
        ImageView imageView = this.f3068d;
        if (imageView != null) {
            imageView.setSelected(z9);
        }
        View view = this.f3071g;
        if (view != null) {
            view.setSelected(z9);
        }
    }

    public void setTab(@Nullable C1275i c1275i) {
        if (c1275i != this.f3066b) {
            this.f3066b = c1275i;
            m2282e();
        }
    }
}
