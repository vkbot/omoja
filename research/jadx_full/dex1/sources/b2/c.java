package b2;

import android.content.Context;
import android.net.ConnectivityManager;
import c2.d;
import c2.f;
import c2.g;
import c2.h;
import c2.i;
import c2.j;
import c2.l;
import c2.m;
import c2.o;
import c2.r;
import c2.s;
import c2.t;
import c2.w;
import e2.e;
import java.net.MalformedURLException;
import java.net.URL;
import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f302b;
    public final Context c;
    public final URL d;
    public final m2.a e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m2.a f303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f304g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context, m2.a aVar, m2.a aVar2) {
        z4.c cVar = new z4.c();
        c2.c cVar2 = c2.c.f427a;
        cVar.a(c2.p.class, cVar2);
        cVar.a(i.class, cVar2);
        f fVar = f.f436a;
        cVar.a(t.class, fVar);
        cVar.a(m.class, fVar);
        d dVar = d.f429a;
        cVar.a(r.class, dVar);
        cVar.a(j.class, dVar);
        c2.b bVar = c2.b.f417a;
        cVar.a(c2.a.class, bVar);
        cVar.a(h.class, bVar);
        c2.e eVar = c2.e.f431a;
        cVar.a(s.class, eVar);
        cVar.a(l.class, eVar);
        g gVar = g.f441a;
        cVar.a(w.class, gVar);
        cVar.a(o.class, gVar);
        cVar.d = true;
        this.f301a = new p(20, cVar);
        this.c = context;
        this.f302b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = a(a.c);
        this.e = aVar2;
        this.f303f = aVar;
        this.f304g = 130000;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static URL a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(ai.onnxruntime.a.l("Invalid url: ", str), e);
        }
    }
}
