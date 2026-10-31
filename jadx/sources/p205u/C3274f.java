package p205u;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.C1032e;
import com.bumptech.glide.C1039l;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import java.util.ArrayList;
import p015b0.C0859b;
import p019b4.C0900k;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p066g.C1595a;
import p066g.C1596b;
import p066g.C1598d;
import p077h.InterfaceC1650l;
import p097j.C1901m;
import p108k.InterfaceC2014b;
import p163p.C2947c;
import p244y.C3620e;

/* JADX INFO: renamed from: u.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3274f {

    /* JADX INFO: renamed from: a */
    public final C1598d f9589a;

    /* JADX INFO: renamed from: b */
    public final Handler f9590b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f9591c;

    /* JADX INFO: renamed from: d */
    public final ComponentCallbacks2C1078p f9592d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2014b f9593e;

    /* JADX INFO: renamed from: f */
    public boolean f9594f;

    /* JADX INFO: renamed from: g */
    public boolean f9595g;

    /* JADX INFO: renamed from: h */
    public C1039l f9596h;

    /* JADX INFO: renamed from: i */
    public C3272d f9597i;

    /* JADX INFO: renamed from: j */
    public boolean f9598j;

    /* JADX INFO: renamed from: k */
    public C3272d f9599k;

    /* JADX INFO: renamed from: l */
    public Bitmap f9600l;

    /* JADX INFO: renamed from: m */
    public C3272d f9601m;

    /* JADX INFO: renamed from: n */
    public int f9602n;

    /* JADX INFO: renamed from: o */
    public int f9603o;

    /* JADX INFO: renamed from: p */
    public int f9604p;

    public C3274f(ComponentCallbacks2C1029b componentCallbacks2C1029b, C1598d c1598d, int i10, int i11, Bitmap bitmap) {
        InterfaceC2014b interfaceC2014b = componentCallbacks2C1029b.f1067b;
        C1032e c1032e = componentCallbacks2C1029b.f1069d;
        Context baseContext = c1032e.getBaseContext();
        AbstractC0938g.m1072c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        ComponentCallbacks2C1078p componentCallbacks2C1078pM1342b = ComponentCallbacks2C1029b.m1249a(baseContext).f1071f.m1342b(baseContext);
        Context baseContext2 = c1032e.getBaseContext();
        AbstractC0938g.m1072c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        ComponentCallbacks2C1078p componentCallbacks2C1078pM1342b2 = ComponentCallbacks2C1029b.m1249a(baseContext2).f1071f.m1342b(baseContext2);
        componentCallbacks2C1078pM1342b2.getClass();
        C1039l c1039lM1310u = new C1039l(componentCallbacks2C1078pM1342b2.f1192b, componentCallbacks2C1078pM1342b2, Bitmap.class, componentCallbacks2C1078pM1342b2.f1193c).mo1307a(ComponentCallbacks2C1078p.f1191l).mo1307a(((C3620e) ((C3620e) ((C3620e) new C3620e().m5763d(C1901m.f4970b)).m5777s()).m5773o()).m5767i(i10, i11));
        this.f9591c = new ArrayList();
        this.f9592d = componentCallbacks2C1078pM1342b;
        Handler handler = new Handler(Looper.getMainLooper(), new C0900k(3, this));
        this.f9593e = interfaceC2014b;
        this.f9590b = handler;
        this.f9596h = c1039lM1310u;
        this.f9589a = c1598d;
        m5214c(C2947c.f8181b, bitmap);
    }

    /* JADX INFO: renamed from: a */
    public final void m5212a() {
        int i10;
        int i11;
        if (!this.f9594f || this.f9595g) {
            return;
        }
        C3272d c3272d = this.f9601m;
        if (c3272d != null) {
            this.f9601m = null;
            m5213b(c3272d);
            return;
        }
        this.f9595g = true;
        C1598d c1598d = this.f9589a;
        C1596b c1596b = c1598d.f4004l;
        int i12 = c1596b.f3980c;
        if (i12 <= 0 || (i11 = c1598d.f4003k) < 0) {
            i10 = 0;
        } else {
            i10 = (i11 < 0 || i11 >= i12) ? -1 : ((C1595a) c1596b.f3982e.get(i11)).f3975i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i10);
        int i13 = (c1598d.f4003k + 1) % c1598d.f4004l.f3980c;
        c1598d.f4003k = i13;
        this.f9599k = new C3272d(this.f9590b, i13, jUptimeMillis);
        C1039l c1039lM1315z = this.f9596h.mo1307a((C3620e) new C3620e().m5772n(new C0859b(Double.valueOf(Math.random())))).m1315z(c1598d);
        c1039lM1315z.m1314y(this.f9599k, c1039lM1315z);
    }

    /* JADX INFO: renamed from: b */
    public final void m5213b(C3272d c3272d) {
        this.f9595g = false;
        boolean z9 = this.f9598j;
        Handler handler = this.f9590b;
        if (z9) {
            handler.obtainMessage(2, c3272d).sendToTarget();
            return;
        }
        if (!this.f9594f) {
            this.f9601m = c3272d;
            return;
        }
        if (c3272d.f9588h != null) {
            Bitmap bitmap = this.f9600l;
            if (bitmap != null) {
                this.f9593e.mo1141c(bitmap);
                this.f9600l = null;
            }
            C3272d c3272d2 = this.f9597i;
            this.f9597i = c3272d;
            ArrayList arrayList = this.f9591c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C3270b c3270b = (C3270b) ((InterfaceC3273e) arrayList.get(size));
                Object callback = c3270b.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    c3270b.stop();
                    c3270b.invalidateSelf();
                } else {
                    c3270b.invalidateSelf();
                    C3274f c3274f = (C3274f) c3270b.f9570b.f8794b;
                    C3272d c3272d3 = c3274f.f9597i;
                    if ((c3272d3 != null ? c3272d3.f9586f : -1) == c3274f.f9589a.f4004l.f3980c - 1) {
                        c3270b.f9575g++;
                    }
                    int i10 = c3270b.f9576h;
                    if (i10 != -1 && c3270b.f9575g >= i10) {
                        ArrayList arrayList2 = c3270b.f9580l;
                        if (arrayList2 != null) {
                            int size2 = arrayList2.size();
                            for (int i11 = 0; i11 < size2; i11++) {
                                ((Animatable2Compat.AnimationCallback) c3270b.f9580l.get(i11)).onAnimationEnd(c3270b);
                            }
                        }
                        c3270b.stop();
                    }
                }
            }
            if (c3272d2 != null) {
                handler.obtainMessage(2, c3272d2).sendToTarget();
            }
        }
        m5212a();
    }

    /* JADX INFO: renamed from: c */
    public final void m5214c(InterfaceC1650l interfaceC1650l, Bitmap bitmap) {
        AbstractC0938g.m1072c(interfaceC1650l, "Argument must not be null");
        AbstractC0938g.m1072c(bitmap, "Argument must not be null");
        this.f9600l = bitmap;
        this.f9596h = this.f9596h.mo1307a(new C3620e().m5774p(interfaceC1650l, true));
        this.f9602n = AbstractC0947p.m1086c(bitmap);
        this.f9603o = bitmap.getWidth();
        this.f9604p = bitmap.getHeight();
    }
}
