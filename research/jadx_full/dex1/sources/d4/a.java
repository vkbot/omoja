package d4;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends c5.e {
    public final /* synthetic */ int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i9) {
        super(4);
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c5.e
    public final void u(TabLayout tabLayout, View view, View view2, float f8, Drawable drawable) {
        float fSin;
        float fCos;
        switch (this.c) {
            case 0:
                RectF rectFP = c5.e.p(tabLayout, view);
                RectF rectFP2 = c5.e.p(tabLayout, view2);
                if (rectFP.left < rectFP2.left) {
                    double d = (((double) f8) * 3.141592653589793d) / 2.0d;
                    fSin = (float) (1.0d - Math.cos(d));
                    fCos = (float) Math.sin(d);
                } else {
                    double d9 = (((double) f8) * 3.141592653589793d) / 2.0d;
                    fSin = (float) Math.sin(d9);
                    fCos = (float) (1.0d - Math.cos(d9));
                }
                drawable.setBounds(b3.a.c(fSin, (int) rectFP.left, (int) rectFP2.left), drawable.getBounds().top, b3.a.c(fCos, (int) rectFP.right, (int) rectFP2.right), drawable.getBounds().bottom);
                break;
            default:
                if (f8 >= 0.5f) {
                    view = view2;
                }
                RectF rectFP3 = c5.e.p(tabLayout, view);
                float fB = f8 < 0.5f ? b3.a.b(1.0f, 0.0f, 0.0f, 0.5f, f8) : b3.a.b(0.0f, 1.0f, 0.5f, 1.0f, f8);
                drawable.setBounds((int) rectFP3.left, drawable.getBounds().top, (int) rectFP3.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (fB * 255.0f));
                break;
        }
    }
}
