package h3;

import android.content.Context;
import android.content.res.Resources$NotFoundException;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import m0.e1;
import n.p;
import org.xmlpull.v1.XmlPullParserException;
import s3.l;
import z3.a0;
import z3.b0;
import z3.c0;
import z3.d0;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2440b;
    public final ArrayList c;
    public final r5.c d;
    public final d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer[] f2441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a0 f2442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b0 f2443h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2444i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d0 f2445j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2446k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, AttributeSet attributeSet) {
        a0 a0VarB;
        int next;
        d0 d0Var;
        int next2;
        super(g4.a.a(context, attributeSet, 2130903929, 2132018220), attributeSet, 2130903929);
        this.f2440b = new ArrayList();
        this.c = new ArrayList();
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this;
        this.d = new r5.c(13, materialButtonToggleGroup);
        this.e = new d(0, materialButtonToggleGroup);
        this.f2446k = true;
        Context context2 = getContext();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.f18o, 2130903929, 2132018220, new int[0]);
        if (typedArrayD.hasValue(2)) {
            int resourceId = typedArrayD.getResourceId(2, 0);
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    XmlResourceParser xml = context2.getResources().getXml(resourceId);
                    try {
                        d0Var = new d0();
                        d0Var.c = new int[10][];
                        d0Var.d = new p[10];
                        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                        if (next2 != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            d0Var.a(context2, xml, attributeSetAsAttributeSet, context2.getTheme());
                        }
                        xml.close();
                    } catch (Throwable th) {
                        if (xml == null) {
                            throw th;
                        }
                        try {
                            xml.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Resources$NotFoundException | IOException | XmlPullParserException unused) {
                    d0Var = null;
                }
            } else {
                d0Var = null;
            }
            this.f2445j = d0Var;
        }
        if (typedArrayD.hasValue(4)) {
            b0 b0VarB = b0.b(context2, typedArrayD, 4);
            this.f2443h = b0VarB;
            if (b0VarB == null) {
                e1 e1Var = new e1(o.a(context2, typedArrayD.getResourceId(4, 0), typedArrayD.getResourceId(5, 0)).a());
                this.f2443h = e1Var.f3402b != 0 ? new b0(e1Var) : null;
            }
        }
        if (typedArrayD.hasValue(3)) {
            z3.a aVar = new z3.a(0.0f);
            int resourceId2 = typedArrayD.getResourceId(3, 0);
            if (resourceId2 != 0 && context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    XmlResourceParser xml2 = context2.getResources().getXml(resourceId2);
                    try {
                        a0VarB = new a0();
                        AttributeSet attributeSetAsAttributeSet2 = Xml.asAttributeSet(xml2);
                        do {
                            next = xml2.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml2.getName().equals("selector")) {
                            a0VarB.d(context2, xml2, attributeSetAsAttributeSet2, context2.getTheme());
                        }
                        xml2.close();
                    } catch (Throwable th3) {
                        if (xml2 == null) {
                            throw th3;
                        }
                        try {
                            xml2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Resources$NotFoundException | IOException | XmlPullParserException unused2) {
                    a0VarB = a0.b(aVar);
                }
            } else {
                a0VarB = a0.b(o.d(typedArrayD, 3, aVar));
            }
            this.f2442g = a0VarB;
        }
        this.f2444i = typedArrayD.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (c(i9)) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        int iMin;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i9 = firstVisibleChildIndex + 1; i9 < getChildCount(); i9++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i9);
            MaterialButton materialButton2 = (MaterialButton) getChildAt(i9 - 1);
            if (this.f2444i <= 0) {
                iMin = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                materialButton.setShouldDrawSurfaceColorStroke(true);
                materialButton2.setShouldDrawSurfaceColorStroke(true);
            } else {
                materialButton.setShouldDrawSurfaceColorStroke(false);
                materialButton2.setShouldDrawSurfaceColorStroke(false);
                iMin = 0;
            }
            ViewGroup$LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout$LayoutParams linearLayout$LayoutParams = layoutParams instanceof LinearLayout$LayoutParams ? (LinearLayout$LayoutParams) layoutParams : new LinearLayout$LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                linearLayout$LayoutParams.setMarginEnd(0);
                linearLayout$LayoutParams.setMarginStart(this.f2444i - iMin);
                linearLayout$LayoutParams.topMargin = 0;
            } else {
                linearLayout$LayoutParams.bottomMargin = 0;
                linearLayout$LayoutParams.topMargin = this.f2444i - iMin;
                linearLayout$LayoutParams.setMarginStart(0);
            }
            materialButton.setLayoutParams(linearLayout$LayoutParams);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = (LinearLayout$LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            linearLayout$LayoutParams2.topMargin = 0;
            linearLayout$LayoutParams2.bottomMargin = 0;
        } else {
            linearLayout$LayoutParams2.setMarginEnd(0);
            linearLayout$LayoutParams2.setMarginStart(0);
            linearLayout$LayoutParams2.leftMargin = 0;
            linearLayout$LayoutParams2.rightMargin = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        d();
        this.f2446k = true;
        super.addView(view, i9, viewGroup$LayoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.d);
        this.f2440b.add(materialButton.getShapeAppearanceModel());
        this.c.add(materialButton.getStateListShapeAppearanceModel());
        materialButton.setEnabled(isEnabled());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        float fMax;
        if (this.f2445j == null || getChildCount() == 0) {
            return;
        }
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        int iMin = Integer.MAX_VALUE;
        for (int i9 = firstVisibleChildIndex; i9 <= lastVisibleChildIndex; i9++) {
            if (c(i9)) {
                int iMin2 = 0;
                if (c(i9) && this.f2445j != null) {
                    MaterialButton materialButton3 = (MaterialButton) getChildAt(i9);
                    d0 d0Var = this.f2445j;
                    int width = materialButton3.getWidth();
                    int i10 = -width;
                    for (int i11 = 0; i11 < d0Var.f6209a; i11++) {
                        c0 c0Var = (c0) d0Var.d[i11].c;
                        int i12 = c0Var.f6207a;
                        float f8 = c0Var.f6208b;
                        if (i12 == 2) {
                            fMax = Math.max(i10, f8);
                        } else {
                            if (i12 == 1) {
                                fMax = Math.max(i10, width * f8);
                            }
                        }
                        i10 = (int) fMax;
                    }
                    int iMax = Math.max(0, i10);
                    int i13 = i9 - 1;
                    while (true) {
                        materialButton = null;
                        if (i13 < 0) {
                            materialButton2 = null;
                            break;
                        } else {
                            if (c(i13)) {
                                materialButton2 = (MaterialButton) getChildAt(i13);
                                break;
                            }
                            i13--;
                        }
                    }
                    int allowedWidthDecrease = materialButton2 == null ? 0 : materialButton2.getAllowedWidthDecrease();
                    int childCount = getChildCount();
                    for (int i14 = i9 + 1; i14 < childCount; i14++) {
                        if (c(i14)) {
                            materialButton = (MaterialButton) getChildAt(i14);
                            break;
                        }
                    }
                    iMin2 = Math.min(iMax, allowedWidthDecrease + (materialButton != null ? materialButton.getAllowedWidthDecrease() : 0));
                }
                if (i9 != firstVisibleChildIndex && i9 != lastVisibleChildIndex) {
                    iMin2 /= 2;
                }
                iMin = Math.min(iMin, iMin2);
            }
        }
        int i15 = firstVisibleChildIndex;
        while (i15 <= lastVisibleChildIndex) {
            if (c(i15)) {
                ((MaterialButton) getChildAt(i15)).setSizeChange(this.f2445j);
                ((MaterialButton) getChildAt(i15)).setWidthChangeMax((i15 == firstVisibleChildIndex || i15 == lastVisibleChildIndex) ? iMin : iMin * 2);
            }
            i15++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(int i9) {
        return getChildAt(i9).getVisibility() != 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i9);
            LinearLayout$LayoutParams linearLayout$LayoutParams = materialButton.t;
            if (linearLayout$LayoutParams != null) {
                materialButton.setLayoutParams(linearLayout$LayoutParams);
                materialButton.t = null;
                materialButton.f1197q = -1.0f;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.e);
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            treeMap.put((MaterialButton) getChildAt(i9), Integer.valueOf(i9));
        }
        this.f2441f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Serializable, z3.o[]] */
    public final void e() {
        e1 e1Var;
        int i9;
        if (!(this.f2442g == null && this.f2443h == null) && this.f2446k) {
            this.f2446k = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i10 = 0;
            while (i10 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i10);
                if (materialButton.getVisibility() != 8) {
                    boolean z8 = i10 == firstVisibleChildIndex;
                    boolean z9 = i10 == lastVisibleChildIndex;
                    b0 b0Var = this.f2443h;
                    if (b0Var == null || (!z8 && !z9)) {
                        b0Var = (b0) this.c.get(i10);
                    }
                    if (b0Var == null) {
                        e1Var = new e1((o) this.f2440b.get(i10));
                    } else {
                        e1 e1Var2 = new e1();
                        int i11 = b0Var.f6201a;
                        e1Var2.f3402b = i11;
                        e1Var2.c = b0Var.f6202b;
                        int[][] iArr = b0Var.c;
                        int[][] iArr2 = new int[iArr.length][];
                        e1Var2.d = iArr2;
                        o[] oVarArr = b0Var.d;
                        e1Var2.e = new o[oVarArr.length];
                        System.arraycopy(iArr, 0, iArr2, 0, i11);
                        System.arraycopy(oVarArr, 0, (o[]) e1Var2.e, 0, e1Var2.f3402b);
                        e1Var2.f3403f = b0Var.e;
                        e1Var2.f3404g = b0Var.f6203f;
                        e1Var2.f3405h = b0Var.f6204g;
                        e1Var2.f3406i = b0Var.f6205h;
                        e1Var = e1Var2;
                    }
                    boolean z10 = getOrientation() == 0;
                    boolean z11 = getLayoutDirection() == 1;
                    if (z10) {
                        i9 = z8 ? 5 : 0;
                        if (z9) {
                            i9 |= 10;
                        }
                        if (z11) {
                            i9 = ((i9 & 10) >> 1) | ((i9 & 5) << 1);
                        }
                    } else {
                        i9 = z8 ? 3 : 0;
                        if (z9) {
                            i9 |= 12;
                        }
                    }
                    int i12 = ~i9;
                    a0 a0Var = this.f2442g;
                    if ((i12 | 1) == i12) {
                        e1Var.f3403f = a0Var;
                    }
                    if ((i12 | 2) == i12) {
                        e1Var.f3404g = a0Var;
                    }
                    if ((i12 | 4) == i12) {
                        e1Var.f3405h = a0Var;
                    }
                    if ((i12 | 8) == i12) {
                        e1Var.f3406i = a0Var;
                    }
                    b0 b0Var2 = e1Var.f3402b == 0 ? null : new b0(e1Var);
                    if (b0Var2.d()) {
                        materialButton.setStateListShapeAppearanceModel(b0Var2);
                    } else {
                        materialButton.setShapeAppearanceModel(b0Var2.c());
                    }
                }
                i10++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public d0 getButtonSizeChange() {
        return this.f2445j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i9, int i10) {
        Integer[] numArr = this.f2441f;
        if (numArr != null && i10 < numArr.length) {
            return numArr[i10].intValue();
        }
        Log.w("MButtonGroup", "Child order wasn't updated");
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public z3.d getInnerCornerSize() {
        return this.f2442g.f6198b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public a0 getInnerCornerSizeStateList() {
        return this.f2442g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public o getShapeAppearance() {
        b0 b0Var = this.f2443h;
        if (b0Var == null) {
            return null;
        }
        return b0Var.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getSpacing() {
        return this.f2444i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public b0 getStateListShapeAppearance() {
        return this.f2443h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
        if (z8) {
            d();
            b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        e();
        a();
        super.onMeasure(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f2440b.remove(iIndexOfChild);
            this.c.remove(iIndexOfChild);
        }
        this.f2446k = true;
        e();
        d();
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setButtonSizeChange(@NonNull d0 d0Var) {
        if (this.f2445j != d0Var) {
            this.f2445j = d0Var;
            b();
            requestLayout();
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setEnabled(boolean z8) {
        super.setEnabled(z8);
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            ((MaterialButton) getChildAt(i9)).setEnabled(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInnerCornerSize(@NonNull z3.d dVar) {
        this.f2442g = a0.b(dVar);
        this.f2446k = true;
        e();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setInnerCornerSizeStateList(@NonNull a0 a0Var) {
        this.f2442g = a0Var;
        this.f2446k = true;
        e();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout
    public void setOrientation(int i9) {
        if (getOrientation() != i9) {
            this.f2446k = true;
        }
        super.setOrientation(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShapeAppearance(@Nullable o oVar) {
        e1 e1Var = new e1(oVar);
        this.f2443h = e1Var.f3402b == 0 ? null : new b0(e1Var);
        this.f2446k = true;
        e();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpacing(@Px int i9) {
        this.f2444i = i9;
        invalidate();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setStateListShapeAppearance(@Nullable b0 b0Var) {
        this.f2443h = b0Var;
        this.f2446k = true;
        e();
        invalidate();
    }
}
