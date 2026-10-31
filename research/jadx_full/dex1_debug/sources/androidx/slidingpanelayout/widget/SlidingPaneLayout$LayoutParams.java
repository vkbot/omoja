package androidx.slidingpanelayout.widget;

import android.R$attr;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout$LayoutParams extends ViewGroup$MarginLayoutParams {
    private static final int[] ATTRS = {R$attr.layout_weight};
    Paint dimPaint;
    boolean dimWhenOffset;
    boolean slideable;
    public float weight;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout$LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.weight = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        this.weight = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public SlidingPaneLayout$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.weight = 0.0f;
    }

    public SlidingPaneLayout$LayoutParams(@NonNull ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.weight = 0.0f;
    }

    public SlidingPaneLayout$LayoutParams(@NonNull ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.weight = 0.0f;
    }

    public SlidingPaneLayout$LayoutParams(@NonNull SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams) {
        super((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams);
        this.weight = 0.0f;
        this.weight = slidingPaneLayout$LayoutParams.weight;
    }

    public SlidingPaneLayout$LayoutParams() {
        super(-1, -1);
        this.weight = 0.0f;
    }
}
