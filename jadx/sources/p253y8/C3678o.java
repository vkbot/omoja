package p253y8;

import kotlin.Unit;
import p224v8.C3377e;
import p224v8.InterfaceC3390i0;

/* JADX INFO: renamed from: y8.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3678o implements InterfaceC3390i0 {

    /* JADX INFO: renamed from: b */
    public final C3680q f10883b;

    /* JADX INFO: renamed from: c */
    public final long f10884c;

    /* JADX INFO: renamed from: d */
    public final Object f10885d;

    /* JADX INFO: renamed from: e */
    public final C3377e f10886e;

    public C3678o(C3680q c3680q, long j10, Object obj, C3377e c3377e) {
        this.f10883b = c3680q;
        this.f10884c = j10;
        this.f10885d = obj;
        this.f10886e = c3377e;
    }

    @Override // p224v8.InterfaceC3390i0
    public final void dispose() {
        C3680q c3680q = this.f10883b;
        synchronized (c3680q) {
            if (this.f10884c < c3680q.m5897l()) {
                return;
            }
            Object[] objArr = c3680q.f10896g;
            objArr.getClass();
            long j10 = this.f10884c;
            if (objArr[((int) j10) & (objArr.length - 1)] != this) {
                return;
            }
            AbstractC3681r.m5905b(objArr, j10, AbstractC3681r.f10901a);
            c3680q.m5893g();
            Unit unit = Unit.INSTANCE;
        }
    }
}
