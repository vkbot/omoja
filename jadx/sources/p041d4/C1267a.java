package p041d4;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import p018b3.AbstractC0884a;
import p030c5.C0990e;

/* JADX INFO: renamed from: d4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1267a extends C0990e {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f3039c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1267a(int i10) {
        super(4);
        this.f3039c = i10;
    }

    @Override // p030c5.C0990e
    /* JADX INFO: renamed from: u */
    public final void mo1153u(TabLayout tabLayout, View view, View view2, float f8, Drawable drawable) {
        float fSin;
        float fCos;
        switch (this.f3039c) {
            case 0:
                RectF rectFM1134p = C0990e.m1134p(tabLayout, view);
                RectF rectFM1134p2 = C0990e.m1134p(tabLayout, view2);
                if (rectFM1134p.left < rectFM1134p2.left) {
                    double d = (((double) f8) * 3.141592653589793d) / 2.0d;
                    fSin = (float) (1.0d - Math.cos(d));
                    fCos = (float) Math.sin(d);
                } else {
                    double d10 = (((double) f8) * 3.141592653589793d) / 2.0d;
                    fSin = (float) Math.sin(d10);
                    fCos = (float) (1.0d - Math.cos(d10));
                }
                drawable.setBounds(AbstractC0884a.m1017c(fSin, (int) rectFM1134p.left, (int) rectFM1134p2.left), drawable.getBounds().top, AbstractC0884a.m1017c(fCos, (int) rectFM1134p.right, (int) rectFM1134p2.right), drawable.getBounds().bottom);
                break;
            default:
                if (f8 >= 0.5f) {
                    view = view2;
                }
                RectF rectFM1134p3 = C0990e.m1134p(tabLayout, view);
                float fM1016b = f8 < 0.5f ? AbstractC0884a.m1016b(1.0f, 0.0f, 0.0f, 0.5f, f8) : AbstractC0884a.m1016b(0.0f, 1.0f, 0.5f, 1.0f, f8);
                drawable.setBounds((int) rectFM1134p3.left, drawable.getBounds().top, (int) rectFM1134p3.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (fM1016b * 255.0f));
                break;
        }
    }
}
