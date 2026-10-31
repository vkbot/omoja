package p164p0;

import p225w0.C3465i0;
import p225w0.C3474l0;
import p225w0.EnumC3471k0;

/* JADX INFO: renamed from: p0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2953f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8210b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f8211c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f8212d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f8213e;

    public /* synthetic */ RunnableC2953f(Object obj, int i10, int i11, int i12) {
        this.f8210b = i12;
        this.f8213e = obj;
        this.f8211c = i10;
        this.f8212d = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8210b) {
            case 0:
                ((C2957j) this.f8213e).m4746i(this.f8211c, this.f8212d);
                break;
            case 1:
                C3474l0 c3474l0 = (C3474l0) this.f8213e;
                int i10 = this.f8211c;
                int i11 = this.f8212d;
                if (c3474l0.m5446y(i10, i11) && c3474l0.f10098s == null) {
                    c3474l0.m5436b(EnumC3471k0.f10044d, i10, i11);
                    break;
                }
                break;
            default:
                C3474l0 c3474l1 = ((C3465i0) this.f8213e).f10018c;
                int i12 = this.f8211c;
                int i13 = this.f8212d;
                if (c3474l1.m5446y(i12, i13) && c3474l1.f10097r) {
                    c3474l1.m5436b(EnumC3471k0.f10043c, i12, i13);
                    break;
                }
                break;
        }
    }
}
