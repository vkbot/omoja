package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import p050e3.C1460c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* JADX INFO: renamed from: b */
    public AnimatorSet f2607b;

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* JADX INFO: renamed from: a */
    public void mo1878a(View view, View view2, boolean z9, boolean z10) {
        AnimatorSet animatorSet = this.f2607b;
        boolean z11 = animatorSet != null;
        if (z11) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetMo1879b = mo1879b(view, view2, z9, z11);
        this.f2607b = animatorSetMo1879b;
        animatorSetMo1879b.addListener(new C1460c(3, this));
        this.f2607b.start();
        if (z10) {
            return;
        }
        this.f2607b.end();
    }

    /* JADX INFO: renamed from: b */
    public abstract AnimatorSet mo1879b(View view, View view2, boolean z9, boolean z10);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
