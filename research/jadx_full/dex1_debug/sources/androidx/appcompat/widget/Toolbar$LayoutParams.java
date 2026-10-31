package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar$LayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Toolbar$LayoutParams extends ActionBar$LayoutParams {
    static final int CUSTOM = 0;
    static final int EXPANDED = 2;
    static final int SYSTEM = 1;
    int mViewType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Toolbar$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.mViewType = 0;
        this.gravity = 8388627;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyMarginsFromCompat(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        ((ViewGroup$MarginLayoutParams) this).leftMargin = viewGroup$MarginLayoutParams.leftMargin;
        ((ViewGroup$MarginLayoutParams) this).topMargin = viewGroup$MarginLayoutParams.topMargin;
        ((ViewGroup$MarginLayoutParams) this).rightMargin = viewGroup$MarginLayoutParams.rightMargin;
        ((ViewGroup$MarginLayoutParams) this).bottomMargin = viewGroup$MarginLayoutParams.bottomMargin;
    }

    public Toolbar$LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mViewType = 0;
    }

    public Toolbar$LayoutParams(int i9, int i10, int i11) {
        super(i9, i10);
        this.mViewType = 0;
        this.gravity = i11;
    }

    public Toolbar$LayoutParams(int i9) {
        this(-2, -1, i9);
    }

    public Toolbar$LayoutParams(Toolbar$LayoutParams toolbar$LayoutParams) {
        super((ActionBar$LayoutParams) toolbar$LayoutParams);
        this.mViewType = 0;
        this.mViewType = toolbar$LayoutParams.mViewType;
    }

    public Toolbar$LayoutParams(ActionBar$LayoutParams actionBar$LayoutParams) {
        super(actionBar$LayoutParams);
        this.mViewType = 0;
    }

    public Toolbar$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mViewType = 0;
        copyMarginsFromCompat(viewGroup$MarginLayoutParams);
    }

    public Toolbar$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mViewType = 0;
    }
}
