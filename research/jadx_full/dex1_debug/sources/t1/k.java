package t1;

import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.WindowManager;
import com.example.navistart.LounchB;
import e0.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowManager f5371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f5372b;
    public final r0.a c;
    public final LounchB d;
    public final int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(LounchB lounchB, int i9, String str) {
        this.d = lounchB;
        this.e = i9;
        if (a()) {
            this.c = new r0.a(lounchB);
            this.f5372b = new j(lounchB);
            u1 u1Var = new u1(lounchB, str);
            h0.b.a();
            WindowManager windowManagerG = h0.b.g().b().g(this.f5372b, i9, u1Var.c);
            this.f5371a = windowManagerG;
            u1Var.a(this.f5372b, windowManagerG, new f5.j(19, this));
            u1Var.d();
            this.f5372b.e(new a4.c(this, 0, 12), new a4.c(this, 1, 12), new a4.c(this, 2, 12), new a4.c(this, 3, 12), new a4.c(this, 4, 12), new a4.c(this, 5, 12), new a4.c(this, 6, 12), new a4.c(this, 7, 12));
            Drawable[] drawableArrA = r0.e.a(lounchB);
            j jVar = this.f5372b;
            if (jVar != null) {
                jVar.setImageRun(drawableArrA);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        Display[] displays = ((DisplayManager) this.d.getSystemService(e0.m.h(new byte[]{-125, 47, 65, -24, 84, -65, 28}, new byte[]{-25, 70, 50, -104, 56, -34, 101, -83}))).getDisplays();
        int i9 = this.e;
        return i9 > -1 && i9 < displays.length;
    }
}
