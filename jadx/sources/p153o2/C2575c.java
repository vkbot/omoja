package p153o2;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: o2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2575c {

    /* JADX INFO: renamed from: e */
    public int f7143e;

    /* JADX INFO: renamed from: f */
    public int f7144f;

    /* JADX INFO: renamed from: g */
    public int f7145g;

    /* JADX INFO: renamed from: h */
    public int f7146h;

    /* JADX INFO: renamed from: i */
    public int f7147i;

    /* JADX INFO: renamed from: j */
    public float f7148j;

    /* JADX INFO: renamed from: k */
    public float f7149k;

    /* JADX INFO: renamed from: l */
    public int f7150l;

    /* JADX INFO: renamed from: m */
    public int f7151m;

    /* JADX INFO: renamed from: o */
    public int f7153o;

    /* JADX INFO: renamed from: p */
    public int f7154p;

    /* JADX INFO: renamed from: q */
    public boolean f7155q;

    /* JADX INFO: renamed from: r */
    public boolean f7156r;

    /* JADX INFO: renamed from: a */
    public int f7139a = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: b */
    public int f7140b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c */
    public int f7141c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d */
    public int f7142d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: n */
    public final ArrayList f7152n = new ArrayList();

    /* JADX INFO: renamed from: a */
    public final int m4020a() {
        return this.f7146h - this.f7147i;
    }

    /* JADX INFO: renamed from: b */
    public final void m4021b(View view, int i10, int i11, int i12, int i13) {
        InterfaceC2574b interfaceC2574b = (InterfaceC2574b) view.getLayoutParams();
        this.f7139a = Math.min(this.f7139a, (view.getLeft() - interfaceC2574b.mo4010g()) - i10);
        this.f7140b = Math.min(this.f7140b, (view.getTop() - interfaceC2574b.mo4011h()) - i11);
        this.f7141c = Math.max(this.f7141c, interfaceC2574b.mo4015l() + view.getRight() + i12);
        this.f7142d = Math.max(this.f7142d, interfaceC2574b.mo4009f() + view.getBottom() + i13);
    }
}
