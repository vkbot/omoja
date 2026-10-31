package p225w0;

import com.example.navistart.cores.BTProxy;
import java.util.ArrayList;
import java.util.List;
import p132m0.RunnableC2279d1;
import p164p0.RunnableC2953f;

/* JADX INFO: renamed from: w0.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3465i0 implements BTProxy.Listener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10016a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10017b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3474l0 f10018c;

    public C3465i0(C3474l0 c3474l0, int i10, int i11) {
        this.f10018c = c3474l0;
        this.f10016a = i10;
        this.f10017b = i11;
    }

    @Override // com.example.navistart.cores.BTProxy.Listener
    public final void onContactsChanged(List list, int i10, int i11) {
        if (i11 >= 0) {
            if (i11 <= 0 || i10 >= i11 - 1) {
                this.f10018c.m5442g0(new RunnableC2279d1(this, this.f10016a, this.f10017b, list == null ? new ArrayList() : new ArrayList(list)));
            }
        }
    }

    @Override // com.example.navistart.cores.BTProxy.Listener
    public final void onError(String str, Throwable th) {
        this.f10018c.m5442g0(new RunnableC2953f(this, this.f10016a, this.f10017b, 2));
    }
}
