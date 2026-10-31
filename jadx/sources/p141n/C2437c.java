package p141n;

import java.io.File;
import p015b0.C0859b;
import p077h.C1646h;
import p087i.C1735b;

/* JADX INFO: renamed from: n.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2437c implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6608a;

    /* JADX INFO: renamed from: b */
    public final Object f6609b;

    public /* synthetic */ C2437c(int i10, Object obj) {
        this.f6608a = i10;
        this.f6609b = obj;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        switch (this.f6608a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f6608a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new C2456q(new C0859b(bArr), new C2451l(1, bArr, (C2438c0) this.f6609b));
            case 1:
                return new C2456q(new C0859b(obj), new C2451l(obj.toString(), (C2438c0) this.f6609b));
            default:
                File file = (File) obj;
                return new C2456q(new C0859b(file), new C1735b(1, file, (C2438c0) this.f6609b));
        }
    }
}
