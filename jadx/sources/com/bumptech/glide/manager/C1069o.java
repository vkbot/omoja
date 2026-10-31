package com.bumptech.glide.manager;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.ConnectivityManager;
import android.support.v4.media.C0090h;
import java.io.InputStream;
import p006a5.C0023h;
import p016b1.C0872m;
import p025c0.InterfaceC0940i;
import p027c2.C0961k;
import p030c5.C0990e;
import p039d2.AbstractC1257m;
import p039d2.C1255k;
import p047e0.C1421s3;
import p052e5.C1496c;
import p059f2.C1533a;
import p062f5.C1557j0;
import p062f5.C1562m;
import p141n.C2435b;
import p141n.C2452m;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;
import p184r5.C3105c;
import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: com.bumptech.glide.manager.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1069o implements InterfaceC0940i, InterfaceC2458s {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1168b;

    /* JADX INFO: renamed from: c */
    public Context f1169c;

    public /* synthetic */ C1069o(Context context, int i10) {
        this.f1168b = i10;
        this.f1169c = context;
    }

    /* JADX INFO: renamed from: a */
    public C1255k m1343a() {
        Context context = this.f1169c;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        C1255k c1255k = new C1255k();
        c1255k.f2967b = C1533a.m2631a(AbstractC1257m.f2975a);
        C1496c c1496c = new C1496c(1, context);
        c1255k.f2968c = c1496c;
        c1255k.f2969d = C1533a.m2631a(new C0090h((Object) c1496c, (Object) new C3105c(10, c1496c), false, 7));
        C1496c c1496c2 = c1255k.f2968c;
        c1255k.f2970e = new C1562m(c1496c2, 12);
        InterfaceC3268a interfaceC3268aM2631a = C1533a.m2631a(new C1557j0(c1255k.f2970e, C1533a.m2631a(new C1562m(c1496c2, 11)), 1));
        c1255k.f2971f = interfaceC3268aM2631a;
        C0990e c0990e = new C0990e(11);
        C1496c c1496c3 = c1255k.f2968c;
        C0023h c0023h = new C0023h(c1496c3, interfaceC3268aM2631a, c0990e, 9);
        InterfaceC3268a interfaceC3268a = c1255k.f2967b;
        InterfaceC3268a interfaceC3268a2 = c1255k.f2969d;
        c1255k.f2972g = C1533a.m2631a(new C0023h(new C1421s3(interfaceC3268a, interfaceC3268a2, c0023h, interfaceC3268aM2631a, interfaceC3268aM2631a, 3), new C0961k(c1496c3, interfaceC3268a2, interfaceC3268aM2631a, c0023h, interfaceC3268a, interfaceC3268aM2631a, interfaceC3268aM2631a, 2), new C0872m(8, interfaceC3268a, interfaceC3268aM2631a, c0023h, interfaceC3268aM2631a), 2));
        return c1255k;
    }

    @Override // p025c0.InterfaceC0940i
    public Object get() {
        return (ConnectivityManager) this.f1169c.getSystemService("connectivity");
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        switch (this.f1168b) {
            case 3:
                return new C2435b(this.f1169c, this);
            case 4:
                return new C2435b(this.f1169c, this);
            case 5:
                return new C2435b(this.f1169c, this);
            case 6:
                return new C2452m(this.f1169c, 0);
            case 7:
                return new C2435b(this.f1169c, c2465z.m3816b(Integer.class, AssetFileDescriptor.class));
            case 8:
                return new C2435b(this.f1169c, c2465z.m3816b(Integer.class, InputStream.class));
            case 9:
                return new C2452m(this.f1169c, 1);
            default:
                return new C2452m(this.f1169c, 2);
        }
    }

    public /* synthetic */ C1069o() {
        this.f1168b = 1;
    }
}
