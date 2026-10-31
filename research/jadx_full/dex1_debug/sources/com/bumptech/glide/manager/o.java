package com.bumptech.glide.manager;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.ConnectivityManager;
import e0.s3;
import f5.j0;
import java.io.InputStream;
import n.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements c0.i, n.s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f607b;
    public Context c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(Context context, int i9) {
        this.f607b = i9;
        this.c = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d2.k a() {
        Context context = this.c;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        d2.k kVar = new d2.k();
        kVar.f1685b = f2.a.a(d2.m.f1690a);
        e5.c cVar = new e5.c(1, context);
        kVar.c = cVar;
        kVar.d = f2.a.a(new android.support.v4.media.h((Object) cVar, (Object) new r5.c(10, cVar), false, 7));
        e5.c cVar2 = kVar.c;
        kVar.e = new f5.m(cVar2, 12);
        t8.a aVarA = f2.a.a(new j0(kVar.e, f2.a.a(new f5.m(cVar2, 11)), 1));
        kVar.f1686f = aVarA;
        c5.e eVar = new c5.e(11);
        e5.c cVar3 = kVar.c;
        a5.h hVar = new a5.h(cVar3, aVarA, eVar, 9);
        t8.a aVar = kVar.f1685b;
        t8.a aVar2 = kVar.d;
        kVar.f1687g = f2.a.a(new a5.h(new s3(aVar, aVar2, hVar, aVarA, aVarA, 3), new c2.k(cVar3, aVar2, aVarA, hVar, aVar, aVarA, aVarA, 2), new b1.m(8, aVar, aVarA, hVar, aVarA), 2));
        return kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c0.i
    public Object get() {
        return (ConnectivityManager) this.c.getSystemService("connectivity");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public n.r j(z zVar) {
        switch (this.f607b) {
            case 3:
                return new n.b(this.c, this);
            case 4:
                return new n.b(this.c, this);
            case 5:
                return new n.b(this.c, this);
            case 6:
                return new n.m(this.c, 0);
            case 7:
                return new n.b(this.c, zVar.b(Integer.class, AssetFileDescriptor.class));
            case 8:
                return new n.b(this.c, zVar.b(Integer.class, InputStream.class));
            case 9:
                return new n.m(this.c, 1);
            default:
                return new n.m(this.c, 2);
        }
    }

    public /* synthetic */ o() {
        this.f607b = 1;
    }
}
