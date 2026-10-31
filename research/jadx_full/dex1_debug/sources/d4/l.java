package d4;

import android.R$id;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
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
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.tabs.TabLayout;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends LinearLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f1752m = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f1753b;
    public TextView c;
    public ImageView d;
    public View e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d3.a f1754f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f1755g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f1757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f1758j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1759k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ TabLayout f1760l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(TabLayout tabLayout, Context context) {
        super(context);
        this.f1760l = tabLayout;
        this.f1759k = 2;
        f(context);
        setPaddingRelative(tabLayout.f1361f, tabLayout.f1362g, tabLayout.f1363h, tabLayout.f1364i);
        setGravity(17);
        setOrientation(!tabLayout.F ? 1 : 0);
        setClickable(true);
        ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private d3.a getBadge() {
        return this.f1754f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private d3.a getOrCreateBadge() {
        if (this.f1754f == null) {
            this.f1754f = new d3.a(getContext());
        }
        c();
        d3.a aVar = this.f1754f;
        if (aVar != null) {
            return aVar;
        }
        j1.i.l("Unable to create badge");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(View view) {
        if (this.f1754f == null || view == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
        d3.a aVar = this.f1754f;
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.i(view, null);
        if (aVar.d() != null) {
            aVar.d().setForeground(aVar);
        } else {
            view.getOverlay().add(aVar);
        }
        this.e = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.f1754f != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.e;
            if (view != null) {
                d3.a aVar = this.f1754f;
                if (aVar != null) {
                    if (aVar.d() != null) {
                        aVar.d().setForeground(null);
                    } else {
                        view.getOverlay().remove(aVar);
                    }
                }
                this.e = null;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        i iVar;
        if (this.f1754f != null) {
            if (this.f1755g != null) {
                b();
                return;
            }
            ImageView imageView = this.d;
            if (imageView != null && (iVar = this.f1753b) != null && iVar.f1744b != null) {
                if (this.e == imageView) {
                    d(imageView);
                    return;
                } else {
                    b();
                    a(this.d);
                    return;
                }
            }
            TextView textView = this.c;
            if (textView == null || this.f1753b == null) {
                b();
            } else if (this.e == textView) {
                d(textView);
            } else {
                b();
                a(this.c);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(View view) {
        d3.a aVar = this.f1754f;
        if (aVar == null || view != this.e) {
            return;
        }
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.i(view, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1758j;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f1758j.setState(drawableState)) {
            invalidate();
            this.f1760l.invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    public final void e() {
        boolean z8;
        g();
        i iVar = this.f1753b;
        if (iVar == null) {
            z8 = false;
        } else {
            TabLayout tabLayout = iVar.f1746g;
            if (tabLayout == null) {
                j1.i.k("Tab not attached to a TabLayout");
                return;
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            if (selectedTabPosition == -1 || selectedTabPosition != iVar.e) {
                z8 = false;
            } else {
                z8 = true;
            }
        }
        setSelected(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(Context context) {
        GradientDrawable gradientDrawable;
        TabLayout tabLayout = this.f1760l;
        int i9 = tabLayout.f1375v;
        if (i9 != 0) {
            Drawable drawable = AppCompatResources.getDrawable(context, i9);
            this.f1758j = drawable;
            if (drawable != null && drawable.isStateful()) {
                this.f1758j.setState(getDrawableState());
            }
        } else {
            this.f1758j = null;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(0);
        Drawable rippleDrawable = gradientDrawable2;
        if (tabLayout.f1370o != null) {
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setCornerRadius(1.0E-5f);
            gradientDrawable3.setColor(-1);
            ColorStateList colorStateList = tabLayout.f1370o;
            int[] iArr = x3.a.d;
            int iA = x3.a.a(colorStateList, x3.a.c);
            int[] iArr2 = x3.a.f6026b;
            ColorStateList colorStateList2 = new ColorStateList(new int[][]{iArr, iArr2, StateSet.NOTHING}, new int[]{iA, x3.a.a(colorStateList, iArr2), x3.a.a(colorStateList, x3.a.f6025a)});
            boolean z8 = tabLayout.J;
            if (z8) {
                gradientDrawable = gradientDrawable2;
                gradientDrawable = null;
            }
            rippleDrawable = new RippleDrawable(colorStateList2, gradientDrawable, z8 ? null : gradientDrawable3);
        }
        setBackground(rippleDrawable);
        tabLayout.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        int i9;
        ViewParent parent;
        i iVar = this.f1753b;
        View view = iVar != null ? iVar.f1745f : null;
        if (view != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(view);
                }
                View view2 = this.f1755g;
                if (view2 != null && (parent = view2.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.f1755g);
                }
                addView(view);
            }
            this.f1755g = view;
            TextView textView = this.c;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.d;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.d.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R$id.text1);
            this.f1756h = textView2;
            if (textView2 != null) {
                this.f1759k = textView2.getMaxLines();
            }
            this.f1757i = (ImageView) view.findViewById(R$id.icon);
        } else {
            View view3 = this.f1755g;
            if (view3 != null) {
                removeView(view3);
                this.f1755g = null;
            }
            this.f1756h = null;
            this.f1757i = null;
        }
        if (this.f1755g == null) {
            if (this.d == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(2131492924, (ViewGroup) this, false);
                this.d = imageView2;
                addView(imageView2, 0);
            }
            if (this.c == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(2131492925, (ViewGroup) this, false);
                this.c = textView3;
                addView(textView3);
                this.f1759k = this.c.getMaxLines();
            }
            TextView textView4 = this.c;
            TabLayout tabLayout = this.f1760l;
            TextViewCompat.setTextAppearance(textView4, tabLayout.f1365j);
            if (!isSelected() || (i9 = tabLayout.f1367l) == -1) {
                TextViewCompat.setTextAppearance(this.c, tabLayout.f1366k);
            } else {
                TextViewCompat.setTextAppearance(this.c, i9);
            }
            ColorStateList colorStateList = tabLayout.f1368m;
            if (colorStateList != null) {
                this.c.setTextColor(colorStateList);
            }
            h(this.c, this.d, true);
            c();
            ImageView imageView3 = this.d;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new k(this, imageView3));
            }
            TextView textView5 = this.c;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new k(this, textView5));
            }
        } else {
            TextView textView6 = this.f1756h;
            if (textView6 != null || this.f1757i != null) {
                h(textView6, this.f1757i, false);
            }
        }
        if (iVar == null || TextUtils.isEmpty(iVar.d)) {
            return;
        }
        setContentDescription(iVar.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getContentHeight() {
        View[] viewArr = {this.c, this.d, this.f1755g};
        int iMax = 0;
        int iMin = 0;
        boolean z8 = false;
        for (int i9 = 0; i9 < 3; i9++) {
            View view = viewArr[i9];
            if (view != null && view.getVisibility() == 0) {
                iMin = z8 ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z8 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z8 = true;
            }
        }
        return iMax - iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getContentWidth() {
        View[] viewArr = {this.c, this.d, this.f1755g};
        int iMax = 0;
        int iMin = 0;
        boolean z8 = false;
        for (int i9 = 0; i9 < 3; i9++) {
            View view = viewArr[i9];
            if (view != null && view.getVisibility() == 0) {
                iMin = z8 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z8 ? Math.max(iMax, view.getRight()) : view.getRight();
                z8 = true;
            }
        }
        return iMax - iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public i getTab() {
        return this.f1753b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(TextView textView, ImageView imageView, boolean z8) {
        boolean z9;
        Drawable drawable;
        i iVar = this.f1753b;
        Drawable drawableMutate = (iVar == null || (drawable = iVar.f1744b) == null) ? null : DrawableCompat.wrap(drawable).mutate();
        TabLayout tabLayout = this.f1760l;
        if (drawableMutate != null) {
            drawableMutate.setTintList(tabLayout.f1369n);
            PorterDuff$Mode porterDuff$Mode = tabLayout.r;
            if (porterDuff$Mode != null) {
                drawableMutate.setTintMode(porterDuff$Mode);
            }
        }
        i iVar2 = this.f1753b;
        CharSequence charSequence = iVar2 != null ? iVar2.c : null;
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
                z9 = false;
            } else {
                this.f1753b.getClass();
                z9 = true;
            }
            textView.setText(!zIsEmpty ? charSequence : null);
            textView.setVisibility(z9 ? 0 : 8);
            if (!zIsEmpty) {
                setVisibility(0);
            }
        } else {
            z9 = false;
        }
        if (z8 && imageView != null) {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) imageView.getLayoutParams();
            int iA = (z9 && imageView.getVisibility() == 0) ? (int) q.a(8, getContext()) : 0;
            if (tabLayout.F) {
                if (iA != viewGroup$MarginLayoutParams.getMarginEnd()) {
                    viewGroup$MarginLayoutParams.setMarginEnd(iA);
                    viewGroup$MarginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(viewGroup$MarginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iA != viewGroup$MarginLayoutParams.bottomMargin) {
                viewGroup$MarginLayoutParams.bottomMargin = iA;
                viewGroup$MarginLayoutParams.setMarginEnd(0);
                imageView.setLayoutParams(viewGroup$MarginLayoutParams);
                imageView.requestLayout();
            }
        }
        i iVar3 = this.f1753b;
        CharSequence charSequence2 = iVar3 != null ? iVar3.d : null;
        if (zIsEmpty) {
            charSequence = charSequence2;
        }
        TooltipCompat.setTooltipText(this, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x0068  */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        Context context;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        d3.a aVar = this.f1754f;
        if (aVar != null && aVar.isVisible()) {
            d3.a aVar2 = this.f1754f;
            d3.c cVar = aVar2.f1698f;
            CharSequence quantityString = null;
            if (aVar2.isVisible()) {
                d3.b bVar = cVar.f1727b;
                if (bVar.f1713k != null) {
                    quantityString = bVar.f1718p;
                    if (quantityString == null) {
                        quantityString = aVar2.f1698f.f1727b.f1713k;
                    }
                } else if (!aVar2.g()) {
                    quantityString = bVar.f1719q;
                } else if (bVar.r != 0 && (context = (Context) aVar2.f1697b.get()) != null) {
                    if (aVar2.f1701i != -2) {
                        int iE = aVar2.e();
                        int i9 = aVar2.f1701i;
                        if (iE <= i9) {
                            quantityString = context.getResources().getQuantityString(bVar.r, aVar2.e(), Integer.valueOf(aVar2.e()));
                        } else {
                            quantityString = context.getString(bVar.f1720s, Integer.valueOf(i9));
                        }
                    } else {
                        quantityString = context.getResources().getQuantityString(bVar.r, aVar2.e(), Integer.valueOf(aVar2.e()));
                    }
                }
            }
            accessibilityNodeInfoCompatWrap.setContentDescription(quantityString);
        }
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(0, 1, this.f1753b.e, 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(2131952056));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        int size = View$MeasureSpec.getSize(i9);
        int mode = View$MeasureSpec.getMode(i9);
        TabLayout tabLayout = this.f1760l;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i9 = View$MeasureSpec.makeMeasureSpec(tabLayout.w, Integer.MIN_VALUE);
        }
        super.onMeasure(i9, i10);
        if (this.c != null) {
            float f8 = tabLayout.f1373s;
            if (isSelected() && tabLayout.f1367l != -1) {
                f8 = tabLayout.t;
            }
            int i11 = this.f1759k;
            ImageView imageView = this.d;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.c;
                if (textView != null && textView.getLineCount() > 1) {
                    f8 = tabLayout.f1374u;
                }
            } else {
                i11 = 1;
            }
            float textSize = this.c.getTextSize();
            int lineCount = this.c.getLineCount();
            int maxLines = this.c.getMaxLines();
            if (f8 != textSize || (maxLines >= 0 && i11 != maxLines)) {
                if (tabLayout.E == 1 && f8 > textSize && lineCount == 1) {
                    Layout layout = this.c.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f8 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.c.setTextSize(0, f8);
                this.c.setMaxLines(i11);
                super.onMeasure(i9, i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.f1753b == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        i iVar = this.f1753b;
        TabLayout tabLayout = iVar.f1746g;
        if (tabLayout != null) {
            tabLayout.l(iVar, true);
            return true;
        }
        j1.i.k("Tab not attached to a TabLayout");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setSelected(boolean z8) {
        isSelected();
        super.setSelected(z8);
        TextView textView = this.c;
        if (textView != null) {
            textView.setSelected(z8);
        }
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setSelected(z8);
        }
        View view = this.f1755g;
        if (view != null) {
            view.setSelected(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTab(@Nullable i iVar) {
        if (iVar != this.f1753b) {
            this.f1753b = iVar;
            e();
        }
    }
}
