package p188s;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import p025c0.AbstractC0938g;
import p066g.C1598d;
import p097j.InterfaceC1883a0;
import p097j.InterfaceC1889d0;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p120l.C2187d;
import p205u.C3270b;
import p205u.C3272d;
import p205u.C3274f;

/* JADX INFO: renamed from: s.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3127b implements InterfaceC1889d0, InterfaceC1883a0 {

    /* JADX INFO: renamed from: b */
    public final Drawable f8943b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f8944c;

    public C3127b(Drawable drawable, int i10) {
        this.f8944c = i10;
        AbstractC0938g.m1072c(drawable, "Argument must not be null");
        this.f8943b = drawable;
    }

    @Override // p097j.InterfaceC1883a0
    /* JADX INFO: renamed from: a */
    public void mo2929a() {
        switch (this.f8944c) {
            case 1:
                ((C3274f) ((C3270b) this.f8943b).f9570b.f8794b).f9600l.prepareToDraw();
                break;
            default:
                Drawable drawable = this.f8943b;
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                } else if (drawable instanceof C3270b) {
                    ((C3274f) ((C3270b) drawable).f9570b.f8794b).f9600l.prepareToDraw();
                }
                break;
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: b */
    public final int mo2932b() {
        switch (this.f8944c) {
            case 0:
                Drawable drawable = this.f8943b;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                C3274f c3274f = (C3274f) ((C3270b) this.f8943b).f9570b.f8794b;
                C1598d c1598d = c3274f.f9589a;
                return (c1598d.f4002j.length * 4) + c1598d.f3996d.limit() + c1598d.f4001i.length + c3274f.f9602n;
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: d */
    public final Class mo2933d() {
        switch (this.f8944c) {
            case 0:
                return this.f8943b.getClass();
            default:
                return C3270b.class;
        }
    }

    @Override // p097j.InterfaceC1889d0
    public final Object get() {
        Drawable drawable = this.f8943b;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    @Override // p097j.InterfaceC1889d0
    public final void recycle() {
        C2019g c2019g;
        C2019g c2019g2;
        C2019g c2019g3;
        switch (this.f8944c) {
            case 0:
                break;
            default:
                C3270b c3270b = (C3270b) this.f8943b;
                c3270b.stop();
                c3270b.f9573e = true;
                C3274f c3274f = (C3274f) c3270b.f9570b.f8794b;
                ComponentCallbacks2C1078p componentCallbacks2C1078p = c3274f.f9592d;
                c3274f.f9591c.clear();
                Bitmap bitmap = c3274f.f9600l;
                if (bitmap != null) {
                    c3274f.f9593e.mo1141c(bitmap);
                    c3274f.f9600l = null;
                }
                c3274f.f9594f = false;
                C3272d c3272d = c3274f.f9597i;
                if (c3272d != null) {
                    componentCallbacks2C1078p.m1377k(c3272d);
                    c3274f.f9597i = null;
                }
                C3272d c3272d2 = c3274f.f9599k;
                if (c3272d2 != null) {
                    componentCallbacks2C1078p.m1377k(c3272d2);
                    c3274f.f9599k = null;
                }
                C3272d c3272d3 = c3274f.f9601m;
                if (c3272d3 != null) {
                    componentCallbacks2C1078p.m1377k(c3272d3);
                    c3274f.f9601m = null;
                }
                C1598d c1598d = c3274f.f9589a;
                C2187d c2187d = c1598d.f3995c;
                c1598d.f4004l = null;
                byte[] bArr = c1598d.f4001i;
                if (bArr != null && (c2019g3 = (C2019g) c2187d.f5706d) != null) {
                    c2019g3.m3110g(bArr);
                }
                int[] iArr = c1598d.f4002j;
                if (iArr != null && (c2019g2 = (C2019g) c2187d.f5706d) != null) {
                    c2019g2.m3110g(iArr);
                }
                Bitmap bitmap2 = c1598d.f4005m;
                if (bitmap2 != null) {
                    ((InterfaceC2014b) c2187d.f5705c).mo1141c(bitmap2);
                }
                c1598d.f4005m = null;
                c1598d.f3996d = null;
                c1598d.f4011s = null;
                byte[] bArr2 = c1598d.f3997e;
                if (bArr2 != null && (c2019g = (C2019g) c2187d.f5706d) != null) {
                    c2019g.m3110g(bArr2);
                }
                c3274f.f9598j = true;
                break;
        }
    }

    /* JADX INFO: renamed from: c */
    private final void m4970c() {
    }
}
