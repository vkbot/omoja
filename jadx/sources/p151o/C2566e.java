package p151o;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import p000a.AbstractC0000a;
import p015b0.C0859b;
import p077h.C1646h;
import p141n.C2456q;
import p141n.InterfaceC2457r;

/* JADX INFO: renamed from: o.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2566e implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final Context f7101a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2457r f7102b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2457r f7103c;

    /* JADX INFO: renamed from: d */
    public final Class f7104d;

    public C2566e(Context context, InterfaceC2457r interfaceC2457r, InterfaceC2457r interfaceC2457r2, Class cls) {
        this.f7101a = context.getApplicationContext();
        this.f7102b = interfaceC2457r;
        this.f7103c = interfaceC2457r2;
        this.f7104d = cls;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && AbstractC0000a.m13n((Uri) obj);
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        Uri uri = (Uri) obj;
        return new C2456q(new C0859b(uri), new C2565d(this.f7101a, this.f7102b, this.f7103c, uri, i10, i11, c1646h, this.f7104d));
    }
}
