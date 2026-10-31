package p022b7;

import java.util.ArrayList;
import p063f6.C1581e;
import p260z5.C3746b;
import p260z5.C3752h;
import p260z5.C3754j;
import p260z5.C3759o;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: b7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0915k implements InterfaceC3760p {

    /* JADX INFO: renamed from: a */
    public final C3752h f753a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f754b = new ArrayList();

    public C0915k(C3752h c3752h) {
        this.f753a = c3752h;
    }

    @Override // p260z5.InterfaceC3760p
    /* JADX INFO: renamed from: a */
    public final void mo1052a(C3759o c3759o) {
        this.f754b.add(c3759o);
    }

    /* JADX INFO: renamed from: b */
    public C3746b mo1053b(C3754j c3754j) {
        return new C3746b(new C1581e(c3754j));
    }
}
