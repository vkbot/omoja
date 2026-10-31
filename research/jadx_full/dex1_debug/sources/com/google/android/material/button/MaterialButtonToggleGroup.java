package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils$TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import g4.a;
import h3.e;
import h3.g;
import h3.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import s3.l;
import z3.a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialButtonToggleGroup extends e {
    public static final /* synthetic */ int r = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinkedHashSet f1204l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1205m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1206n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1207o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1208p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HashSet f1209q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130903929, 2132018360), attributeSet);
        this.f1204l = new LinkedHashSet();
        this.f1205m = false;
        this.f1209q = new HashSet();
        TypedArray typedArrayD = l.d(getContext(), attributeSet, a3.a.f19p, 2130903929, 2132018360, new int[0]);
        setSingleSelection(typedArrayD.getBoolean(7, false));
        this.f1208p = typedArrayD.getResourceId(2, -1);
        this.f1207o = typedArrayD.getBoolean(4, false);
        if (this.f2442g == null) {
            this.f2442g = a0.b(new z3.a(0.0f));
        }
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
        setImportantForAccessibility(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private String getChildrenA11yClassName() {
        return (this.f1206n ? RadioButton.class : ToggleButton.class).getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getVisibleButtonCount() {
        int i9 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if ((getChildAt(i10) instanceof MaterialButton) && getChildAt(i10).getVisibility() != 8) {
                i9++;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils$TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h3.e, android.view.ViewGroup
    public final void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i9, viewGroup$LayoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setupButtonChild(materialButton);
        f(materialButton.getId(), materialButton.f1193m);
        ViewCompat.setAccessibilityDelegate(materialButton, new g(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int i9, boolean z8) {
        if (i9 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i9);
            return;
        }
        HashSet hashSet = new HashSet(this.f1209q);
        if (z8 && !hashSet.contains(Integer.valueOf(i9))) {
            if (this.f1206n && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i9));
        } else {
            if (z8 || !hashSet.contains(Integer.valueOf(i9))) {
                return;
            }
            if (!this.f1207o || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i9));
            }
        }
        g(hashSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(Set set) {
        HashSet hashSet = this.f1209q;
        this.f1209q = new HashSet(set);
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            int id = ((MaterialButton) getChildAt(i9)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.f1205m = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f1205m = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean zContains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.f1204l.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).a(id, zContains2);
                }
            }
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IdRes
    public int getCheckedButtonId() {
        if (!this.f1206n || this.f1209q.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f1209q.iterator().next()).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            int id = ((MaterialButton) getChildAt(i9)).getId();
            if (this.f1209q.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i9 = this.f1208p;
        if (i9 != -1) {
            g(Collections.singleton(Integer.valueOf(i9)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, this.f1206n ? 1 : 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSelectionRequired(boolean z8) {
        this.f1207o = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSingleSelection(boolean z8) {
        if (this.f1206n != z8) {
            this.f1206n = z8;
            g(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            ((MaterialButton) getChildAt(i9)).setA11yClassName(childrenA11yClassName);
        }
    }

    public void setSingleSelection(@BoolRes int i9) {
        setSingleSelection(getResources().getBoolean(i9));
    }
}
