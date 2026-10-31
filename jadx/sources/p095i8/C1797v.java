package p095i8;

import java.util.concurrent.atomic.AtomicInteger;
import p033c8.EnumC1011a;
import p165p2.C2962e;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1797v extends AtomicInteger implements InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3589f f4713b;

    /* JADX INFO: renamed from: c */
    public final C2962e f4714c;

    /* JADX INFO: renamed from: d */
    public final C1798w[] f4715d;

    /* JADX INFO: renamed from: e */
    public final Object[] f4716e;

    public C1797v(InterfaceC3589f interfaceC3589f, int i10, C2962e c2962e) {
        super(i10);
        this.f4713b = interfaceC3589f;
        this.f4714c = c2962e;
        C1798w[] c1798wArr = new C1798w[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            c1798wArr[i11] = new C1798w(this, i11);
        }
        this.f4715d = c1798wArr;
        this.f4716e = new Object[i10];
    }

    /* JADX INFO: renamed from: a */
    public final void m2898a(int i10) {
        C1798w[] c1798wArr = this.f4715d;
        int length = c1798wArr.length;
        for (int i11 = 0; i11 < i10; i11++) {
            C1798w c1798w = c1798wArr[i11];
            c1798w.getClass();
            EnumC1011a.m1215a(c1798w);
        }
        while (true) {
            i10++;
            if (i10 >= length) {
                return;
            }
            C1798w c1798w2 = c1798wArr[i10];
            c1798w2.getClass();
            EnumC1011a.m1215a(c1798w2);
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (getAndSet(0) > 0) {
            for (C1798w c1798w : this.f4715d) {
                c1798w.getClass();
                EnumC1011a.m1215a(c1798w);
            }
        }
    }
}
