package p256z1;

import android.graphics.Canvas;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: renamed from: z1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3695c extends ShapeDrawable {

    /* JADX INFO: renamed from: a */
    public final int f10934a;

    /* JADX INFO: renamed from: b */
    public final int f10935b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FloatingActionButton f10936c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3695c(FloatingActionButton floatingActionButton, OvalShape ovalShape) {
        int iAbs;
        super(ovalShape);
        this.f10936c = floatingActionButton;
        int iAbs2 = 0;
        if (floatingActionButton.m1686f()) {
            iAbs = Math.abs(floatingActionButton.f1917f) + floatingActionButton.f1916e;
        } else {
            iAbs = 0;
        }
        this.f10934a = iAbs;
        if (floatingActionButton.m1686f()) {
            iAbs2 = Math.abs(floatingActionButton.f1918g) + floatingActionButton.f1916e;
        }
        this.f10935b = iAbs2;
        if (floatingActionButton.f1932u) {
            int i10 = floatingActionButton.f1933v;
            this.f10934a = iAbs + i10;
            this.f10935b = iAbs2 + i10;
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        PorterDuffXfermode porterDuffXfermode = FloatingActionButton.f1890W;
        FloatingActionButton floatingActionButton = this.f10936c;
        int iM1683c = floatingActionButton.m1683c();
        int i10 = this.f10934a;
        int iM1682b = floatingActionButton.m1682b();
        int i11 = this.f10935b;
        setBounds(i10, i11, iM1683c - i10, iM1682b - i11);
        super.draw(canvas);
    }
}
