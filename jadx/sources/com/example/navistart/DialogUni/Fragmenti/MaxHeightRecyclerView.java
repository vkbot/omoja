package com.example.navistart.DialogUni.Fragmenti;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaxHeightRecyclerView extends RecyclerView {

    /* JADX INFO: renamed from: b */
    public int f1265b;

    public MaxHeightRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1265b = Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.f1265b, Integer.MIN_VALUE));
    }

    public void setMaxHeight(int i10) {
        this.f1265b = i10;
    }
}
