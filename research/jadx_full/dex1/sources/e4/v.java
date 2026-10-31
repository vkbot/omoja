package e4;

import android.R$attr;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends ArrayAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ColorStateList f2116b;
    public ColorStateList c;
    public final /* synthetic */ w d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(w wVar, Context context, int i9, String[] strArr) {
        super(context, i9, strArr);
        this.d = wVar;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        ColorStateList colorStateList;
        w wVar = this.d;
        ColorStateList colorStateList2 = wVar.f2121i;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R$attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.c = colorStateList;
        if (wVar.f2120h != 0 && wVar.f2121i != null) {
            int[] iArr2 = {R$attr.state_hovered, -16842919};
            int[] iArr3 = {R$attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{ColorUtils.compositeColors(wVar.f2121i.getColorForState(iArr3, 0), wVar.f2120h), ColorUtils.compositeColors(wVar.f2121i.getColorForState(iArr2, 0), wVar.f2120h), wVar.f2120h});
        }
        this.f2116b = colorStateList3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i9, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            w wVar = this.d;
            Drawable rippleDrawable = null;
            if (wVar.getText().toString().contentEquals(textView.getText()) && wVar.f2120h != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(wVar.f2120h);
                if (this.c != null) {
                    colorDrawable.setTintList(this.f2116b);
                    rippleDrawable = new RippleDrawable(this.c, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            textView.setBackground(rippleDrawable);
        }
        return view2;
    }
}
