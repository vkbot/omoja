package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p004a3.AbstractC0007a;
import p228w3.AbstractC3518c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class ClockFaceView extends AbstractC1123g implements InterfaceC1121e {

    /* JADX INFO: renamed from: e */
    public final ClockHandView f2566e;

    /* JADX INFO: renamed from: f */
    public final Rect f2567f;

    /* JADX INFO: renamed from: g */
    public final RectF f2568g;

    /* JADX INFO: renamed from: h */
    public final Rect f2569h;

    /* JADX INFO: renamed from: i */
    public final SparseArray f2570i;

    /* JADX INFO: renamed from: j */
    public final C1119c f2571j;

    /* JADX INFO: renamed from: k */
    public final int[] f2572k;

    /* JADX INFO: renamed from: l */
    public final float[] f2573l;

    /* JADX INFO: renamed from: m */
    public final int f2574m;

    /* JADX INFO: renamed from: n */
    public final int f2575n;

    /* JADX INFO: renamed from: o */
    public final int f2576o;

    /* JADX INFO: renamed from: p */
    public final int f2577p;

    /* JADX INFO: renamed from: q */
    public final String[] f2578q;

    /* JADX INFO: renamed from: r */
    public float f2579r;

    /* JADX INFO: renamed from: s */
    public final ColorStateList f2580s;

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2567f = new Rect();
        this.f2568g = new RectF();
        this.f2569h = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.f2570i = sparseArray;
        this.f2573l = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f28g, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 1);
        this.f2580s = colorStateListM5587a;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f2566e = clockHandView;
        this.f2574m = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListM5587a.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListM5587a.getDefaultColor());
        this.f2572k = new int[]{colorForState, colorForState, colorStateListM5587a.getDefaultColor()};
        clockHandView.f2584d.add(this);
        int defaultColor = AppCompatResources.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListM5587a2 = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListM5587a2 != null ? colorStateListM5587a2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC1118b(this));
        setFocusable(false);
        typedArrayObtainStyledAttributes.recycle();
        this.f2571j = new C1119c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f2578q = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z9 = false;
        for (int i10 = 0; i10 < Math.max(this.f2578q.length, size); i10++) {
            TextView textView = (TextView) sparseArray.get(i10);
            if (i10 >= this.f2578q.length) {
                removeView(textView);
                sparseArray.remove(i10);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i10, textView);
                    addView(textView);
                }
                textView.setText(this.f2578q[i10]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i10));
                int i11 = (i10 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i11));
                z9 = i11 > 1 ? true : z9;
                ViewCompat.setAccessibilityDelegate(textView, this.f2571j);
                textView.setTextColor(this.f2580s);
            }
        }
        ClockHandView clockHandView2 = this.f2566e;
        if (clockHandView2.f2583c && !z9) {
            clockHandView2.f2594n = 1;
        }
        clockHandView2.f2583c = z9;
        clockHandView2.invalidate();
        this.f2575n = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f2576o = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f2577p = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    @Override // com.google.android.material.timepicker.AbstractC1123g
    /* JADX INFO: renamed from: a */
    public final void mo1873a() {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i11 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i11 == null) {
                    i11 = 1;
                }
                if (!map.containsKey(i11)) {
                    map.put(i11, new ArrayList());
                }
                ((List) map.get(i11)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iRound = this.f2603c;
            if (iIntValue == 2) {
                iRound = Math.round(iRound * 0.66f);
            }
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                constraintSet.constrainCircle(((View) it.next()).getId(), R.id.circle_center, iRound, size);
                size += 360.0f / list.size();
            }
        }
        constraintSet.applyTo(this);
        int i12 = 0;
        while (true) {
            SparseArray sparseArray = this.f2570i;
            if (i12 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i12)).setVisibility(0);
            i12++;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1874b() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.f2566e.f2588h;
        float f8 = Float.MAX_VALUE;
        TextView textView = null;
        int i10 = 0;
        while (true) {
            sparseArray = this.f2570i;
            int size = sparseArray.size();
            rect = this.f2567f;
            rectF = this.f2568g;
            if (i10 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i10);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float fHeight = rectF.height() * rectF.width();
                if (fHeight < f8) {
                    textView = textView2;
                    f8 = fHeight;
                }
            }
            i10++;
        }
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            TextView textView3 = (TextView) sparseArray.get(i11);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                Rect rect2 = this.f2569h;
                textView3.getLineBounds(0, rect2);
                rectF.inset(rect2.left, rect2.top);
                textView3.getPaint().setShader(RectF.intersects(rectF2, rectF) ? new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f2572k, this.f2573l, Shader.TileMode.CLAMP) : null);
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f2578q.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        m1874b();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.f2577p / Math.max(Math.max(this.f2575n / displayMetrics.heightPixels, this.f2576o / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
