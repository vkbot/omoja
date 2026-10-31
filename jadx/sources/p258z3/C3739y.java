package p258z3;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: renamed from: z3.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3739y {

    /* JADX INFO: renamed from: a */
    public float f11129a;

    /* JADX INFO: renamed from: b */
    public float f11130b;

    /* JADX INFO: renamed from: c */
    public float f11131c;

    /* JADX INFO: renamed from: d */
    public float f11132d;

    /* JADX INFO: renamed from: e */
    public float f11133e;

    /* JADX INFO: renamed from: f */
    public final ArrayList f11134f = new ArrayList();

    /* JADX INFO: renamed from: g */
    public final ArrayList f11135g = new ArrayList();

    public C3739y() {
        m5972d(0.0f, 270.0f, 0.0f);
    }

    /* JADX INFO: renamed from: a */
    public final void m5969a(float f8) {
        float f10 = this.f11132d;
        if (f10 == f8) {
            return;
        }
        float f11 = ((f8 - f10) + 360.0f) % 360.0f;
        if (f11 > 180.0f) {
            return;
        }
        float f12 = this.f11130b;
        float f13 = this.f11131c;
        C3735u c3735u = new C3735u(f12, f13, f12, f13);
        c3735u.f11122f = this.f11132d;
        c3735u.f11123g = f11;
        this.f11135g.add(new C3733s(c3735u));
        this.f11132d = f8;
    }

    /* JADX INFO: renamed from: b */
    public final void m5970b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f11134f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((AbstractC3737w) arrayList.get(i10)).mo5968a(matrix, path);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m5971c(float f8, float f10) {
        C3736v c3736v = new C3736v();
        c3736v.f11124b = f8;
        c3736v.f11125c = f10;
        this.f11134f.add(c3736v);
        C3734t c3734t = new C3734t(c3736v, this.f11130b, this.f11131c);
        float fM5967b = c3734t.m5967b() + 270.0f;
        float fM5967b2 = c3734t.m5967b() + 270.0f;
        m5969a(fM5967b);
        this.f11135g.add(c3734t);
        this.f11132d = fM5967b2;
        this.f11130b = f8;
        this.f11131c = f10;
    }

    /* JADX INFO: renamed from: d */
    public final void m5972d(float f8, float f10, float f11) {
        this.f11129a = f8;
        this.f11130b = 0.0f;
        this.f11131c = f8;
        this.f11132d = f10;
        this.f11133e = (f10 + f11) % 360.0f;
        this.f11134f.clear();
        this.f11135g.clear();
    }
}
