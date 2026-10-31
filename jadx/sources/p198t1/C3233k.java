package p198t1;

import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.WindowManager;
import com.example.navistart.LounchB;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;
import p047e0.C1428u1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p180r0.C3088a;
import p180r0.C3092e;

/* JADX INFO: renamed from: t1.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3233k {

    /* JADX INFO: renamed from: a */
    public final WindowManager f9487a;

    /* JADX INFO: renamed from: b */
    public final C3232j f9488b;

    /* JADX INFO: renamed from: c */
    public final C3088a f9489c;

    /* JADX INFO: renamed from: d */
    public final LounchB f9490d;

    /* JADX INFO: renamed from: e */
    public final int f9491e;

    public C3233k(LounchB lounchB, int i10, String str) {
        this.f9490d = lounchB;
        this.f9491e = i10;
        if (m5175a()) {
            this.f9489c = new C3088a(lounchB);
            this.f9488b = new C3232j(lounchB);
            C1428u1 c1428u1 = new C1428u1(lounchB, str);
            C1652b.m2734a();
            WindowManager windowManagerMo1145g = C1652b.m2738g().mo3013b().mo1145g(this.f9488b, i10, c1428u1.f3431c);
            this.f9487a = windowManagerMo1145g;
            c1428u1.m2476a(this.f9488b, windowManagerMo1145g, new RunnableC1556j(19, this));
            c1428u1.m2479d();
            this.f9488b.m5172e(new RunnableC0010c(this, 0, 12), new RunnableC0010c(this, 1, 12), new RunnableC0010c(this, 2, 12), new RunnableC0010c(this, 3, 12), new RunnableC0010c(this, 4, 12), new RunnableC0010c(this, 5, 12), new RunnableC0010c(this, 6, 12), new RunnableC0010c(this, 7, 12));
            Drawable[] drawableArrM4924a = C3092e.m4924a(lounchB);
            C3232j c3232j = this.f9488b;
            if (c3232j != null) {
                c3232j.setImageRun(drawableArrM4924a);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m5175a() {
        Display[] displays = ((DisplayManager) this.f9490d.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 47, 65, -24, 84, -65, 28}, new byte[]{-25, 70, 50, -104, 56, -34, 101, -83}))).getDisplays();
        int i10 = this.f9491e;
        return i10 > -1 && i10 < displays.length;
    }
}
