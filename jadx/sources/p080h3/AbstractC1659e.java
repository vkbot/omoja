package p080h3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.example.navistart.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import org.xmlpull.v1.XmlPullParserException;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p132m0.C2284e1;
import p141n.C2455p;
import p184r5.C3105c;
import p192s3.AbstractC3198l;
import p258z3.C3711a;
import p258z3.C3712a0;
import p258z3.C3714b0;
import p258z3.C3716c0;
import p258z3.C3718d0;
import p258z3.C3729o;
import p258z3.InterfaceC3717d;

/* JADX INFO: renamed from: h3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1659e extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public final ArrayList f4221b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f4222c;

    /* JADX INFO: renamed from: d */
    public final C3105c f4223d;

    /* JADX INFO: renamed from: e */
    public final C1658d f4224e;

    /* JADX INFO: renamed from: f */
    public Integer[] f4225f;

    /* JADX INFO: renamed from: g */
    public C3712a0 f4226g;

    /* JADX INFO: renamed from: h */
    public C3714b0 f4227h;

    /* JADX INFO: renamed from: i */
    public int f4228i;

    /* JADX INFO: renamed from: j */
    public C3718d0 f4229j;

    /* JADX INFO: renamed from: k */
    public boolean f4230k;

    public AbstractC1659e(Context context, AttributeSet attributeSet) {
        C3712a0 c3712a0M5921b;
        int next;
        C3718d0 c3718d0;
        int next2;
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        this.f4221b = new ArrayList();
        this.f4222c = new ArrayList();
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this;
        this.f4223d = new C3105c(13, materialButtonToggleGroup);
        this.f4224e = new C1658d(0, materialButtonToggleGroup);
        this.f4230k = true;
        Context context2 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f36o, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup, new int[0]);
        if (typedArrayM5136d.hasValue(2)) {
            int resourceId = typedArrayM5136d.getResourceId(2, 0);
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    XmlResourceParser xml = context2.getResources().getXml(resourceId);
                    try {
                        c3718d0 = new C3718d0();
                        c3718d0.f11017c = new int[10][];
                        c3718d0.f11018d = new C2455p[10];
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
                            c3718d0.m5929a(context2, xml, attributeSetAsAttributeSet, context2.getTheme());
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
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                    c3718d0 = null;
                }
            } else {
                c3718d0 = null;
            }
            this.f4229j = c3718d0;
        }
        if (typedArrayM5136d.hasValue(4)) {
            C3714b0 c3714b0M5926b = C3714b0.m5926b(context2, typedArrayM5136d, 4);
            this.f4227h = c3714b0M5926b;
            if (c3714b0M5926b == null) {
                C2284e1 c2284e1 = new C2284e1(C3729o.m5957a(context2, typedArrayM5136d.getResourceId(4, 0), typedArrayM5136d.getResourceId(5, 0)).m5956a());
                this.f4227h = c2284e1.f6041b != 0 ? new C3714b0(c2284e1) : null;
            }
        }
        if (typedArrayM5136d.hasValue(3)) {
            C3711a c3711a = new C3711a(0.0f);
            int resourceId2 = typedArrayM5136d.getResourceId(3, 0);
            if (resourceId2 != 0 && context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    XmlResourceParser xml2 = context2.getResources().getXml(resourceId2);
                    try {
                        c3712a0M5921b = new C3712a0();
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
                            c3712a0M5921b.m5924d(context2, xml2, attributeSetAsAttributeSet2, context2.getTheme());
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
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    c3712a0M5921b = C3712a0.m5921b(c3711a);
                }
            } else {
                c3712a0M5921b = C3712a0.m5921b(C3729o.m5960d(typedArrayM5136d, 3, c3711a));
            }
            this.f4226g = c3712a0M5921b;
        }
        this.f4228i = typedArrayM5136d.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayM5136d.getBoolean(0, true));
        typedArrayM5136d.recycle();
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (m2761c(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m2761c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2759a() {
        int iMin;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i10);
            MaterialButton materialButton2 = (MaterialButton) getChildAt(i10 - 1);
            if (this.f4228i <= 0) {
                iMin = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                materialButton.setShouldDrawSurfaceColorStroke(true);
                materialButton2.setShouldDrawSurfaceColorStroke(true);
            } else {
                materialButton.setShouldDrawSurfaceColorStroke(false);
                materialButton2.setShouldDrawSurfaceColorStroke(false);
                iMin = 0;
            }
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(this.f4228i - iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = this.f4228i - iMin;
                layoutParams2.setMarginStart(0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        m2762d();
        this.f4230k = true;
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.f4223d);
        this.f4221b.add(materialButton.getShapeAppearanceModel());
        this.f4222c.add(materialButton.getStateListShapeAppearanceModel());
        materialButton.setEnabled(isEnabled());
    }

    /* JADX INFO: renamed from: b */
    public final void m2760b() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        float fMax;
        if (this.f4229j == null || getChildCount() == 0) {
            return;
        }
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        int iMin = Integer.MAX_VALUE;
        for (int i10 = firstVisibleChildIndex; i10 <= lastVisibleChildIndex; i10++) {
            if (m2761c(i10)) {
                int iMin2 = 0;
                if (m2761c(i10) && this.f4229j != null) {
                    MaterialButton materialButton3 = (MaterialButton) getChildAt(i10);
                    C3718d0 c3718d0 = this.f4229j;
                    int width = materialButton3.getWidth();
                    int i11 = -width;
                    for (int i12 = 0; i12 < c3718d0.f11015a; i12++) {
                        C3716c0 c3716c0 = (C3716c0) c3718d0.f11018d[i12].f6648c;
                        int i13 = c3716c0.f11013a;
                        float f8 = c3716c0.f11014b;
                        if (i13 == 2) {
                            fMax = Math.max(i11, f8);
                        } else {
                            if (i13 == 1) {
                                fMax = Math.max(i11, width * f8);
                            }
                        }
                        i11 = (int) fMax;
                    }
                    int iMax = Math.max(0, i11);
                    int i14 = i10 - 1;
                    while (true) {
                        materialButton = null;
                        if (i14 < 0) {
                            materialButton2 = null;
                            break;
                        } else {
                            if (m2761c(i14)) {
                                materialButton2 = (MaterialButton) getChildAt(i14);
                                break;
                            }
                            i14--;
                        }
                    }
                    int allowedWidthDecrease = materialButton2 == null ? 0 : materialButton2.getAllowedWidthDecrease();
                    int childCount = getChildCount();
                    for (int i15 = i10 + 1; i15 < childCount; i15++) {
                        if (m2761c(i15)) {
                            materialButton = (MaterialButton) getChildAt(i15);
                            break;
                        }
                    }
                    iMin2 = Math.min(iMax, allowedWidthDecrease + (materialButton != null ? materialButton.getAllowedWidthDecrease() : 0));
                }
                if (i10 != firstVisibleChildIndex && i10 != lastVisibleChildIndex) {
                    iMin2 /= 2;
                }
                iMin = Math.min(iMin, iMin2);
            }
        }
        int i16 = firstVisibleChildIndex;
        while (i16 <= lastVisibleChildIndex) {
            if (m2761c(i16)) {
                ((MaterialButton) getChildAt(i16)).setSizeChange(this.f4229j);
                ((MaterialButton) getChildAt(i16)).setWidthChangeMax((i16 == firstVisibleChildIndex || i16 == lastVisibleChildIndex) ? iMin : iMin * 2);
            }
            i16++;
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m2761c(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    /* JADX INFO: renamed from: d */
    public final void m2762d() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i10);
            LinearLayout.LayoutParams layoutParams = materialButton.f2205t;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.f2205t = null;
                materialButton.f2202q = -1.0f;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f4224e);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put((MaterialButton) getChildAt(i10), Integer.valueOf(i10));
        }
        this.f4225f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Serializable, z3.o[]] */
    /* JADX INFO: renamed from: e */
    public final void m2763e() {
        C2284e1 c2284e1;
        int i10;
        if (!(this.f4226g == null && this.f4227h == null) && this.f4230k) {
            this.f4230k = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i11 = 0;
            while (i11 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i11);
                if (materialButton.getVisibility() != 8) {
                    boolean z9 = i11 == firstVisibleChildIndex;
                    boolean z10 = i11 == lastVisibleChildIndex;
                    C3714b0 c3714b0 = this.f4227h;
                    if (c3714b0 == null || (!z9 && !z10)) {
                        c3714b0 = (C3714b0) this.f4222c.get(i11);
                    }
                    if (c3714b0 == null) {
                        c2284e1 = new C2284e1((C3729o) this.f4221b.get(i11));
                    } else {
                        C2284e1 c2284e2 = new C2284e1();
                        int i12 = c3714b0.f11004a;
                        c2284e2.f6041b = i12;
                        c2284e2.f6042c = c3714b0.f11005b;
                        int[][] iArr = c3714b0.f11006c;
                        int[][] iArr2 = new int[iArr.length][];
                        c2284e2.f6043d = iArr2;
                        C3729o[] c3729oArr = c3714b0.f11007d;
                        c2284e2.f6044e = new C3729o[c3729oArr.length];
                        System.arraycopy(iArr, 0, iArr2, 0, i12);
                        System.arraycopy(c3729oArr, 0, (C3729o[]) c2284e2.f6044e, 0, c2284e2.f6041b);
                        c2284e2.f6045f = c3714b0.f11008e;
                        c2284e2.f6046g = c3714b0.f11009f;
                        c2284e2.f6047h = c3714b0.f11010g;
                        c2284e2.f6048i = c3714b0.f11011h;
                        c2284e1 = c2284e2;
                    }
                    boolean z11 = getOrientation() == 0;
                    boolean z12 = getLayoutDirection() == 1;
                    if (z11) {
                        i10 = z9 ? 5 : 0;
                        if (z10) {
                            i10 |= 10;
                        }
                        if (z12) {
                            i10 = ((i10 & 10) >> 1) | ((i10 & 5) << 1);
                        }
                    } else {
                        i10 = z9 ? 3 : 0;
                        if (z10) {
                            i10 |= 12;
                        }
                    }
                    int i13 = ~i10;
                    C3712a0 c3712a0 = this.f4226g;
                    if ((i13 | 1) == i13) {
                        c2284e1.f6045f = c3712a0;
                    }
                    if ((i13 | 2) == i13) {
                        c2284e1.f6046g = c3712a0;
                    }
                    if ((i13 | 4) == i13) {
                        c2284e1.f6047h = c3712a0;
                    }
                    if ((i13 | 8) == i13) {
                        c2284e1.f6048i = c3712a0;
                    }
                    C3714b0 c3714b1 = c2284e1.f6041b == 0 ? null : new C3714b0(c2284e1);
                    if (c3714b1.m5928d()) {
                        materialButton.setStateListShapeAppearanceModel(c3714b1);
                    } else {
                        materialButton.setShapeAppearanceModel(c3714b1.m5927c());
                    }
                }
                i11++;
            }
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public C3718d0 getButtonSizeChange() {
        return this.f4229j;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f4225f;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w("MButtonGroup", "Child order wasn't updated");
        return i11;
    }

    @NonNull
    public InterfaceC3717d getInnerCornerSize() {
        return this.f4226g.f10999b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public C3712a0 getInnerCornerSizeStateList() {
        return this.f4226g;
    }

    @Nullable
    public C3729o getShapeAppearance() {
        C3714b0 c3714b0 = this.f4227h;
        if (c3714b0 == null) {
            return null;
        }
        return c3714b0.m5927c();
    }

    @Px
    public int getSpacing() {
        return this.f4228i;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public C3714b0 getStateListShapeAppearance() {
        return this.f4227h;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        if (z9) {
            m2762d();
            m2760b();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        m2763e();
        m2759a();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f4221b.remove(iIndexOfChild);
            this.f4222c.remove(iIndexOfChild);
        }
        this.f4230k = true;
        m2763e();
        m2762d();
        m2759a();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setButtonSizeChange(@NonNull C3718d0 c3718d0) {
        if (this.f4229j != c3718d0) {
            this.f4229j = c3718d0;
            m2760b();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z9) {
        super.setEnabled(z9);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            ((MaterialButton) getChildAt(i10)).setEnabled(z9);
        }
    }

    public void setInnerCornerSize(@NonNull InterfaceC3717d interfaceC3717d) {
        this.f4226g = C3712a0.m5921b(interfaceC3717d);
        this.f4230k = true;
        m2763e();
        invalidate();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInnerCornerSizeStateList(@NonNull C3712a0 c3712a0) {
        this.f4226g = c3712a0;
        this.f4230k = true;
        m2763e();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (getOrientation() != i10) {
            this.f4230k = true;
        }
        super.setOrientation(i10);
    }

    public void setShapeAppearance(@Nullable C3729o c3729o) {
        C2284e1 c2284e1 = new C2284e1(c3729o);
        this.f4227h = c2284e1.f6041b == 0 ? null : new C3714b0(c2284e1);
        this.f4230k = true;
        m2763e();
        invalidate();
    }

    public void setSpacing(@Px int i10) {
        this.f4228i = i10;
        invalidate();
        requestLayout();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStateListShapeAppearance(@Nullable C3714b0 c3714b0) {
        this.f4227h = c3714b0;
        this.f4230k = true;
        m2763e();
        invalidate();
    }
}
