package com.google.android.material.timepicker;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader$TileMode;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
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
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ClockFaceView extends g implements e {
    public final ClockHandView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f1426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RectF f1427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f1428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseArray f1429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f1430j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f1431k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float[] f1432l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f1433m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f1434n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1435o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1436p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String[] f1437q;
    public float r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ColorStateList f1438s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1426f = new Rect();
        this.f1427g = new RectF();
        this.f1428h = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.f1429i = sparseArray;
        this.f1432l = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.f10g, 2130903951, 2132018420);
        Resources resources = getResources();
        ColorStateList colorStateListA = w3.c.a(context, typedArrayObtainStyledAttributes, 1);
        this.f1438s = colorStateListA;
        LayoutInflater.from(context).inflate(2131493033, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(2131296965);
        this.e = clockHandView;
        this.f1433m = resources.getDimensionPixelSize(2131100435);
        int colorForState = colorStateListA.getColorForState(new int[]{R$attr.state_selected}, colorStateListA.getDefaultColor());
        this.f1431k = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.d.add(this);
        int defaultColor = AppCompatResources.getColorStateList(context, 2131034995).getDefaultColor();
        ColorStateList colorStateListA2 = w3.c.a(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(false);
        typedArrayObtainStyledAttributes.recycle();
        this.f1430j = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f1437q = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z8 = false;
        for (int i9 = 0; i9 < Math.max(this.f1437q.length, size); i9++) {
            TextView textView = (TextView) sparseArray.get(i9);
            if (i9 >= this.f1437q.length) {
                removeView(textView);
                sparseArray.remove(i9);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(2131493032, (ViewGroup) this, false);
                    sparseArray.put(i9, textView);
                    addView(textView);
                }
                textView.setText(this.f1437q[i9]);
                textView.setTag(2131296981, Integer.valueOf(i9));
                int i10 = (i9 / 12) + 1;
                textView.setTag(2131296966, Integer.valueOf(i10));
                z8 = i10 > 1 ? true : z8;
                ViewCompat.setAccessibilityDelegate(textView, this.f1430j);
                textView.setTextColor(this.f1438s);
            }
        }
        ClockHandView clockHandView2 = this.e;
        if (clockHandView2.c && !z8) {
            clockHandView2.f1449n = 1;
        }
        clockHandView2.c = z8;
        clockHandView2.invalidate();
        this.f1434n = resources.getDimensionPixelSize(2131100464);
        this.f1435o = resources.getDimensionPixelSize(2131100465);
        this.f1436p = resources.getDimensionPixelSize(2131100442);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.timepicker.g
    public final void a() {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getId() != 2131296635 && !"skip".equals(childAt.getTag())) {
                int i10 = (Integer) childAt.getTag(2131296966);
                if (i10 == null) {
                    i10 = 1;
                }
                if (!map.containsKey(i10)) {
                    map.put(i10, new ArrayList());
                }
                ((List) map.get(i10)).add(childAt);
            }
        }
        for (Map$Entry map$Entry : map.entrySet()) {
            List list = (List) map$Entry.getValue();
            int iIntValue = ((Integer) map$Entry.getKey()).intValue();
            int iRound = this.c;
            if (iIntValue == 2) {
                iRound = Math.round(iRound * 0.66f);
            }
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                constraintSet.constrainCircle(((View) it.next()).getId(), 2131296635, iRound, size);
                size += 360.0f / list.size();
            }
        }
        constraintSet.applyTo(this);
        int i11 = 0;
        while (true) {
            SparseArray sparseArray = this.f1429i;
            if (i11 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i11)).setVisibility(0);
            i11++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.e.f1443h;
        float f8 = Float.MAX_VALUE;
        TextView textView = null;
        int i9 = 0;
        while (true) {
            sparseArray = this.f1429i;
            int size = sparseArray.size();
            rect = this.f1426f;
            rectF = this.f1427g;
            if (i9 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i9);
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
            i9++;
        }
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            TextView textView3 = (TextView) sparseArray.get(i10);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                Rect rect2 = this.f1428h;
                textView3.getLineBounds(0, rect2);
                rectF.inset(rect2.left, rect2.top);
                textView3.getPaint().setShader(RectF.intersects(rectF2, rectF) ? new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f1431k, this.f1432l, Shader$TileMode.CLAMP) : null);
                textView3.invalidate();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(1, this.f1437q.length, false, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.f1436p / Math.max(Math.max(this.f1434n / displayMetrics.heightPixels, this.f1435o / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
