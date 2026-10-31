package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug$ExportedProperty;
import android.view.ViewGroup$LayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuView$LayoutParams extends LinearLayoutCompat$LayoutParams {

    @ViewDebug$ExportedProperty
    public int cellsUsed;

    @ViewDebug$ExportedProperty
    public boolean expandable;
    boolean expanded;

    @ViewDebug$ExportedProperty
    public int extraPixels;

    @ViewDebug$ExportedProperty
    public boolean isOverflowButton;

    @ViewDebug$ExportedProperty
    public boolean preventEdgeOffset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMenuView$LayoutParams(ActionMenuView$LayoutParams actionMenuView$LayoutParams) {
        super((ViewGroup$LayoutParams) actionMenuView$LayoutParams);
        this.isOverflowButton = actionMenuView$LayoutParams.isOverflowButton;
    }

    public ActionMenuView$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
    }

    public ActionMenuView$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ActionMenuView$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.isOverflowButton = false;
    }

    public ActionMenuView$LayoutParams(int i9, int i10, boolean z8) {
        super(i9, i10);
        this.isOverflowButton = z8;
    }
}
