package p151o;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import p006a5.C0023h;
import p063f6.C1577a;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;

/* JADX INFO: renamed from: o.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2563b implements InterfaceC2458s {

    /* JADX INFO: renamed from: b */
    public final Object f7088b;

    /* JADX INFO: renamed from: c */
    public final Object f7089c;

    public AbstractC2563b(C1577a c1577a) {
        this.f7088b = c1577a;
        this.f7089c = new C0023h(c1577a);
    }

    /* JADX INFO: renamed from: a */
    public abstract String mo3997a();

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        Context context = (Context) this.f7088b;
        Class cls = (Class) this.f7089c;
        return new C2566e(context, c2465z.m3816b(File.class, cls), c2465z.m3816b(Uri.class, cls), cls);
    }

    public AbstractC2563b(Context context, Class cls) {
        this.f7088b = context;
        this.f7089c = cls;
    }
}
