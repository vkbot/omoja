package p094i7;

import androidx.recyclerview.widget.GridLayoutManager;
import p132m0.C2360v;
import p216v0.C3317d;

/* JADX INFO: renamed from: i7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1757f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4579b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ float f4580c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f4581d;

    public /* synthetic */ RunnableC1757f(Object obj, float f8, int i10) {
        this.f4579b = i10;
        this.f4581d = obj;
        this.f4580c = f8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4579b) {
            case 0:
                C1774w c1774w = ((C1758g) this.f4581d).f4593k;
                if (c1774w != null) {
                    c1774w.m2894a(this.f4580c);
                }
                break;
            case 1:
                C2360v c2360v = (C2360v) this.f4581d;
                c2360v.f6384d.setLayoutManager(new GridLayoutManager(c2360v.requireContext(), Math.max(1, c2360v.f6384d.getWidth() / ((int) (this.f4580c * 280.0f)))));
                c2360v.f6384d.setAdapter(c2360v.f6385e);
                break;
            default:
                C3317d c3317d = (C3317d) this.f4581d;
                c3317d.f9716c.m5573k(this.f4580c);
                break;
        }
    }
}
