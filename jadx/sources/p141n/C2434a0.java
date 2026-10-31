package p141n;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;
import p077h.C1646h;
import p097j.InterfaceC1889d0;
import p172q.C3013e;
import p215v.InterfaceC3311a;

/* JADX INFO: renamed from: n.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2434a0 implements InterfaceC2458s, InterfaceC3311a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6601b;

    /* JADX INFO: renamed from: c */
    public final Resources f6602c;

    public /* synthetic */ C2434a0(Resources resources, int i10) {
        this.f6601b = i10;
        this.f6602c = resources;
    }

    @Override // p215v.InterfaceC3311a
    /* JADX INFO: renamed from: a */
    public InterfaceC1889d0 mo67a(InterfaceC1889d0 interfaceC1889d0, C1646h c1646h) {
        if (interfaceC1889d0 == null) {
            return null;
        }
        return new C3013e(this.f6602c, interfaceC1889d0);
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        switch (this.f6601b) {
            case 0:
                return new C2435b(this.f6602c, c2465z.m3816b(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new C2435b(this.f6602c, c2465z.m3816b(Uri.class, InputStream.class));
            default:
                return new C2435b(this.f6602c, C2440d0.f6614b);
        }
    }
}
