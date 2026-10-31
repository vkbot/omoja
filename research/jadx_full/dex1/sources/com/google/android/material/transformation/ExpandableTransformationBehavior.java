package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import e3.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimatorSet f1459b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExpandableTransformationBehavior() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    public void a(View view, View view2, boolean z8, boolean z9) {
        AnimatorSet animatorSet = this.f1459b;
        boolean z10 = animatorSet != null;
        if (z10) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetB = b(view, view2, z8, z10);
        this.f1459b = animatorSetB;
        animatorSetB.addListener(new c(3, this));
        this.f1459b.start();
        if (z9) {
            return;
        }
        this.f1459b.end();
    }

    public abstract AnimatorSet b(View view, View view2, boolean z8, boolean z9);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
