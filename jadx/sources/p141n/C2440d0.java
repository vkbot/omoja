package p141n;

import java.io.File;
import p015b0.C0859b;
import p077h.C1646h;

/* JADX INFO: renamed from: n.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2440d0 implements InterfaceC2457r {

    /* JADX INFO: renamed from: b */
    public static final C2440d0 f6614b = new C2440d0(0);

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6615a;

    public /* synthetic */ C2440d0(int i10) {
        this.f6615a = i10;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        switch (this.f6615a) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f6615a) {
            case 0:
                return new C2456q(new C0859b(obj), new C2439d(1, obj));
            case 1:
                File file = (File) obj;
                return new C2456q(new C0859b(file), new C2439d(0, file));
            default:
                return null;
        }
    }
}
