package z1;

import android.graphics.Canvas;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends ShapeDrawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6155b;
    public final /* synthetic */ FloatingActionButton c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(FloatingActionButton floatingActionButton, OvalShape ovalShape) {
        int iAbs;
        super(ovalShape);
        this.c = floatingActionButton;
        int iAbs2 = 0;
        if (floatingActionButton.f()) {
            iAbs = Math.abs(floatingActionButton.f1020f) + floatingActionButton.e;
        } else {
            iAbs = 0;
        }
        this.f6154a = iAbs;
        if (floatingActionButton.f()) {
            iAbs2 = Math.abs(floatingActionButton.f1021g) + floatingActionButton.e;
        }
        this.f6155b = iAbs2;
        if (floatingActionButton.f1033u) {
            int i9 = floatingActionButton.f1034v;
            this.f6154a = iAbs + i9;
            this.f6155b = iAbs2 + i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        PorterDuffXfermode porterDuffXfermode = FloatingActionButton.W;
        FloatingActionButton floatingActionButton = this.c;
        int iC = floatingActionButton.c();
        int i9 = this.f6154a;
        int iB = floatingActionButton.b();
        int i10 = this.f6155b;
        setBounds(i9, i10, iC - i9, iB - i10);
        super.draw(canvas);
    }
}
