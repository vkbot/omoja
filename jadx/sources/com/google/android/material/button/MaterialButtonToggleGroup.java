package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p080h3.AbstractC1659e;
import p080h3.C1661g;
import p080h3.InterfaceC1662h;
import p192s3.AbstractC3198l;
import p258z3.C3711a;
import p258z3.C3712a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButtonToggleGroup extends AbstractC1659e {

    /* JADX INFO: renamed from: r */
    public static final /* synthetic */ int f2212r = 0;

    /* JADX INFO: renamed from: l */
    public final LinkedHashSet f2213l;

    /* JADX INFO: renamed from: m */
    public boolean f2214m;

    /* JADX INFO: renamed from: n */
    public boolean f2215n;

    /* JADX INFO: renamed from: o */
    public boolean f2216o;

    /* JADX INFO: renamed from: p */
    public final int f2217p;

    /* JADX INFO: renamed from: q */
    public HashSet f2218q;

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet);
        this.f2213l = new LinkedHashSet();
        this.f2214m = false;
        this.f2218q = new HashSet();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(getContext(), attributeSet, AbstractC0007a.f37p, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayM5136d.getBoolean(7, false));
        this.f2217p = typedArrayM5136d.getResourceId(2, -1);
        this.f2216o = typedArrayM5136d.getBoolean(4, false);
        if (this.f4226g == null) {
            this.f4226g = C3712a0.m5921b(new C3711a(0.0f));
        }
        setEnabled(typedArrayM5136d.getBoolean(0, true));
        typedArrayM5136d.recycle();
        setImportantForAccessibility(1);
    }

    @NonNull
    private String getChildrenA11yClassName() {
        return (this.f2215n ? RadioButton.class : ToggleButton.class).getName();
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && getChildAt(i11).getVisibility() != 8) {
                i10++;
            }
        }
        return i10;
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // p080h3.AbstractC1659e, android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setupButtonChild(materialButton);
        m1782f(materialButton.getId(), materialButton.f2198m);
        ViewCompat.setAccessibilityDelegate(materialButton, new C1661g(this));
    }

    /* JADX INFO: renamed from: f */
    public final void m1782f(int i10, boolean z9) {
        if (i10 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i10);
            return;
        }
        HashSet hashSet = new HashSet(this.f2218q);
        if (z9 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f2215n && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z9 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f2216o || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        m1783g(hashSet);
    }

    /* JADX INFO: renamed from: g */
    public final void m1783g(Set set) {
        HashSet hashSet = this.f2218q;
        this.f2218q = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = ((MaterialButton) getChildAt(i10)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.f2214m = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f2214m = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean zContains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.f2213l.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1662h) it.next()).mo1877a(id, zContains2);
                }
            }
        }
        invalidate();
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.f2215n || this.f2218q.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f2218q.iterator().next()).intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = ((MaterialButton) getChildAt(i10)).getId();
            if (this.f2218q.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f2217p;
        if (i10 != -1) {
            m1783g(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, this.f2215n ? 1 : 2));
    }

    public void setSelectionRequired(boolean z9) {
        this.f2216o = z9;
    }

    public void setSingleSelection(boolean z9) {
        if (this.f2215n != z9) {
            this.f2215n = z9;
            m1783g(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            ((MaterialButton) getChildAt(i10)).setA11yClassName(childrenA11yClassName);
        }
    }

    public void setSingleSelection(@BoolRes int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
