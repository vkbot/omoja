package q;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements h.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4706b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Resources resources, h.j jVar) {
        this.f4705a = 0;
        this.c = resources;
        this.f4706b = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final j.d0 a(Object obj, int i9, int i10, h.h hVar) {
        boolean z8;
        x xVar;
        c0.e eVar;
        switch (this.f4705a) {
            case 0:
                j.d0 d0VarA = ((h.j) this.f4706b).a(obj, i9, i10, hVar);
                Resources resources = (Resources) this.c;
                if (d0VarA == null) {
                    return null;
                }
                return new e(resources, d0VarA);
            case 1:
                j.d0 d0VarC = ((s.c) this.f4706b).c((Uri) obj, hVar);
                if (d0VarC == null) {
                    return null;
                }
                return s.a((k.b) this.c, (Drawable) ((s.b) d0VarC).get(), i9, i10);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof x) {
                    xVar = (x) inputStream;
                    z8 = false;
                } else {
                    z8 = true;
                    xVar = new x(inputStream, (k.g) this.c);
                }
                ArrayDeque arrayDeque = c0.e.d;
                synchronized (arrayDeque) {
                    eVar = (c0.e) arrayDeque.poll();
                    break;
                }
                if (eVar == null) {
                    eVar = new c0.e();
                }
                c0.e eVar2 = eVar;
                eVar2.f396b = xVar;
                c0.m mVar = new c0.m(eVar2);
                l.d dVar = new l.d(8, xVar, eVar2);
                try {
                    q qVar = (q) this.f4706b;
                    e eVarA = qVar.a(new a5.h(mVar, qVar.d, qVar.c), i9, i10, hVar, dVar);
                    eVar2.c = null;
                    eVar2.f396b = null;
                    synchronized (arrayDeque) {
                        arrayDeque.offer(eVar2);
                        break;
                    }
                    return eVarA;
                } finally {
                    eVar2.c = null;
                    eVar2.f396b = null;
                    ArrayDeque arrayDeque2 = c0.e.d;
                    synchronized (arrayDeque2) {
                        arrayDeque2.offer(eVar2);
                        if (z8) {
                            xVar.c();
                        }
                    }
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h.h hVar) {
        switch (this.f4705a) {
            case 0:
                return ((h.j) this.f4706b).b(obj, hVar);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                return true;
        }
    }

    public /* synthetic */ a(int i9, Object obj, Object obj2) {
        this.f4705a = i9;
        this.f4706b = obj;
        this.c = obj2;
    }
}
