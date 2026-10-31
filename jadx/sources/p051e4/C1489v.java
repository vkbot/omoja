package p051e4;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: renamed from: e4.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1489v extends ArrayAdapter {

    /* JADX INFO: renamed from: b */
    public ColorStateList f3662b;

    /* JADX INFO: renamed from: c */
    public ColorStateList f3663c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1490w f3664d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1489v(C1490w c1490w, Context context, int i10, String[] strArr) {
        super(context, i10, strArr);
        this.f3664d = c1490w;
        m2569a();
    }

    /* JADX INFO: renamed from: a */
    public final void m2569a() {
        ColorStateList colorStateList;
        C1490w c1490w = this.f3664d;
        ColorStateList colorStateList2 = c1490w.f3672i;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f3663c = colorStateList;
        if (c1490w.f3671h != 0 && c1490w.f3672i != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{ColorUtils.compositeColors(c1490w.f3672i.getColorForState(iArr3, 0), c1490w.f3671h), ColorUtils.compositeColors(c1490w.f3672i.getColorForState(iArr2, 0), c1490w.f3671h), c1490w.f3671h});
        }
        this.f3662b = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i10, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            C1490w c1490w = this.f3664d;
            Drawable rippleDrawable = null;
            if (c1490w.getText().toString().contentEquals(textView.getText()) && c1490w.f3671h != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(c1490w.f3671h);
                if (this.f3663c != null) {
                    colorDrawable.setTintList(this.f3662b);
                    rippleDrawable = new RippleDrawable(this.f3663c, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            textView.setBackground(rippleDrawable);
        }
        return view2;
    }
}
